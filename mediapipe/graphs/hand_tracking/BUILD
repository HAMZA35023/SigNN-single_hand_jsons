# Copyright 2019 The MediaPipe Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load(
    "//mediapipe/framework/tool:mediapipe_graph.bzl",
    "mediapipe_binary_graph",
)

licenses(["notice"])  # Apache 2.0

package(default_visibility = ["//visibility:public"])

exports_files(glob([
    "*.pbtxt",
]))


cc_library(
    name = "signn_calculators",
    deps = [   
        "//mediapipe/calculators/signn:fps_calculator",
        "//mediapipe/calculators/signn:double_logger",
        "//mediapipe/calculators/signn:average_double_calculator",
        "//mediapipe/calculators/signn:string_to_render_data_calculator",
        "//mediapipe/calculators/signn:double_to_string_calculator",
        "//mediapipe/calculators/signn:tflite_tensors_to_character_calculator",
        "//mediapipe/calculators/signn:time_average_calculator",
        "//mediapipe/calculators/signn:z_score_calculator",
        "//mediapipe/calculators/signn:logger_calculator",
        "//mediapipe/calculators/signn:landmarks_to_tensor_calculator",
        "//mediapipe/calculators/signn:point_velocity_calculator",
    ]
)

cc_library(
    name = "signn_multi_handed",
    deps = [
        ":signn_calculators",
        "//mediapipe/graphs/hand_tracking/subgraphs:multi_hand_renderer_gpu_fps",
        "//mediapipe/calculators/signn:coordinate_modifiers", 
        "//mediapipe/calculators/signn:console_logger_calculator",  
        "//mediapipe/graphs/hand_tracking/subgraphs:signn", 
    ]
)

cc_library(
    name = "signn_single_handed",
    deps = [
        ":signn_calculators",
        "//mediapipe/graphs/hand_tracking/subgraphs:renderer_gpu_fps",
        "//mediapipe/graphs/hand_tracking/subgraphs:SigNNOneHand", 
    ]
)

cc_library(
    name = "desktop_offline_calculators",
    deps = [
        "//mediapipe/calculators/core:flow_limiter_calculator",
        "//mediapipe/calculators/core:gate_calculator",
        "//mediapipe/calculators/core:immediate_mux_calculator",
        "//mediapipe/calculators/core:packet_inner_join_calculator",
        "//mediapipe/calculators/core:previous_loopback_calculator",
        "//mediapipe/calculators/video:opencv_video_decoder_calculator",
        "//mediapipe/calculators/video:opencv_video_encoder_calculator",
    ],
)

cc_library(
    name = "desktop_tflite_calculators",
    deps = [
        ":desktop_offline_calculators",
        "//mediapipe/calculators/core:merge_calculator",
        "//mediapipe/graphs/hand_tracking/subgraphs:hand_detection_cpu",
        "//mediapipe/graphs/hand_tracking/subgraphs:hand_landmark_cpu",
        "//mediapipe/graphs/hand_tracking/subgraphs:renderer_cpu",
        ":signn_single_handed",
    ],
)

mediapipe_binary_graph(
    name = "hand_tracking_desktop_live_binary_graph",
    graph = "hand_tracking_desktop_live.pbtxt",
    output_name = "hand_tracking_desktop_live.binarypb",
    deps = [":desktop_tflite_calculators"],
)

cc_library(
    name = "mobile_calculators",
    deps = [
        "//mediapipe/calculators/core:flow_limiter_calculator",
        "//mediapipe/calculators/core:gate_calculator",
        "//mediapipe/calculators/core:merge_calculator",
        "//mediapipe/calculators/core:previous_loopback_calculator",
        "//mediapipe/graphs/hand_tracking/subgraphs:hand_detection_gpu",
        "//mediapipe/graphs/hand_tracking/subgraphs:hand_landmark_gpu",
        "//mediapipe/graphs/hand_tracking/subgraphs:renderer_gpu",
        ":signn_single_handed",
    ],
)

mediapipe_binary_graph(
    name = "hand_tracking_mobile_gpu_binary_graph",
    graph = "hand_tracking_mobile.pbtxt",
    output_name = "hand_tracking_mobile_gpu.binarypb",
    deps = [":mobile_calculators"],
)

cc_library(
    name = "multi_hand_desktop_tflite_calculators",
    deps = [
        ":desktop_offline_calculators",
        "//mediapipe/calculators/util:association_norm_rect_calculator",
        "//mediapipe/calculators/util:collection_has_min_size_calculator",
        "//mediapipe/graphs/hand_tracking/subgraphs:multi_hand_detection_cpu",
        "//mediapipe/graphs/hand_tracking/subgraphs:multi_hand_landmark_cpu",
        "//mediapipe/graphs/hand_tracking/subgraphs:multi_hand_renderer_cpu",
        ":signn_multi_handed",
    ],
)

cc_library(
    name = "multi_hand_mobile_calculators",
    deps = [
        ":signn_multi_handed",
        "//mediapipe/calculators/core:flow_limiter_calculator",
        "//mediapipe/calculators/core:gate_calculator",
        "//mediapipe/calculators/core:previous_loopback_calculator",
        "//mediapipe/calculators/util:association_norm_rect_calculator",
        "//mediapipe/calculators/util:collection_has_min_size_calculator",
        "//mediapipe/graphs/hand_tracking/subgraphs:multi_hand_detection_gpu",
        "//mediapipe/graphs/hand_tracking/subgraphs:multi_hand_landmark_gpu",
        "//mediapipe/graphs/hand_tracking/subgraphs:multi_hand_renderer_gpu",
    ],
)

mediapipe_binary_graph(
    name = "multi_hand_tracking_mobile_gpu_binary_graph",
    graph = "multi_hand_tracking_mobile.pbtxt",
    output_name = "multi_hand_tracking_mobile_gpu.binarypb",
    deps = [":multi_hand_mobile_calculators"],
)

mediapipe_binary_graph(
    name = "multi_hand_tracking_mobile_fps_gpu_binary_graph",
    graph = "multi_hand_tracking_fps.pbtxt",
    output_name = "multi_hand_tracking_mobile_fps_gpu.binarypb",
    deps = [":multi_hand_mobile_calculators"],
)

mediapipe_binary_graph(
    name = "hand_tracking_mobile_fps_gpu_binary_graph",
    graph = "hand_tracking_mobile_fps.pbtxt",
    output_name = "hand_tracking_mobile_fps_gpu.binarypb",
    deps = [":mobile_calculators"],
)

mediapipe_binary_graph(
    name = "signn_binary_graph",
    graph = "multi_hand_tracking_mobile_signn.pbtxt",
    output_name = "signn.binarypb",
    deps = [":multi_hand_mobile_calculators"],
)



cc_library(
    name = "detection_mobile_calculators",
    deps = [
        "//mediapipe/calculators/core:flow_limiter_calculator",
        "//mediapipe/graphs/hand_tracking/subgraphs:hand_detection_gpu",
        "//mediapipe/graphs/hand_tracking/subgraphs:renderer_gpu",
    ],
)

mediapipe_binary_graph(
    name = "hand_detection_mobile_gpu_binary_graph",
    graph = "hand_detection_mobile.pbtxt",
    output_name = "hand_detection_mobile_gpu.binarypb",
    deps = [":detection_mobile_calculators"],
)
