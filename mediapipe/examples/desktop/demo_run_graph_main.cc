// Copyright 2019 The MediaPipe Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// An example of sending OpenCV webcam frames into a MediaPipe graph.
#include <cstdlib>

#include "mediapipe/framework/calculator_framework.h"
#include "mediapipe/framework/formats/image_frame.h"
#include "mediapipe/framework/formats/image_frame_opencv.h"
#include "mediapipe/framework/port/commandlineflags.h"
#include "mediapipe/framework/port/file_helpers.h"
#include "mediapipe/framework/port/opencv_highgui_inc.h"
#include "mediapipe/framework/port/opencv_imgproc_inc.h"
#include "mediapipe/framework/port/opencv_video_inc.h"
#include "mediapipe/framework/port/parse_text_proto.h"
#include "mediapipe/framework/port/status.h"

#include "mediapipe/framework/formats/landmark.pb.h"

#include <vector>
#include <fstream>

constexpr char kInputStream[] = "input_video";
constexpr char kOutputStream[] = "output_video";
constexpr char kOutputStreamCoordinates[] = "multi_hand_landmarks";
constexpr char kWindowName[] = "MediaPipe";

DEFINE_string(
    calculator_graph_config_file, "",
    "Name of file containing text format CalculatorGraphConfig proto.");
DEFINE_string(input_video_path, "",
              "Full path of video to load. "
              "If not provided, attempt to use a webcam.");
DEFINE_string(output_video_path, "",
              "Full path of where to save result (.mp4 only). "
              "If not provided, show result in a window.");
DEFINE_string(output_json_path, "",
              "Full path of where to save result (.json only). "
              "If not provided, show result in a window.");
DEFINE_bool(render_video, true,
              "Option to output video or not"
              "If not provided, output result in window");

::mediapipe::Status RunMPPGraph() {
  std::string calculator_graph_config_contents;
  MP_RETURN_IF_ERROR(mediapipe::file::GetContents(
      FLAGS_calculator_graph_config_file, &calculator_graph_config_contents));
  LOG(INFO) << "Get calculator graph config contents: "
            << calculator_graph_config_contents;
  mediapipe::CalculatorGraphConfig config =
      mediapipe::ParseTextProtoOrDie<mediapipe::CalculatorGraphConfig>(
          calculator_graph_config_contents);

  LOG(INFO) << "Initialize the calculator graph.";
  mediapipe::CalculatorGraph graph;
  MP_RETURN_IF_ERROR(graph.Initialize(config));

  LOG(INFO) << "Initialize the camera or load the video.";
  cv::VideoCapture capture;
  const bool load_video = !FLAGS_input_video_path.empty();
  if (load_video) {
    capture.open(FLAGS_input_video_path);
  } else {
    capture.open(0);
  }
  RET_CHECK(capture.isOpened());

  cv::VideoWriter writer;
  const bool save_video = !FLAGS_output_video_path.empty();
  const bool save_json = !FLAGS_output_json_path.empty();
  if(save_json && save_video){
    throw "Cannot save json and video";
  }
  if((! FLAGS_render_video) && (save_json || save_video)){
    throw "Cannot skip render video and save json or save video";
  }
  if (save_video) {
    LOG(INFO) << "Prepare video writer.";
    cv::Mat test_frame;
    capture.read(test_frame);                    // Consume first frame.
    capture.set(cv::CAP_PROP_POS_AVI_RATIO, 0);  // Rewind to beginning.
    writer.open(FLAGS_output_video_path,
                mediapipe::fourcc('a', 'v', 'c', '1'),  // .mp4
                capture.get(cv::CAP_PROP_FPS), test_frame.size());
    RET_CHECK(writer.isOpened());
  }else if(save_json){
    LOG(INFO) << "Will save result as json";
  }
   else if (FLAGS_render_video) {
    cv::namedWindow(kWindowName, /*flags=WINDOW_AUTOSIZE*/ 1);
#if (CV_MAJOR_VERSION >= 3) && (CV_MINOR_VERSION >= 2)
    capture.set(cv::CAP_PROP_FRAME_WIDTH, 640);
    capture.set(cv::CAP_PROP_FRAME_HEIGHT, 480);
    capture.set(cv::CAP_PROP_FPS, 30);
#endif
  }

  LOG(INFO) << "Start running the calculator graph.";
  if(save_json){
    LOG(INFO) << "Will save output as json.";
    ASSIGN_OR_RETURN(mediapipe::OutputStreamPoller poller,
                graph.AddOutputStreamPoller(kOutputStreamCoordinates));
    MP_RETURN_IF_ERROR(graph.StartRun({}));
    size_t frame_timestamp = 0;
    bool grab_frames = true;
    bool firstwrite = true;
    std::ofstream file;
    file.open(FLAGS_output_json_path.c_str());
    file << "[";
    while (grab_frames){
      // Capture opencv camera or video frame.
      cv::Mat camera_frame_raw;
      capture >> camera_frame_raw;
      if (camera_frame_raw.empty()) break;  // End of video.
      cv::Mat camera_frame;
      cv::cvtColor(camera_frame_raw, camera_frame, cv::COLOR_BGR2RGB);
      if (!load_video) {
        cv::flip(camera_frame, camera_frame, /*flipcode=HORIZONTAL*/ 1);
      }
      
          // Wrap Mat into an ImageFrame.
    auto input_frame = absl::make_unique<mediapipe::ImageFrame>(
        mediapipe::ImageFormat::SRGB, camera_frame.cols, camera_frame.rows,
        mediapipe::ImageFrame::kDefaultAlignmentBoundary);
    cv::Mat input_frame_mat = mediapipe::formats::MatView(input_frame.get());
    camera_frame.copyTo(input_frame_mat);
    
    // Send image packet into the graph.
    MP_RETURN_IF_ERROR(graph.AddPacketToInputStream(
        kInputStream, mediapipe::Adopt(input_frame.release())
                          .At(mediapipe::Timestamp(frame_timestamp++))));
      mediapipe::Packet packet;
      if(firstwrite){
          file << "[";
          firstwrite = false;
      }else{
          file << ", [";
      }
      if (!poller.Next(&packet)) break;
      auto& frame_hands = packet.Get<std::vector<std::vector<mediapipe::NormalizedLandmark>>>();
      for(auto i = 0; i < frame_hands.size(); i++){
        auto hand = frame_hands.at(i);
        file << "[";
        for(int j = 0; j < hand.size(); j++){
            file << std::fixed << hand.at(j).x() << ", " << std::fixed << hand.at(j).y();
            if(j + 1 < hand.size()){
                file << ", ";
            }
        }
        if(i + 1 < frame_hands.size()){
            file << "],";
        }else{
            file << "]";
        }
      }
      file << "]";
    }
    file << "]";
    file.close();
    LOG(INFO) << "Shutting down.";
    MP_RETURN_IF_ERROR(graph.CloseInputStream(kInputStream));
    return graph.WaitUntilDone();
  }
  if(! FLAGS_render_video){
    LOG(INFO) << "Will not render video.";
    MP_RETURN_IF_ERROR(graph.StartRun({}));
    size_t frame_timestamp = 0;
    bool grab_frames = true;
    while (grab_frames){
      // Capture opencv camera or video frame.
      cv::Mat camera_frame_raw;
      capture >> camera_frame_raw;
      if (camera_frame_raw.empty()) break;  // End of video.
      cv::Mat camera_frame;
      cv::cvtColor(camera_frame_raw, camera_frame, cv::COLOR_BGR2RGB);
      if (!load_video) {
        cv::flip(camera_frame, camera_frame, /*flipcode=HORIZONTAL*/ 1);
      }
      
    // Wrap Mat into an ImageFrame.
    auto input_frame = absl::make_unique<mediapipe::ImageFrame>(
    mediapipe::ImageFormat::SRGB, camera_frame.cols, camera_frame.rows,
    mediapipe::ImageFrame::kDefaultAlignmentBoundary);
    cv::Mat input_frame_mat = mediapipe::formats::MatView(input_frame.get());
    camera_frame.copyTo(input_frame_mat);
    
    // Send image packet into the graph.
    MP_RETURN_IF_ERROR(graph.AddPacketToInputStream(
        kInputStream, mediapipe::Adopt(input_frame.release())
                          .At(mediapipe::Timestamp(frame_timestamp++))));
      mediapipe::Packet packet;

    }
    MP_RETURN_IF_ERROR(graph.CloseInputStream(kInputStream));
    mediapipe::Status status =  graph.WaitUntilDone();
    LOG(INFO) << "Shutting down.";
    return status;
  }
  ASSIGN_OR_RETURN(mediapipe::OutputStreamPoller poller,
                graph.AddOutputStreamPoller(kOutputStream));
  MP_RETURN_IF_ERROR(graph.StartRun({}));

  LOG(INFO) << "Will render video";
  size_t frame_timestamp = 0;
  bool grab_frames = true;
  while (grab_frames) {
    // Capture opencv camera or video frame.
    cv::Mat camera_frame_raw;
    capture >> camera_frame_raw;
    if (camera_frame_raw.empty()) break;  // End of video.
    cv::Mat camera_frame;
    cv::cvtColor(camera_frame_raw, camera_frame, cv::COLOR_BGR2RGB);
    if (!load_video) {
      cv::flip(camera_frame, camera_frame, /*flipcode=HORIZONTAL*/ 1);
    }

    // Wrap Mat into an ImageFrame.
    auto input_frame = absl::make_unique<mediapipe::ImageFrame>(
        mediapipe::ImageFormat::SRGB, camera_frame.cols, camera_frame.rows,
        mediapipe::ImageFrame::kDefaultAlignmentBoundary);
    cv::Mat input_frame_mat = mediapipe::formats::MatView(input_frame.get());
    camera_frame.copyTo(input_frame_mat);

    // Send image packet into the graph.
    size_t frame_timestamp_us =
        (double)cv::getTickCount() / (double)cv::getTickFrequency() * 1e6;
    MP_RETURN_IF_ERROR(graph.AddPacketToInputStream(
        kInputStream, mediapipe::Adopt(input_frame.release())
                          .At(mediapipe::Timestamp(frame_timestamp_us))));

    // Get the graph result packet, or stop if that fails.
      mediapipe::Packet packet;
      if (!poller.Next(&packet)) break;
      auto& output_frame = packet.Get<mediapipe::ImageFrame>();

      // Convert back to opencv for display or saving.
      cv::Mat output_frame_mat = mediapipe::formats::MatView(&output_frame);
      cv::cvtColor(output_frame_mat, output_frame_mat, cv::COLOR_RGB2BGR);
      if (save_video) {
        writer.write(output_frame_mat);
      }
      else{
        cv::imshow(kWindowName, output_frame_mat);
        // Press any key to exit.
        const int pressed_key = cv::waitKey(5);
        if (pressed_key >= 0 && pressed_key != 255) grab_frames = false;
      }
    

  }

  LOG(INFO) << "Shutting down.";
  if (writer.isOpened()) writer.release();
  MP_RETURN_IF_ERROR(graph.CloseInputStream(kInputStream));
  return graph.WaitUntilDone();
}

int main(int argc, char** argv) {
  google::InitGoogleLogging(argv[0]);
  gflags::ParseCommandLineFlags(&argc, &argv, true);
  ::mediapipe::Status run_status = RunMPPGraph();
  if (!run_status.ok()) {
    LOG(ERROR) << "Failed to run the graph: " << run_status.message();
    return EXIT_FAILURE;
  } else {
    LOG(INFO) << "Success!";
  }
  return EXIT_SUCCESS;
}
