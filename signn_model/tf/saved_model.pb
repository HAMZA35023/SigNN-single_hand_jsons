ó
$Ó#
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
ŕ
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"train*1.15.02v1.15.0-rc3-22-g590d6ee8ź
r
flatten_4_inputPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
shape:˙˙˙˙˙˙˙˙˙*
N
flatten_4/ShapeShapeflatten_4_input*
T0*
_output_shapes
:
g
flatten_4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
flatten_4/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
i
flatten_4/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ß
flatten_4/strided_sliceStridedSliceflatten_4/Shapeflatten_4/strided_slice/stackflatten_4/strided_slice/stack_1flatten_4/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
d
flatten_4/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

flatten_4/Reshape/shapePackflatten_4/strided_sliceflatten_4/Reshape/shape/1*
_output_shapes
:*
T0*
N
x
flatten_4/ReshapeReshapeflatten_4_inputflatten_4/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Ľ
0dense_16/kernel/Initializer/random_uniform/shapeConst*
valueB"*     *"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
:

.dense_16/kernel/Initializer/random_uniform/minConst*
valueB
 *˝rŁ˝*"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
: 

.dense_16/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *˝rŁ=*"
_class
loc:@dense_16/kernel*
dtype0
Ö
8dense_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_16/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
:	*
Ú
.dense_16/kernel/Initializer/random_uniform/subSub.dense_16/kernel/Initializer/random_uniform/max.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
: 
í
.dense_16/kernel/Initializer/random_uniform/mulMul8dense_16/kernel/Initializer/random_uniform/RandomUniform.dense_16/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
:	*
ß
*dense_16/kernel/Initializer/random_uniformAdd.dense_16/kernel/Initializer/random_uniform/mul.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
:	*

dense_16/kernelVarHandleOp*"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
: *
shape:	** 
shared_namedense_16/kernel
o
0dense_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/kernel*
_output_shapes
: 
t
dense_16/kernel/AssignAssignVariableOpdense_16/kernel*dense_16/kernel/Initializer/random_uniform*
dtype0
t
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0*
_output_shapes
:	*

dense_16/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes	
:

dense_16/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_16/bias* 
_class
loc:@dense_16/bias
k
.dense_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/bias*
_output_shapes
: 
e
dense_16/bias/AssignAssignVariableOpdense_16/biasdense_16/bias/Initializer/zeros*
dtype0
l
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:
o
dense_16/MatMul/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0*
_output_shapes
:	*

dense_16/MatMulMatMulflatten_4/Reshapedense_16/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
dense_16/BiasAdd/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:

dense_16/BiasAddBiasAdddense_16/MatMuldense_16/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
dense_16/ReluReludense_16/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
dropout_12/dropout/rateConst*
valueB
 *>*
dtype0*
_output_shapes
: 
U
dropout_12/dropout/ShapeShapedense_16/Relu*
T0*
_output_shapes
:
j
%dropout_12/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
j
%dropout_12/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

/dropout_12/dropout/random_uniform/RandomUniformRandomUniformdropout_12/dropout/Shape*
T0*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

%dropout_12/dropout/random_uniform/subSub%dropout_12/dropout/random_uniform/max%dropout_12/dropout/random_uniform/min*
T0*
_output_shapes
: 
ˇ
%dropout_12/dropout/random_uniform/mulMul/dropout_12/dropout/random_uniform/RandomUniform%dropout_12/dropout/random_uniform/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
!dropout_12/dropout/random_uniformAdd%dropout_12/dropout/random_uniform/mul%dropout_12/dropout/random_uniform/min*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
]
dropout_12/dropout/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
q
dropout_12/dropout/subSubdropout_12/dropout/sub/xdropout_12/dropout/rate*
T0*
_output_shapes
: 
a
dropout_12/dropout/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
|
dropout_12/dropout/truedivRealDivdropout_12/dropout/truediv/xdropout_12/dropout/sub*
T0*
_output_shapes
: 

dropout_12/dropout/GreaterEqualGreaterEqual!dropout_12/dropout/random_uniformdropout_12/dropout/rate*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
{
dropout_12/dropout/mulMuldense_16/Reludropout_12/dropout/truediv*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

dropout_12/dropout/CastCastdropout_12/dropout/GreaterEqual*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

dropout_12/dropout/mul_1Muldropout_12/dropout/muldropout_12/dropout/Cast*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_17/kernel/Initializer/random_uniform/shapeConst*
valueB"    *"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
:

.dense_17/kernel/Initializer/random_uniform/minConst*
valueB
 *["˝*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
: 

.dense_17/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *["=*"
_class
loc:@dense_17/kernel*
dtype0
×
8dense_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_17/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_17/kernel*
dtype0* 
_output_shapes
:

Ú
.dense_17/kernel/Initializer/random_uniform/subSub.dense_17/kernel/Initializer/random_uniform/max.dense_17/kernel/Initializer/random_uniform/min*"
_class
loc:@dense_17/kernel*
_output_shapes
: *
T0
î
.dense_17/kernel/Initializer/random_uniform/mulMul8dense_17/kernel/Initializer/random_uniform/RandomUniform.dense_17/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*
T0*"
_class
loc:@dense_17/kernel
ŕ
*dense_17/kernel/Initializer/random_uniformAdd.dense_17/kernel/Initializer/random_uniform/mul.dense_17/kernel/Initializer/random_uniform/min*"
_class
loc:@dense_17/kernel* 
_output_shapes
:
*
T0
 
dense_17/kernelVarHandleOp*
shape:
* 
shared_namedense_17/kernel*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
: 
o
0dense_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/kernel*
_output_shapes
: 
t
dense_17/kernel/AssignAssignVariableOpdense_17/kernel*dense_17/kernel/Initializer/random_uniform*
dtype0
u
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0* 
_output_shapes
:


dense_17/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_17/bias*
dtype0*
_output_shapes	
:

dense_17/biasVarHandleOp*
shape:*
shared_namedense_17/bias* 
_class
loc:@dense_17/bias*
dtype0*
_output_shapes
: 
k
.dense_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/bias*
_output_shapes
: 
e
dense_17/bias/AssignAssignVariableOpdense_17/biasdense_17/bias/Initializer/zeros*
dtype0
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes	
:
p
dense_17/MatMul/ReadVariableOpReadVariableOpdense_17/kernel* 
_output_shapes
:
*
dtype0

dense_17/MatMulMatMuldropout_12/dropout/mul_1dense_17/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
dense_17/BiasAdd/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes	
:

dense_17/BiasAddBiasAdddense_17/MatMuldense_17/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
dense_17/ReluReludense_17/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
\
dropout_13/dropout/rateConst*
valueB
 *  >*
dtype0*
_output_shapes
: 
U
dropout_13/dropout/ShapeShapedense_17/Relu*
T0*
_output_shapes
:
j
%dropout_13/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
j
%dropout_13/dropout/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

/dropout_13/dropout/random_uniform/RandomUniformRandomUniformdropout_13/dropout/Shape*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

%dropout_13/dropout/random_uniform/subSub%dropout_13/dropout/random_uniform/max%dropout_13/dropout/random_uniform/min*
T0*
_output_shapes
: 
ˇ
%dropout_13/dropout/random_uniform/mulMul/dropout_13/dropout/random_uniform/RandomUniform%dropout_13/dropout/random_uniform/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
!dropout_13/dropout/random_uniformAdd%dropout_13/dropout/random_uniform/mul%dropout_13/dropout/random_uniform/min*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
]
dropout_13/dropout/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
q
dropout_13/dropout/subSubdropout_13/dropout/sub/xdropout_13/dropout/rate*
T0*
_output_shapes
: 
a
dropout_13/dropout/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
|
dropout_13/dropout/truedivRealDivdropout_13/dropout/truediv/xdropout_13/dropout/sub*
T0*
_output_shapes
: 

dropout_13/dropout/GreaterEqualGreaterEqual!dropout_13/dropout/random_uniformdropout_13/dropout/rate*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
dropout_13/dropout/mulMuldense_17/Reludropout_13/dropout/truediv*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dropout_13/dropout/CastCastdropout_13/dropout/GreaterEqual*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

dropout_13/dropout/mul_1Muldropout_13/dropout/muldropout_13/dropout/Cast*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ľ
0dense_18/kernel/Initializer/random_uniform/shapeConst*
valueB"  Č   *"
_class
loc:@dense_18/kernel*
dtype0*
_output_shapes
:

.dense_18/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ˝*"
_class
loc:@dense_18/kernel

.dense_18/kernel/Initializer/random_uniform/maxConst*
valueB
 *ÍĚĚ=*"
_class
loc:@dense_18/kernel*
dtype0*
_output_shapes
: 
×
8dense_18/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_18/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_18/kernel*
dtype0* 
_output_shapes
:
Č
Ú
.dense_18/kernel/Initializer/random_uniform/subSub.dense_18/kernel/Initializer/random_uniform/max.dense_18/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@dense_18/kernel
î
.dense_18/kernel/Initializer/random_uniform/mulMul8dense_18/kernel/Initializer/random_uniform/RandomUniform.dense_18/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_18/kernel* 
_output_shapes
:
Č
ŕ
*dense_18/kernel/Initializer/random_uniformAdd.dense_18/kernel/Initializer/random_uniform/mul.dense_18/kernel/Initializer/random_uniform/min*"
_class
loc:@dense_18/kernel* 
_output_shapes
:
Č*
T0
 
dense_18/kernelVarHandleOp* 
shared_namedense_18/kernel*"
_class
loc:@dense_18/kernel*
dtype0*
_output_shapes
: *
shape:
Č
o
0dense_18/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_18/kernel*
_output_shapes
: 
t
dense_18/kernel/AssignAssignVariableOpdense_18/kernel*dense_18/kernel/Initializer/random_uniform*
dtype0
u
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel* 
_output_shapes
:
Č*
dtype0

dense_18/bias/Initializer/zerosConst*
_output_shapes	
:Č*
valueBČ*    * 
_class
loc:@dense_18/bias*
dtype0

dense_18/biasVarHandleOp*
shape:Č*
shared_namedense_18/bias* 
_class
loc:@dense_18/bias*
dtype0*
_output_shapes
: 
k
.dense_18/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_18/bias*
_output_shapes
: 
e
dense_18/bias/AssignAssignVariableOpdense_18/biasdense_18/bias/Initializer/zeros*
dtype0
l
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
dtype0*
_output_shapes	
:Č
p
dense_18/MatMul/ReadVariableOpReadVariableOpdense_18/kernel*
dtype0* 
_output_shapes
:
Č

dense_18/MatMulMatMuldropout_13/dropout/mul_1dense_18/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
j
dense_18/BiasAdd/ReadVariableOpReadVariableOpdense_18/bias*
dtype0*
_output_shapes	
:Č

dense_18/BiasAddBiasAdddense_18/MatMuldense_18/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
Z
dense_18/TanhTanhdense_18/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č*
T0
\
dropout_14/dropout/rateConst*
valueB
 *ÍĚĚ>*
dtype0*
_output_shapes
: 
U
dropout_14/dropout/ShapeShapedense_18/Tanh*
_output_shapes
:*
T0
j
%dropout_14/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
j
%dropout_14/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

/dropout_14/dropout/random_uniform/RandomUniformRandomUniformdropout_14/dropout/Shape*
T0*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č

%dropout_14/dropout/random_uniform/subSub%dropout_14/dropout/random_uniform/max%dropout_14/dropout/random_uniform/min*
T0*
_output_shapes
: 
ˇ
%dropout_14/dropout/random_uniform/mulMul/dropout_14/dropout/random_uniform/RandomUniform%dropout_14/dropout/random_uniform/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
Š
!dropout_14/dropout/random_uniformAdd%dropout_14/dropout/random_uniform/mul%dropout_14/dropout/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
]
dropout_14/dropout/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
q
dropout_14/dropout/subSubdropout_14/dropout/sub/xdropout_14/dropout/rate*
_output_shapes
: *
T0
a
dropout_14/dropout/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
|
dropout_14/dropout/truedivRealDivdropout_14/dropout/truediv/xdropout_14/dropout/sub*
T0*
_output_shapes
: 

dropout_14/dropout/GreaterEqualGreaterEqual!dropout_14/dropout/random_uniformdropout_14/dropout/rate*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
{
dropout_14/dropout/mulMuldense_18/Tanhdropout_14/dropout/truediv*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č*
T0

dropout_14/dropout/CastCastdropout_14/dropout/GreaterEqual*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č*

DstT0*

SrcT0


dropout_14/dropout/mul_1Muldropout_14/dropout/muldropout_14/dropout/Cast*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
Ľ
0dense_19/kernel/Initializer/random_uniform/shapeConst*
valueB"Č      *"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
:

.dense_19/kernel/Initializer/random_uniform/minConst*
valueB
 *b'ž*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: 

.dense_19/kernel/Initializer/random_uniform/maxConst*
valueB
 *b'>*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: 
Ö
8dense_19/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_19/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
:	Č
Ú
.dense_19/kernel/Initializer/random_uniform/subSub.dense_19/kernel/Initializer/random_uniform/max.dense_19/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@dense_19/kernel
í
.dense_19/kernel/Initializer/random_uniform/mulMul8dense_19/kernel/Initializer/random_uniform/RandomUniform.dense_19/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes
:	Č
ß
*dense_19/kernel/Initializer/random_uniformAdd.dense_19/kernel/Initializer/random_uniform/mul.dense_19/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes
:	Č

dense_19/kernelVarHandleOp* 
shared_namedense_19/kernel*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: *
shape:	Č
o
0dense_19/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_19/kernel*
_output_shapes
: 
t
dense_19/kernel/AssignAssignVariableOpdense_19/kernel*dense_19/kernel/Initializer/random_uniform*
dtype0
t
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
dtype0*
_output_shapes
:	Č

dense_19/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_19/bias*
dtype0*
_output_shapes
:

dense_19/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_19/bias* 
_class
loc:@dense_19/bias
k
.dense_19/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_19/bias*
_output_shapes
: 
e
dense_19/bias/AssignAssignVariableOpdense_19/biasdense_19/bias/Initializer/zeros*
dtype0
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
dtype0*
_output_shapes
:
o
dense_19/MatMul/ReadVariableOpReadVariableOpdense_19/kernel*
dtype0*
_output_shapes
:	Č

dense_19/MatMulMatMuldropout_14/dropout/mul_1dense_19/MatMul/ReadVariableOp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
i
dense_19/BiasAdd/ReadVariableOpReadVariableOpdense_19/bias*
dtype0*
_output_shapes
:

dense_19/BiasAddBiasAdddense_19/MatMuldense_19/BiasAdd/ReadVariableOp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
dense_19/SoftmaxSoftmaxdense_19/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_19_targetPlaceholder*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
x
totalVarHandleOp*
shared_nametotal*
_class

loc:@total*
dtype0*
_output_shapes
: *
shape: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
x
countVarHandleOp*
_class

loc:@count*
dtype0*
_output_shapes
: *
shape: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: 
}
metrics/acc/SqueezeSqueezedense_19_target*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
z
metrics/acc/ArgMaxArgMaxdense_19/Softmaxmetrics/acc/ArgMax/dimension*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
i
metrics/acc/CastCastmetrics/acc/ArgMax*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
o
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
^
metrics/acc/SumSummetrics/acc/Cast_1metrics/acc/Const*
_output_shapes
: *
T0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0

metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
_output_shapes
: *
dtype0
M
metrics/acc/SizeSizemetrics/acc/Cast_1*
T0*
_output_shapes
: 
\
metrics/acc/Cast_2Castmetrics/acc/Size*
_output_shapes
: *

DstT0*

SrcT0

!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_2 ^metrics/acc/AssignAddVariableOp*
dtype0
 
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
T0*
_output_shapes
: 
z
loss/dense_19_loss/CastCastdense_19_target*

SrcT0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0	
X
loss/dense_19_loss/ShapeShapedense_19/BiasAdd*
_output_shapes
:*
T0
s
 loss/dense_19_loss/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

loss/dense_19_loss/ReshapeReshapeloss/dense_19_loss/Cast loss/dense_19_loss/Reshape/shape*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
&loss/dense_19_loss/strided_slice/stackConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
r
(loss/dense_19_loss/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
r
(loss/dense_19_loss/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

 loss/dense_19_loss/strided_sliceStridedSliceloss/dense_19_loss/Shape&loss/dense_19_loss/strided_slice/stack(loss/dense_19_loss/strided_slice/stack_1(loss/dense_19_loss/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
o
$loss/dense_19_loss/Reshape_1/shape/0Const*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
 
"loss/dense_19_loss/Reshape_1/shapePack$loss/dense_19_loss/Reshape_1/shape/0 loss/dense_19_loss/strided_slice*
T0*
N*
_output_shapes
:

loss/dense_19_loss/Reshape_1Reshapedense_19/BiasAdd"loss/dense_19_loss/Reshape_1/shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

<loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_19_loss/Reshape*
T0	*
_output_shapes
:

Zloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_19_loss/Reshape_1loss/dense_19_loss/Reshape*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
l
'loss/dense_19_loss/weighted_loss/Cast/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Uloss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Tloss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Ţ
Tloss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeZloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:

Sloss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
value	B :*
dtype0
k
closs/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
˛
Bloss/dense_19_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeZloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsd^loss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
í
Bloss/dense_19_loss/weighted_loss/broadcast_weights/ones_like/ConstConstd^loss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ú
<loss/dense_19_loss/weighted_loss/broadcast_weights/ones_likeFillBloss/dense_19_loss/weighted_loss/broadcast_weights/ones_like/ShapeBloss/dense_19_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
2loss/dense_19_loss/weighted_loss/broadcast_weightsMul'loss/dense_19_loss/weighted_loss/Cast/x<loss/dense_19_loss/weighted_loss/broadcast_weights/ones_like*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
é
$loss/dense_19_loss/weighted_loss/MulMulZloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits2loss/dense_19_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
loss/dense_19_loss/ConstConst*
_output_shapes
:*
valueB: *
dtype0
~
loss/dense_19_loss/SumSum$loss/dense_19_loss/weighted_loss/Mulloss/dense_19_loss/Const*
T0*
_output_shapes
: 
n
loss/dense_19_loss/num_elementsSize$loss/dense_19_loss/weighted_loss/Mul*
_output_shapes
: *
T0
}
$loss/dense_19_loss/num_elements/CastCastloss/dense_19_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0
]
loss/dense_19_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
t
loss/dense_19_loss/Sum_1Sumloss/dense_19_loss/Sumloss/dense_19_loss/Const_1*
_output_shapes
: *
T0

loss/dense_19_loss/valueDivNoNanloss/dense_19_loss/Sum_1$loss/dense_19_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_19_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
value	B	 R *
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
u
iterVarHandleOp*
shape: *
shared_nameiter*
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
j
'training/Adam/gradients/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
p
+training/Adam/gradients/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ľ
&training/Adam/gradients/gradients/FillFill'training/Adam/gradients/gradients/Shape+training/Adam/gradients/gradients/grad_ys_0*
_output_shapes
: *
T0

3training/Adam/gradients/gradients/loss/mul_grad/MulMul&training/Adam/gradients/gradients/Fillloss/dense_19_loss/value*
T0*
_output_shapes
: 

5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Mul&training/Adam/gradients/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0

Etraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0

Gtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
˛
Utraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/ShapeGtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ô
Jtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/div_no_nanDivNoNan5training/Adam/gradients/gradients/loss/mul_grad/Mul_1$loss/dense_19_loss/num_elements/Cast*
_output_shapes
: *
T0

Ctraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/SumSumJtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/div_no_nanUtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/BroadcastGradientArgs*
_output_shapes
: *
T0
˙
Gtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/ReshapeReshapeCtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/SumEtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/Shape*
T0*
_output_shapes
: 

Ctraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/NegNegloss/dense_19_loss/Sum_1*
_output_shapes
: *
T0
ä
Ltraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/div_no_nan_1DivNoNanCtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/Neg$loss/dense_19_loss/num_elements/Cast*
T0*
_output_shapes
: 
í
Ltraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/div_no_nan_2DivNoNanLtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/div_no_nan_1$loss/dense_19_loss/num_elements/Cast*
_output_shapes
: *
T0
đ
Ctraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/mulMul5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Ltraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 

Etraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/Sum_1SumCtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/mulWtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: 

Itraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/Reshape_1ReshapeEtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/Sum_1Gtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/Shape_1*
T0*
_output_shapes
: 

Mtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Gtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_1_grad/ReshapeReshapeGtraining/Adam/gradients/gradients/loss/dense_19_loss/value_grad/ReshapeMtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_1_grad/Reshape/shape*
T0*
_output_shapes
: 

Etraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_1_grad/ConstConst*
_output_shapes
: *
valueB *
dtype0
ý
Dtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_1_grad/TileTileGtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_1_grad/ReshapeEtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_1_grad/Const*
_output_shapes
: *
T0

Ktraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0

Etraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_grad/ReshapeReshapeDtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_1_grad/TileKtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes
:

Ctraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_grad/ShapeShape$loss/dense_19_loss/weighted_loss/Mul*
_output_shapes
:*
T0

Btraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_grad/TileTileEtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_grad/ReshapeCtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
Qtraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/ShapeShapeZloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0
ľ
Straining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Shape_1Shape2loss/dense_19_loss/weighted_loss/broadcast_weights*
T0*
_output_shapes
:
Ö
atraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsQtraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/ShapeStraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ü
Otraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/MulMulBtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_grad/Tile2loss/dense_19_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
Otraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/SumSumOtraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Mulatraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
°
Straining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/ReshapeReshapeOtraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/SumQtraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
Qtraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Mul_1MulZloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsBtraining/Adam/gradients/gradients/loss/dense_19_loss/Sum_grad/Tile*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ł
Qtraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Sum_1SumQtraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Mul_1ctraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
ś
Utraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Reshape_1ReshapeQtraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Sum_1Straining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ň
,training/Adam/gradients/gradients/zeros_like	ZerosLike\loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ő
training/Adam/gradients/gradients/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient\loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
Ü
training/Adam/gradients/gradients/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
training/Adam/gradients/gradients/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsStraining/Adam/gradients/gradients/loss/dense_19_loss/weighted_loss/Mul_grad/Reshapetraining/Adam/gradients/gradients/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ë
training/Adam/gradients/gradients/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining/Adam/gradients/gradients/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining/Adam/gradients/gradients/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

Itraining/Adam/gradients/gradients/loss/dense_19_loss/Reshape_1_grad/ShapeShapedense_19/BiasAdd*
T0*
_output_shapes
:
Ű
Ktraining/Adam/gradients/gradients/loss/dense_19_loss/Reshape_1_grad/ReshapeReshapetraining/Adam/gradients/gradients/loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulItraining/Adam/gradients/gradients/loss/dense_19_loss/Reshape_1_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ä
Ctraining/Adam/gradients/gradients/dense_19/BiasAdd_grad/BiasAddGradBiasAddGradKtraining/Adam/gradients/gradients/loss/dense_19_loss/Reshape_1_grad/Reshape*
T0*
_output_shapes
:
ú
=training/Adam/gradients/gradients/dense_19/MatMul_grad/MatMulMatMulKtraining/Adam/gradients/gradients/loss/dense_19_loss/Reshape_1_grad/Reshapedense_19/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č*
transpose_b(*
T0
í
?training/Adam/gradients/gradients/dense_19/MatMul_grad/MatMul_1MatMuldropout_14/dropout/mul_1Ktraining/Adam/gradients/gradients/loss/dense_19_loss/Reshape_1_grad/Reshape*
T0*
_output_shapes
:	Č*
transpose_a(

Etraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/ShapeShapedropout_14/dropout/mul*
_output_shapes
:*
T0

Gtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Shape_1Shapedropout_14/dropout/Cast*
_output_shapes
:*
T0
˛
Utraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/ShapeGtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ő
Ctraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/MulMul=training/Adam/gradients/gradients/dense_19/MatMul_grad/MatMuldropout_14/dropout/Cast*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č*
T0

Ctraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/SumSumCtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/MulUtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

Gtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/ReshapeReshapeCtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/SumEtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
Ö
Etraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Mul_1Muldropout_14/dropout/mul=training/Adam/gradients/gradients/dense_19/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č

Etraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Sum_1SumEtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Mul_1Wtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Itraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Reshape_1ReshapeEtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Sum_1Gtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Shape_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č

Ctraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/ShapeShapedense_18/Tanh*
T0*
_output_shapes
:

Etraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Shape_1Shapedropout_14/dropout/truediv*
T0*
_output_shapes
: 
Ź
Straining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/ShapeEtraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ŕ
Atraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/MulMulGtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Reshapedropout_14/dropout/truediv*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č

Atraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/SumSumAtraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/MulStraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

Etraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/ReshapeReshapeAtraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/SumCtraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
Ő
Ctraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Mul_1Muldense_18/TanhGtraining/Adam/gradients/gradients/dropout_14/dropout/mul_1_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č

Ctraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Sum_1SumCtraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Mul_1Utraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
˙
Gtraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Reshape_1ReshapeCtraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Sum_1Etraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0
Ň
=training/Adam/gradients/gradients/dense_18/Tanh_grad/TanhGradTanhGraddense_18/TanhEtraining/Adam/gradients/gradients/dropout_14/dropout/mul_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č*
T0
ˇ
Ctraining/Adam/gradients/gradients/dense_18/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/dense_18/Tanh_grad/TanhGrad*
T0*
_output_shapes	
:Č
ě
=training/Adam/gradients/gradients/dense_18/MatMul_grad/MatMulMatMul=training/Adam/gradients/gradients/dense_18/Tanh_grad/TanhGraddense_18/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(*
T0
ŕ
?training/Adam/gradients/gradients/dense_18/MatMul_grad/MatMul_1MatMuldropout_13/dropout/mul_1=training/Adam/gradients/gradients/dense_18/Tanh_grad/TanhGrad*
T0* 
_output_shapes
:
Č*
transpose_a(

Etraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/ShapeShapedropout_13/dropout/mul*
_output_shapes
:*
T0

Gtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Shape_1Shapedropout_13/dropout/Cast*
_output_shapes
:*
T0
˛
Utraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/ShapeGtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ő
Ctraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/MulMul=training/Adam/gradients/gradients/dense_18/MatMul_grad/MatMuldropout_13/dropout/Cast*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ctraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/SumSumCtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/MulUtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Gtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/ReshapeReshapeCtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/SumEtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ö
Etraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Mul_1Muldropout_13/dropout/mul=training/Adam/gradients/gradients/dense_18/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Etraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Sum_1SumEtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Mul_1Wtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Itraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Reshape_1ReshapeEtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Sum_1Gtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Shape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Ctraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/ShapeShapedense_17/Relu*
T0*
_output_shapes
:

Etraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Shape_1Shapedropout_13/dropout/truediv*
T0*
_output_shapes
: 
Ź
Straining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/ShapeEtraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ŕ
Atraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/MulMulGtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Reshapedropout_13/dropout/truediv*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Atraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/SumSumAtraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/MulStraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Etraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/ReshapeReshapeAtraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/SumCtraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ő
Ctraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Mul_1Muldense_17/ReluGtraining/Adam/gradients/gradients/dropout_13/dropout/mul_1_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Ctraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Sum_1SumCtraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Mul_1Utraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
˙
Gtraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Reshape_1ReshapeCtraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Sum_1Etraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0
Ň
=training/Adam/gradients/gradients/dense_17/Relu_grad/ReluGradReluGradEtraining/Adam/gradients/gradients/dropout_13/dropout/mul_grad/Reshapedense_17/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
Ctraining/Adam/gradients/gradients/dense_17/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/dense_17/Relu_grad/ReluGrad*
T0*
_output_shapes	
:
ě
=training/Adam/gradients/gradients/dense_17/MatMul_grad/MatMulMatMul=training/Adam/gradients/gradients/dense_17/Relu_grad/ReluGraddense_17/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b(
ŕ
?training/Adam/gradients/gradients/dense_17/MatMul_grad/MatMul_1MatMuldropout_12/dropout/mul_1=training/Adam/gradients/gradients/dense_17/Relu_grad/ReluGrad*
T0* 
_output_shapes
:
*
transpose_a(

Etraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/ShapeShapedropout_12/dropout/mul*
T0*
_output_shapes
:

Gtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Shape_1Shapedropout_12/dropout/Cast*
T0*
_output_shapes
:
˛
Utraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/ShapeGtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ő
Ctraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/MulMul=training/Adam/gradients/gradients/dense_17/MatMul_grad/MatMuldropout_12/dropout/Cast*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ctraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/SumSumCtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/MulUtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Gtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/ReshapeReshapeCtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/SumEtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ö
Etraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Mul_1Muldropout_12/dropout/mul=training/Adam/gradients/gradients/dense_17/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Etraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Sum_1SumEtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Mul_1Wtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Itraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Reshape_1ReshapeEtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Sum_1Gtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Shape_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ctraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/ShapeShapedense_16/Relu*
T0*
_output_shapes
:

Etraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Shape_1Shapedropout_12/dropout/truediv*
T0*
_output_shapes
: 
Ź
Straining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/ShapeEtraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ŕ
Atraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/MulMulGtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Reshapedropout_12/dropout/truediv*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Atraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/SumSumAtraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/MulStraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Etraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/ReshapeReshapeAtraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/SumCtraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ő
Ctraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Mul_1Muldense_16/ReluGtraining/Adam/gradients/gradients/dropout_12/dropout/mul_1_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ctraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Sum_1SumCtraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Mul_1Utraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
˙
Gtraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Reshape_1ReshapeCtraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Sum_1Etraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Shape_1*
T0*
_output_shapes
: 
Ň
=training/Adam/gradients/gradients/dense_16/Relu_grad/ReluGradReluGradEtraining/Adam/gradients/gradients/dropout_12/dropout/mul_grad/Reshapedense_16/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ˇ
Ctraining/Adam/gradients/gradients/dense_16/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/dense_16/Relu_grad/ReluGrad*
_output_shapes	
:*
T0
ë
=training/Adam/gradients/gradients/dense_16/MatMul_grad/MatMulMatMul=training/Adam/gradients/gradients/dense_16/Relu_grad/ReluGraddense_16/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
transpose_b(
Ř
?training/Adam/gradients/gradients/dense_16/MatMul_grad/MatMul_1MatMulflatten_4/Reshape=training/Adam/gradients/gradients/dense_16/Relu_grad/ReluGrad*
_output_shapes
:	**
transpose_a(*
T0

.training/Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*'
_class
loc:@training/Adam/beta_1*
dtype0*
_output_shapes
: 
Ľ
training/Adam/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shape: *%
shared_nametraining/Adam/beta_1*'
_class
loc:@training/Adam/beta_1
y
5training/Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 

training/Adam/beta_1/AssignAssignVariableOptraining/Adam/beta_1.training/Adam/beta_1/Initializer/initial_value*
dtype0
u
(training/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 

.training/Adam/beta_2/Initializer/initial_valueConst*
valueB
 *wž?*'
_class
loc:@training/Adam/beta_2*
dtype0*
_output_shapes
: 
Ľ
training/Adam/beta_2VarHandleOp*%
shared_nametraining/Adam/beta_2*'
_class
loc:@training/Adam/beta_2*
dtype0*
_output_shapes
: *
shape: 
y
5training/Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 

training/Adam/beta_2/AssignAssignVariableOptraining/Adam/beta_2.training/Adam/beta_2/Initializer/initial_value*
dtype0
u
(training/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 

-training/Adam/decay/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *    *&
_class
loc:@training/Adam/decay*
dtype0
˘
training/Adam/decayVarHandleOp*&
_class
loc:@training/Adam/decay*
dtype0*
_output_shapes
: *
shape: *$
shared_nametraining/Adam/decay
w
4training/Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/decay*
_output_shapes
: 

training/Adam/decay/AssignAssignVariableOptraining/Adam/decay-training/Adam/decay/Initializer/initial_value*
dtype0
s
'training/Adam/decay/Read/ReadVariableOpReadVariableOptraining/Adam/decay*
dtype0*
_output_shapes
: 
Ş
5training/Adam/learning_rate/Initializer/initial_valueConst*
valueB
 *o:*.
_class$
" loc:@training/Adam/learning_rate*
dtype0*
_output_shapes
: 
ş
training/Adam/learning_rateVarHandleOp*
dtype0*
_output_shapes
: *
shape: *,
shared_nametraining/Adam/learning_rate*.
_class$
" loc:@training/Adam/learning_rate

<training/Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 

"training/Adam/learning_rate/AssignAssignVariableOptraining/Adam/learning_rate5training/Adam/learning_rate/Initializer/initial_value*
dtype0

/training/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: 
ś
Atraining/Adam/dense_16/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@dense_16/kernel*
valueB"*     *
dtype0*
_output_shapes
:
 
7training/Adam/dense_16/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@dense_16/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_16/kernel/m/Initializer/zerosFillAtraining/Adam/dense_16/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/dense_16/kernel/m/Initializer/zeros/Const*"
_class
loc:@dense_16/kernel*
_output_shapes
:	**
T0
ż
training/Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
shape:	**0
shared_name!training/Adam/dense_16/kernel/m*"
_class
loc:@dense_16/kernel*
dtype0
ł
@training/Adam/dense_16/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_16/kernel/m*
_output_shapes
: *"
_class
loc:@dense_16/kernel

&training/Adam/dense_16/kernel/m/AssignAssignVariableOptraining/Adam/dense_16/kernel/m1training/Adam/dense_16/kernel/m/Initializer/zeros*
dtype0
¸
3training/Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_16/kernel/m*"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
:	*
 
/training/Adam/dense_16/bias/m/Initializer/zerosConst* 
_class
loc:@dense_16/bias*
valueB*    *
dtype0*
_output_shapes	
:
ľ
training/Adam/dense_16/bias/mVarHandleOp*.
shared_nametraining/Adam/dense_16/bias/m* 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes
: *
shape:
­
>training/Adam/dense_16/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_16/bias/m* 
_class
loc:@dense_16/bias*
_output_shapes
: 

$training/Adam/dense_16/bias/m/AssignAssignVariableOptraining/Adam/dense_16/bias/m/training/Adam/dense_16/bias/m/Initializer/zeros*
dtype0
Ž
1training/Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_16/bias/m* 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes	
:
ś
Atraining/Adam/dense_17/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@dense_17/kernel*
valueB"    *
dtype0*
_output_shapes
:
 
7training/Adam/dense_17/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@dense_17/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_17/kernel/m/Initializer/zerosFillAtraining/Adam/dense_17/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/dense_17/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@dense_17/kernel* 
_output_shapes
:

Ŕ
training/Adam/dense_17/kernel/mVarHandleOp*
shape:
*0
shared_name!training/Adam/dense_17/kernel/m*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
: 
ł
@training/Adam/dense_17/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_17/kernel/m*"
_class
loc:@dense_17/kernel*
_output_shapes
: 

&training/Adam/dense_17/kernel/m/AssignAssignVariableOptraining/Adam/dense_17/kernel/m1training/Adam/dense_17/kernel/m/Initializer/zeros*
dtype0
š
3training/Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_17/kernel/m* 
_output_shapes
:
*"
_class
loc:@dense_17/kernel*
dtype0
 
/training/Adam/dense_17/bias/m/Initializer/zerosConst* 
_class
loc:@dense_17/bias*
valueB*    *
dtype0*
_output_shapes	
:
ľ
training/Adam/dense_17/bias/mVarHandleOp*
dtype0*
_output_shapes
: *
shape:*.
shared_nametraining/Adam/dense_17/bias/m* 
_class
loc:@dense_17/bias
­
>training/Adam/dense_17/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_17/bias/m* 
_class
loc:@dense_17/bias*
_output_shapes
: 

$training/Adam/dense_17/bias/m/AssignAssignVariableOptraining/Adam/dense_17/bias/m/training/Adam/dense_17/bias/m/Initializer/zeros*
dtype0
Ž
1training/Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_17/bias/m* 
_class
loc:@dense_17/bias*
dtype0*
_output_shapes	
:
ś
Atraining/Adam/dense_18/kernel/m/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*"
_class
loc:@dense_18/kernel*
valueB"  Č   
 
7training/Adam/dense_18/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@dense_18/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_18/kernel/m/Initializer/zerosFillAtraining/Adam/dense_18/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/dense_18/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@dense_18/kernel* 
_output_shapes
:
Č
Ŕ
training/Adam/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
shape:
Č*0
shared_name!training/Adam/dense_18/kernel/m*"
_class
loc:@dense_18/kernel*
dtype0
ł
@training/Adam/dense_18/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_18/kernel/m*"
_class
loc:@dense_18/kernel*
_output_shapes
: 

&training/Adam/dense_18/kernel/m/AssignAssignVariableOptraining/Adam/dense_18/kernel/m1training/Adam/dense_18/kernel/m/Initializer/zeros*
dtype0
š
3training/Adam/dense_18/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_18/kernel/m*"
_class
loc:@dense_18/kernel*
dtype0* 
_output_shapes
:
Č
 
/training/Adam/dense_18/bias/m/Initializer/zerosConst* 
_class
loc:@dense_18/bias*
valueBČ*    *
dtype0*
_output_shapes	
:Č
ľ
training/Adam/dense_18/bias/mVarHandleOp*.
shared_nametraining/Adam/dense_18/bias/m* 
_class
loc:@dense_18/bias*
dtype0*
_output_shapes
: *
shape:Č
­
>training/Adam/dense_18/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_18/bias/m* 
_class
loc:@dense_18/bias*
_output_shapes
: 

$training/Adam/dense_18/bias/m/AssignAssignVariableOptraining/Adam/dense_18/bias/m/training/Adam/dense_18/bias/m/Initializer/zeros*
dtype0
Ž
1training/Adam/dense_18/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_18/bias/m* 
_class
loc:@dense_18/bias*
dtype0*
_output_shapes	
:Č
ś
Atraining/Adam/dense_19/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@dense_19/kernel*
valueB"Č      *
dtype0*
_output_shapes
:
 
7training/Adam/dense_19/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@dense_19/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_19/kernel/m/Initializer/zerosFillAtraining/Adam/dense_19/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/dense_19/kernel/m/Initializer/zeros/Const*"
_class
loc:@dense_19/kernel*
_output_shapes
:	Č*
T0
ż
training/Adam/dense_19/kernel/mVarHandleOp*
shape:	Č*0
shared_name!training/Adam/dense_19/kernel/m*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: 
ł
@training/Adam/dense_19/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_19/kernel/m*"
_class
loc:@dense_19/kernel*
_output_shapes
: 

&training/Adam/dense_19/kernel/m/AssignAssignVariableOptraining/Adam/dense_19/kernel/m1training/Adam/dense_19/kernel/m/Initializer/zeros*
dtype0
¸
3training/Adam/dense_19/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_19/kernel/m*
_output_shapes
:	Č*"
_class
loc:@dense_19/kernel*
dtype0

/training/Adam/dense_19/bias/m/Initializer/zerosConst* 
_class
loc:@dense_19/bias*
valueB*    *
dtype0*
_output_shapes
:
´
training/Adam/dense_19/bias/mVarHandleOp*.
shared_nametraining/Adam/dense_19/bias/m* 
_class
loc:@dense_19/bias*
dtype0*
_output_shapes
: *
shape:
­
>training/Adam/dense_19/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_19/bias/m* 
_class
loc:@dense_19/bias*
_output_shapes
: 

$training/Adam/dense_19/bias/m/AssignAssignVariableOptraining/Adam/dense_19/bias/m/training/Adam/dense_19/bias/m/Initializer/zeros*
dtype0
­
1training/Adam/dense_19/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_19/bias/m* 
_class
loc:@dense_19/bias*
dtype0*
_output_shapes
:
ś
Atraining/Adam/dense_16/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@dense_16/kernel*
valueB"*     *
dtype0*
_output_shapes
:
 
7training/Adam/dense_16/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@dense_16/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_16/kernel/v/Initializer/zerosFillAtraining/Adam/dense_16/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/dense_16/kernel/v/Initializer/zeros/Const*
_output_shapes
:	**
T0*"
_class
loc:@dense_16/kernel
ż
training/Adam/dense_16/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *
shape:	**0
shared_name!training/Adam/dense_16/kernel/v*"
_class
loc:@dense_16/kernel
ł
@training/Adam/dense_16/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_16/kernel/v*"
_class
loc:@dense_16/kernel*
_output_shapes
: 

&training/Adam/dense_16/kernel/v/AssignAssignVariableOptraining/Adam/dense_16/kernel/v1training/Adam/dense_16/kernel/v/Initializer/zeros*
dtype0
¸
3training/Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_16/kernel/v*
dtype0*
_output_shapes
:	**"
_class
loc:@dense_16/kernel
 
/training/Adam/dense_16/bias/v/Initializer/zerosConst*
dtype0*
_output_shapes	
:* 
_class
loc:@dense_16/bias*
valueB*    
ľ
training/Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
shape:*.
shared_nametraining/Adam/dense_16/bias/v* 
_class
loc:@dense_16/bias*
dtype0
­
>training/Adam/dense_16/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_16/bias/v*
_output_shapes
: * 
_class
loc:@dense_16/bias

$training/Adam/dense_16/bias/v/AssignAssignVariableOptraining/Adam/dense_16/bias/v/training/Adam/dense_16/bias/v/Initializer/zeros*
dtype0
Ž
1training/Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_16/bias/v* 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes	
:
ś
Atraining/Adam/dense_17/kernel/v/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*"
_class
loc:@dense_17/kernel*
valueB"    
 
7training/Adam/dense_17/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@dense_17/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_17/kernel/v/Initializer/zerosFillAtraining/Adam/dense_17/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/dense_17/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@dense_17/kernel* 
_output_shapes
:

Ŕ
training/Adam/dense_17/kernel/vVarHandleOp*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
: *
shape:
*0
shared_name!training/Adam/dense_17/kernel/v
ł
@training/Adam/dense_17/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_17/kernel/v*
_output_shapes
: *"
_class
loc:@dense_17/kernel

&training/Adam/dense_17/kernel/v/AssignAssignVariableOptraining/Adam/dense_17/kernel/v1training/Adam/dense_17/kernel/v/Initializer/zeros*
dtype0
š
3training/Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_17/kernel/v*
dtype0* 
_output_shapes
:
*"
_class
loc:@dense_17/kernel
 
/training/Adam/dense_17/bias/v/Initializer/zerosConst*
dtype0*
_output_shapes	
:* 
_class
loc:@dense_17/bias*
valueB*    
ľ
training/Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
shape:*.
shared_nametraining/Adam/dense_17/bias/v* 
_class
loc:@dense_17/bias*
dtype0
­
>training/Adam/dense_17/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_17/bias/v*
_output_shapes
: * 
_class
loc:@dense_17/bias

$training/Adam/dense_17/bias/v/AssignAssignVariableOptraining/Adam/dense_17/bias/v/training/Adam/dense_17/bias/v/Initializer/zeros*
dtype0
Ž
1training/Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_17/bias/v*
_output_shapes	
:* 
_class
loc:@dense_17/bias*
dtype0
ś
Atraining/Adam/dense_18/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@dense_18/kernel*
valueB"  Č   *
dtype0*
_output_shapes
:
 
7training/Adam/dense_18/kernel/v/Initializer/zeros/ConstConst*
_output_shapes
: *"
_class
loc:@dense_18/kernel*
valueB
 *    *
dtype0

1training/Adam/dense_18/kernel/v/Initializer/zerosFillAtraining/Adam/dense_18/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/dense_18/kernel/v/Initializer/zeros/Const*"
_class
loc:@dense_18/kernel* 
_output_shapes
:
Č*
T0
Ŕ
training/Adam/dense_18/kernel/vVarHandleOp*0
shared_name!training/Adam/dense_18/kernel/v*"
_class
loc:@dense_18/kernel*
dtype0*
_output_shapes
: *
shape:
Č
ł
@training/Adam/dense_18/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_18/kernel/v*"
_class
loc:@dense_18/kernel*
_output_shapes
: 

&training/Adam/dense_18/kernel/v/AssignAssignVariableOptraining/Adam/dense_18/kernel/v1training/Adam/dense_18/kernel/v/Initializer/zeros*
dtype0
š
3training/Adam/dense_18/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_18/kernel/v*
dtype0* 
_output_shapes
:
Č*"
_class
loc:@dense_18/kernel
 
/training/Adam/dense_18/bias/v/Initializer/zerosConst*
_output_shapes	
:Č* 
_class
loc:@dense_18/bias*
valueBČ*    *
dtype0
ľ
training/Adam/dense_18/bias/vVarHandleOp* 
_class
loc:@dense_18/bias*
dtype0*
_output_shapes
: *
shape:Č*.
shared_nametraining/Adam/dense_18/bias/v
­
>training/Adam/dense_18/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_18/bias/v* 
_class
loc:@dense_18/bias*
_output_shapes
: 

$training/Adam/dense_18/bias/v/AssignAssignVariableOptraining/Adam/dense_18/bias/v/training/Adam/dense_18/bias/v/Initializer/zeros*
dtype0
Ž
1training/Adam/dense_18/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_18/bias/v* 
_class
loc:@dense_18/bias*
dtype0*
_output_shapes	
:Č
ś
Atraining/Adam/dense_19/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@dense_19/kernel*
valueB"Č      *
dtype0*
_output_shapes
:
 
7training/Adam/dense_19/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@dense_19/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_19/kernel/v/Initializer/zerosFillAtraining/Adam/dense_19/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/dense_19/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes
:	Č
ż
training/Adam/dense_19/kernel/vVarHandleOp*
shape:	Č*0
shared_name!training/Adam/dense_19/kernel/v*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: 
ł
@training/Adam/dense_19/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_19/kernel/v*"
_class
loc:@dense_19/kernel*
_output_shapes
: 

&training/Adam/dense_19/kernel/v/AssignAssignVariableOptraining/Adam/dense_19/kernel/v1training/Adam/dense_19/kernel/v/Initializer/zeros*
dtype0
¸
3training/Adam/dense_19/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_19/kernel/v*
_output_shapes
:	Č*"
_class
loc:@dense_19/kernel*
dtype0

/training/Adam/dense_19/bias/v/Initializer/zerosConst* 
_class
loc:@dense_19/bias*
valueB*    *
dtype0*
_output_shapes
:
´
training/Adam/dense_19/bias/vVarHandleOp*
_output_shapes
: *
shape:*.
shared_nametraining/Adam/dense_19/bias/v* 
_class
loc:@dense_19/bias*
dtype0
­
>training/Adam/dense_19/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_19/bias/v* 
_class
loc:@dense_19/bias*
_output_shapes
: 

$training/Adam/dense_19/bias/v/AssignAssignVariableOptraining/Adam/dense_19/bias/v/training/Adam/dense_19/bias/v/Initializer/zeros*
dtype0
­
1training/Adam/dense_19/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_19/bias/v*
dtype0*
_output_shapes
:* 
_class
loc:@dense_19/bias
y
%training/Adam/Identity/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: 
j
training/Adam/IdentityIdentity%training/Adam/Identity/ReadVariableOp*
_output_shapes
: *
T0
Y
training/Adam/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
U
training/Adam/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
n
training/Adam/addAddV2training/Adam/ReadVariableOptraining/Adam/add/y*
_output_shapes
: *
T0	
]
training/Adam/CastCasttraining/Adam/add*

SrcT0	*
_output_shapes
: *

DstT0
t
'training/Adam/Identity_1/ReadVariableOpReadVariableOptraining/Adam/beta_1*
_output_shapes
: *
dtype0
n
training/Adam/Identity_1Identity'training/Adam/Identity_1/ReadVariableOp*
T0*
_output_shapes
: 
t
'training/Adam/Identity_2/ReadVariableOpReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/Identity_2Identity'training/Adam/Identity_2/ReadVariableOp*
_output_shapes
: *
T0
g
training/Adam/PowPowtraining/Adam/Identity_1training/Adam/Cast*
T0*
_output_shapes
: 
i
training/Adam/Pow_1Powtraining/Adam/Identity_2training/Adam/Cast*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
c
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
N
training/Adam/SqrtSqrttraining/Adam/sub*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
e
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
h
training/Adam/mulMultraining/Adam/Identitytraining/Adam/truediv*
_output_shapes
: *
T0
X
training/Adam/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/Identity_1*
T0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/Identity_2*
T0*
_output_shapes
: 
­
;training/Adam/Adam/update_dense_16/kernel/ResourceApplyAdamResourceApplyAdamdense_16/kerneltraining/Adam/dense_16/kernel/mtraining/Adam/dense_16/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const?training/Adam/gradients/gradients/dense_16/MatMul_grad/MatMul_1*"
_class
loc:@dense_16/kernel*
use_locking(*
T0
§
9training/Adam/Adam/update_dense_16/bias/ResourceApplyAdamResourceApplyAdamdense_16/biastraining/Adam/dense_16/bias/mtraining/Adam/dense_16/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/dense_16/BiasAdd_grad/BiasAddGrad*
T0* 
_class
loc:@dense_16/bias*
use_locking(
­
;training/Adam/Adam/update_dense_17/kernel/ResourceApplyAdamResourceApplyAdamdense_17/kerneltraining/Adam/dense_17/kernel/mtraining/Adam/dense_17/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const?training/Adam/gradients/gradients/dense_17/MatMul_grad/MatMul_1*
use_locking(*
T0*"
_class
loc:@dense_17/kernel
§
9training/Adam/Adam/update_dense_17/bias/ResourceApplyAdamResourceApplyAdamdense_17/biastraining/Adam/dense_17/bias/mtraining/Adam/dense_17/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/dense_17/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0* 
_class
loc:@dense_17/bias
­
;training/Adam/Adam/update_dense_18/kernel/ResourceApplyAdamResourceApplyAdamdense_18/kerneltraining/Adam/dense_18/kernel/mtraining/Adam/dense_18/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const?training/Adam/gradients/gradients/dense_18/MatMul_grad/MatMul_1*
use_locking(*
T0*"
_class
loc:@dense_18/kernel
§
9training/Adam/Adam/update_dense_18/bias/ResourceApplyAdamResourceApplyAdamdense_18/biastraining/Adam/dense_18/bias/mtraining/Adam/dense_18/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/dense_18/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0* 
_class
loc:@dense_18/bias
­
;training/Adam/Adam/update_dense_19/kernel/ResourceApplyAdamResourceApplyAdamdense_19/kerneltraining/Adam/dense_19/kernel/mtraining/Adam/dense_19/kernel/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/Const?training/Adam/gradients/gradients/dense_19/MatMul_grad/MatMul_1*
use_locking(*
T0*"
_class
loc:@dense_19/kernel
§
9training/Adam/Adam/update_dense_19/bias/ResourceApplyAdamResourceApplyAdamdense_19/biastraining/Adam/dense_19/bias/mtraining/Adam/dense_19/bias/vtraining/Adam/Powtraining/Adam/Pow_1training/Adam/Identitytraining/Adam/Identity_1training/Adam/Identity_2training/Adam/ConstCtraining/Adam/gradients/gradients/dense_19/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0* 
_class
loc:@dense_19/bias
Â
training/Adam/Adam/ConstConst:^training/Adam/Adam/update_dense_16/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_16/kernel/ResourceApplyAdam:^training/Adam/Adam/update_dense_17/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_17/kernel/ResourceApplyAdam:^training/Adam/Adam/update_dense_18/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_18/kernel/ResourceApplyAdam:^training/Adam/Adam/update_dense_19/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_19/kernel/ResourceApplyAdam*
value	B	 R*
dtype0	*
_output_shapes
: 
j
&training/Adam/Adam/AssignAddVariableOpAssignAddVariableOpitertraining/Adam/Adam/Const*
dtype0	
ď
!training/Adam/Adam/ReadVariableOpReadVariableOpiter'^training/Adam/Adam/AssignAddVariableOp:^training/Adam/Adam/update_dense_16/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_16/kernel/ResourceApplyAdam:^training/Adam/Adam/update_dense_17/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_17/kernel/ResourceApplyAdam:^training/Adam/Adam/update_dense_18/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_18/kernel/ResourceApplyAdam:^training/Adam/Adam/update_dense_19/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_19/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
Q
training_1/group_depsNoOp	^loss/mul'^training/Adam/Adam/AssignAddVariableOp
Z
ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB Bmodel
Ŕ
RestoreV2/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
\
AssignVariableOpAssignVariableOptraining/Adam/dense_16/kernel/mIdentity*
dtype0
Â
RestoreV2_1/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
_output_shapes
:*
T0
`
AssignVariableOp_1AssignVariableOptraining/Adam/dense_16/kernel/v
Identity_1*
dtype0
Ŕ
RestoreV2_2/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
^
AssignVariableOp_2AssignVariableOptraining/Adam/dense_16/bias/m
Identity_2*
dtype0
Ŕ
RestoreV2_3/tensor_namesConst"/device:CPU:0*
_output_shapes
:*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
^
AssignVariableOp_3AssignVariableOptraining/Adam/dense_16/bias/v
Identity_3*
dtype0
Â
RestoreV2_4/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
_output_shapes
:*
T0
`
AssignVariableOp_4AssignVariableOptraining/Adam/dense_17/kernel/m
Identity_4*
dtype0
Â
RestoreV2_5/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_5	RestoreV2ConstRestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_5IdentityRestoreV2_5*
T0*
_output_shapes
:
`
AssignVariableOp_5AssignVariableOptraining/Adam/dense_17/kernel/v
Identity_5*
dtype0
Ŕ
RestoreV2_6/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_6	RestoreV2ConstRestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_6IdentityRestoreV2_6*
_output_shapes
:*
T0
^
AssignVariableOp_6AssignVariableOptraining/Adam/dense_17/bias/m
Identity_6*
dtype0
Ŕ
RestoreV2_7/tensor_namesConst"/device:CPU:0*
_output_shapes
:*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_7	RestoreV2ConstRestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_7IdentityRestoreV2_7*
T0*
_output_shapes
:
^
AssignVariableOp_7AssignVariableOptraining/Adam/dense_17/bias/v
Identity_7*
dtype0
Â
RestoreV2_8/tensor_namesConst"/device:CPU:0*
_output_shapes
:*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0

RestoreV2_8	RestoreV2ConstRestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_8IdentityRestoreV2_8*
T0*
_output_shapes
:
`
AssignVariableOp_8AssignVariableOptraining/Adam/dense_18/kernel/m
Identity_8*
dtype0
Â
RestoreV2_9/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*g
value^B\BRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_9	RestoreV2ConstRestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_9IdentityRestoreV2_9*
T0*
_output_shapes
:
`
AssignVariableOp_9AssignVariableOptraining/Adam/dense_18/kernel/v
Identity_9*
dtype0
Á
RestoreV2_10/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_10	RestoreV2ConstRestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_10IdentityRestoreV2_10*
_output_shapes
:*
T0
`
AssignVariableOp_10AssignVariableOptraining/Adam/dense_18/bias/mIdentity_10*
dtype0
Á
RestoreV2_11/tensor_namesConst"/device:CPU:0*
_output_shapes
:*e
value\BZBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_11	RestoreV2ConstRestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
`
AssignVariableOp_11AssignVariableOptraining/Adam/dense_18/bias/vIdentity_11*
dtype0
Ă
RestoreV2_12/tensor_namesConst"/device:CPU:0*
_output_shapes
:*g
value^B\BRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_12	RestoreV2ConstRestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_12IdentityRestoreV2_12*
T0*
_output_shapes
:
b
AssignVariableOp_12AssignVariableOptraining/Adam/dense_19/kernel/mIdentity_12*
dtype0
Ă
RestoreV2_13/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_13	RestoreV2ConstRestoreV2_13/tensor_namesRestoreV2_13/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_13IdentityRestoreV2_13*
T0*
_output_shapes
:
b
AssignVariableOp_13AssignVariableOptraining/Adam/dense_19/kernel/vIdentity_13*
dtype0
Á
RestoreV2_14/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_14/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_14	RestoreV2ConstRestoreV2_14/tensor_namesRestoreV2_14/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_14IdentityRestoreV2_14*
_output_shapes
:*
T0
`
AssignVariableOp_14AssignVariableOptraining/Adam/dense_19/bias/mIdentity_14*
dtype0
Á
RestoreV2_15/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_15/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_15	RestoreV2ConstRestoreV2_15/tensor_namesRestoreV2_15/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_15IdentityRestoreV2_15*
_output_shapes
:*
T0
`
AssignVariableOp_15AssignVariableOptraining/Adam/dense_19/bias/vIdentity_15*
dtype0

RestoreV2_16/tensor_namesConst"/device:CPU:0*˛
value¨BĽB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

RestoreV2_16/shape_and_slicesConst"/device:CPU:0*-
value$B"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Đ
RestoreV2_16	RestoreV2ConstRestoreV2_16/tensor_namesRestoreV2_16/shape_and_slices"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	
H
Identity_16IdentityRestoreV2_16*
T0*
_output_shapes
:
P
AssignVariableOp_16AssignVariableOpdense_16/biasIdentity_16*
dtype0
J
Identity_17IdentityRestoreV2_16:1*
_output_shapes
:*
T0
R
AssignVariableOp_17AssignVariableOpdense_16/kernelIdentity_17*
dtype0
J
Identity_18IdentityRestoreV2_16:2*
T0*
_output_shapes
:
P
AssignVariableOp_18AssignVariableOpdense_17/biasIdentity_18*
dtype0
J
Identity_19IdentityRestoreV2_16:3*
T0*
_output_shapes
:
R
AssignVariableOp_19AssignVariableOpdense_17/kernelIdentity_19*
dtype0
J
Identity_20IdentityRestoreV2_16:4*
T0*
_output_shapes
:
P
AssignVariableOp_20AssignVariableOpdense_18/biasIdentity_20*
dtype0
J
Identity_21IdentityRestoreV2_16:5*
_output_shapes
:*
T0
R
AssignVariableOp_21AssignVariableOpdense_18/kernelIdentity_21*
dtype0
J
Identity_22IdentityRestoreV2_16:6*
_output_shapes
:*
T0
P
AssignVariableOp_22AssignVariableOpdense_19/biasIdentity_22*
dtype0
J
Identity_23IdentityRestoreV2_16:7*
T0*
_output_shapes
:
R
AssignVariableOp_23AssignVariableOpdense_19/kernelIdentity_23*
dtype0
J
Identity_24IdentityRestoreV2_16:8*
T0*
_output_shapes
:
W
AssignVariableOp_24AssignVariableOptraining/Adam/beta_1Identity_24*
dtype0
J
Identity_25IdentityRestoreV2_16:9*
_output_shapes
:*
T0
W
AssignVariableOp_25AssignVariableOptraining/Adam/beta_2Identity_25*
dtype0
K
Identity_26IdentityRestoreV2_16:10*
T0*
_output_shapes
:
V
AssignVariableOp_26AssignVariableOptraining/Adam/decayIdentity_26*
dtype0
K
Identity_27IdentityRestoreV2_16:11*
T0	*
_output_shapes
:
G
AssignVariableOp_27AssignVariableOpiterIdentity_27*
dtype0	
K
Identity_28IdentityRestoreV2_16:12*
T0*
_output_shapes
:
^
AssignVariableOp_28AssignVariableOptraining/Adam/learning_rateIdentity_28*
dtype0
Q
VarIsInitializedOpVarIsInitializedOpdense_19/kernel*
_output_shapes
: 
X
VarIsInitializedOp_1VarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 
a
VarIsInitializedOp_2VarIsInitializedOptraining/Adam/dense_17/bias/v*
_output_shapes
: 
S
VarIsInitializedOp_3VarIsInitializedOpdense_18/kernel*
_output_shapes
: 
X
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 
c
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/dense_17/kernel/m*
_output_shapes
: 
S
VarIsInitializedOp_6VarIsInitializedOpdense_17/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_7VarIsInitializedOpdense_19/bias*
_output_shapes
: 
I
VarIsInitializedOp_8VarIsInitializedOpcount*
_output_shapes
: 
a
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/dense_17/bias/m*
_output_shapes
: 
X
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/decay*
_output_shapes
: 
d
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/dense_16/kernel/m*
_output_shapes
: 
R
VarIsInitializedOp_12VarIsInitializedOpdense_18/bias*
_output_shapes
: 
b
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/dense_19/bias/m*
_output_shapes
: 
d
VarIsInitializedOp_14VarIsInitializedOptraining/Adam/dense_16/kernel/v*
_output_shapes
: 
d
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/dense_17/kernel/v*
_output_shapes
: 
b
VarIsInitializedOp_16VarIsInitializedOptraining/Adam/dense_18/bias/m*
_output_shapes
: 
`
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 
d
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/dense_19/kernel/m*
_output_shapes
: 
b
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/dense_16/bias/m*
_output_shapes
: 
T
VarIsInitializedOp_20VarIsInitializedOpdense_16/kernel*
_output_shapes
: 
b
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/dense_16/bias/v*
_output_shapes
: 
d
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/dense_18/kernel/v*
_output_shapes
: 
b
VarIsInitializedOp_23VarIsInitializedOptraining/Adam/dense_18/bias/v*
_output_shapes
: 
b
VarIsInitializedOp_24VarIsInitializedOptraining/Adam/dense_19/bias/v*
_output_shapes
: 
R
VarIsInitializedOp_25VarIsInitializedOpdense_16/bias*
_output_shapes
: 
J
VarIsInitializedOp_26VarIsInitializedOptotal*
_output_shapes
: 
I
VarIsInitializedOp_27VarIsInitializedOpiter*
_output_shapes
: 
d
VarIsInitializedOp_28VarIsInitializedOptraining/Adam/dense_18/kernel/m*
_output_shapes
: 
d
VarIsInitializedOp_29VarIsInitializedOptraining/Adam/dense_19/kernel/v*
_output_shapes
: 
R
VarIsInitializedOp_30VarIsInitializedOpdense_17/bias*
_output_shapes
: 
ö
initNoOp^count/Assign^dense_16/bias/Assign^dense_16/kernel/Assign^dense_17/bias/Assign^dense_17/kernel/Assign^dense_18/bias/Assign^dense_18/kernel/Assign^dense_19/bias/Assign^dense_19/kernel/Assign^iter/Assign^total/Assign^training/Adam/beta_1/Assign^training/Adam/beta_2/Assign^training/Adam/decay/Assign%^training/Adam/dense_16/bias/m/Assign%^training/Adam/dense_16/bias/v/Assign'^training/Adam/dense_16/kernel/m/Assign'^training/Adam/dense_16/kernel/v/Assign%^training/Adam/dense_17/bias/m/Assign%^training/Adam/dense_17/bias/v/Assign'^training/Adam/dense_17/kernel/m/Assign'^training/Adam/dense_17/kernel/v/Assign%^training/Adam/dense_18/bias/m/Assign%^training/Adam/dense_18/bias/v/Assign'^training/Adam/dense_18/kernel/m/Assign'^training/Adam/dense_18/kernel/v/Assign%^training/Adam/dense_19/bias/m/Assign%^training/Adam/dense_19/bias/v/Assign'^training/Adam/dense_19/kernel/m/Assign'^training/Adam/dense_19/kernel/v/Assign#^training/Adam/learning_rate/Assign
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 

StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_6914ea35d7ec489ab1f11dc10c7a7651/part*
dtype0*
_output_shapes
: 
f

StringJoin
StringJoinConst_2StringJoin/inputs_1"/device:CPU:0*
N*
_output_shapes
: 
L

num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
š
SaveV2/tensor_namesConst"/device:CPU:0*â
valueŘBŐB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
§
SaveV2/shape_and_slicesConst"/device:CPU:0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ł
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOpiter/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOp3training/Adam/dense_16/kernel/m/Read/ReadVariableOp1training/Adam/dense_16/bias/m/Read/ReadVariableOp3training/Adam/dense_17/kernel/m/Read/ReadVariableOp1training/Adam/dense_17/bias/m/Read/ReadVariableOp3training/Adam/dense_18/kernel/m/Read/ReadVariableOp1training/Adam/dense_18/bias/m/Read/ReadVariableOp3training/Adam/dense_19/kernel/m/Read/ReadVariableOp1training/Adam/dense_19/bias/m/Read/ReadVariableOp3training/Adam/dense_16/kernel/v/Read/ReadVariableOp1training/Adam/dense_16/bias/v/Read/ReadVariableOp3training/Adam/dense_17/kernel/v/Read/ReadVariableOp1training/Adam/dense_17/bias/v/Read/ReadVariableOp3training/Adam/dense_18/kernel/v/Read/ReadVariableOp1training/Adam/dense_18/bias/v/Read/ReadVariableOp3training/Adam/dense_19/kernel/v/Read/ReadVariableOp1training/Adam/dense_19/bias/v/Read/ReadVariableOp"/device:CPU:0*+
dtypes!
2	
h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
|
ShardedFilename_1ShardedFilename
StringJoinShardedFilename_1/shard
num_shards"/device:CPU:0*
_output_shapes
: 

SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0
q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

SaveV2_1SaveV2ShardedFilename_1SaveV2_1/tensor_namesSaveV2_1/shape_and_slicesConst_1"/device:CPU:0*
dtypes
2
Ł
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilenameShardedFilename_1^SaveV2	^SaveV2_1"/device:CPU:0*
N*
_output_shapes
:*
T0
h
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixesConst_2"/device:CPU:0
e
Identity_29IdentityConst_2^MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
W
div_no_nan/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_30Identity
div_no_nan*
_output_shapes
: *
T0
x
metric_op_wrapperConst"^metrics/acc/AssignAddVariableOp_1*
valueB *
dtype0*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0
Ż
save/SaveV2/tensor_namesConst*â
valueŘBŐB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ž
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!dense_16/bias/Read/ReadVariableOp1training/Adam/dense_16/bias/m/Read/ReadVariableOp1training/Adam/dense_16/bias/v/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp3training/Adam/dense_16/kernel/m/Read/ReadVariableOp3training/Adam/dense_16/kernel/v/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp1training/Adam/dense_17/bias/m/Read/ReadVariableOp1training/Adam/dense_17/bias/v/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp3training/Adam/dense_17/kernel/m/Read/ReadVariableOp3training/Adam/dense_17/kernel/v/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp1training/Adam/dense_18/bias/m/Read/ReadVariableOp1training/Adam/dense_18/bias/v/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp3training/Adam/dense_18/kernel/m/Read/ReadVariableOp3training/Adam/dense_18/kernel/v/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp1training/Adam/dense_19/bias/m/Read/ReadVariableOp1training/Adam/dense_19/bias/v/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp3training/Adam/dense_19/kernel/m/Read/ReadVariableOp3training/Adam/dense_19/kernel/v/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOpiter/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOp*+
dtypes!
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
_output_shapes
: *
T0
Á
save/RestoreV2/tensor_namesConst"/device:CPU:0*â
valueŘBŐB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
Ż
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ź
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	
L
save/IdentityIdentitysave/RestoreV2*
_output_shapes
:*
T0
T
save/AssignVariableOpAssignVariableOpdense_16/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
h
save/AssignVariableOp_1AssignVariableOptraining/Adam/dense_16/bias/msave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
h
save/AssignVariableOp_2AssignVariableOptraining/Adam/dense_16/bias/vsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpdense_16/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
j
save/AssignVariableOp_4AssignVariableOptraining/Adam/dense_16/kernel/msave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
j
save/AssignVariableOp_5AssignVariableOptraining/Adam/dense_16/kernel/vsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
X
save/AssignVariableOp_6AssignVariableOpdense_17/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
_output_shapes
:*
T0
h
save/AssignVariableOp_7AssignVariableOptraining/Adam/dense_17/bias/msave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
h
save/AssignVariableOp_8AssignVariableOptraining/Adam/dense_17/bias/vsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
_output_shapes
:*
T0
Z
save/AssignVariableOp_9AssignVariableOpdense_17/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
l
save/AssignVariableOp_10AssignVariableOptraining/Adam/dense_17/kernel/msave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
l
save/AssignVariableOp_11AssignVariableOptraining/Adam/dense_17/kernel/vsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
_output_shapes
:*
T0
Z
save/AssignVariableOp_12AssignVariableOpdense_18/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
j
save/AssignVariableOp_13AssignVariableOptraining/Adam/dense_18/bias/msave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
j
save/AssignVariableOp_14AssignVariableOptraining/Adam/dense_18/bias/vsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0*
_output_shapes
:
\
save/AssignVariableOp_15AssignVariableOpdense_18/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
l
save/AssignVariableOp_16AssignVariableOptraining/Adam/dense_18/kernel/msave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
l
save/AssignVariableOp_17AssignVariableOptraining/Adam/dense_18/kernel/vsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
Z
save/AssignVariableOp_18AssignVariableOpdense_19/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
j
save/AssignVariableOp_19AssignVariableOptraining/Adam/dense_19/bias/msave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
_output_shapes
:*
T0
j
save/AssignVariableOp_20AssignVariableOptraining/Adam/dense_19/bias/vsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0*
_output_shapes
:
\
save/AssignVariableOp_21AssignVariableOpdense_19/kernelsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:22*
_output_shapes
:*
T0
l
save/AssignVariableOp_22AssignVariableOptraining/Adam/dense_19/kernel/msave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
_output_shapes
:*
T0
l
save/AssignVariableOp_23AssignVariableOptraining/Adam/dense_19/kernel/vsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:24*
_output_shapes
:*
T0
a
save/AssignVariableOp_24AssignVariableOptraining/Adam/beta_1save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:25*
T0*
_output_shapes
:
a
save/AssignVariableOp_25AssignVariableOptraining/Adam/beta_2save/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:26*
_output_shapes
:*
T0
`
save/AssignVariableOp_26AssignVariableOptraining/Adam/decaysave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:27*
_output_shapes
:*
T0	
Q
save/AssignVariableOp_27AssignVariableOpitersave/Identity_27*
dtype0	
R
save/Identity_28Identitysave/RestoreV2:28*
T0*
_output_shapes
:
h
save/AssignVariableOp_28AssignVariableOptraining/Adam/learning_ratesave/Identity_28*
dtype0

save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
,
init_1NoOp^count/Assign^total/Assign"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"Ň$
	variablesÄ$Á$

dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08

dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08

dense_18/kernel:0dense_18/kernel/Assign%dense_18/kernel/Read/ReadVariableOp:0(2,dense_18/kernel/Initializer/random_uniform:08
s
dense_18/bias:0dense_18/bias/Assign#dense_18/bias/Read/ReadVariableOp:0(2!dense_18/bias/Initializer/zeros:08

dense_19/kernel:0dense_19/kernel/Assign%dense_19/kernel/Read/ReadVariableOp:0(2,dense_19/kernel/Initializer/random_uniform:08
s
dense_19/bias:0dense_19/bias/Assign#dense_19/bias/Read/ReadVariableOp:0(2!dense_19/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H

training/Adam/beta_1:0training/Adam/beta_1/Assign*training/Adam/beta_1/Read/ReadVariableOp:0(20training/Adam/beta_1/Initializer/initial_value:0H

training/Adam/beta_2:0training/Adam/beta_2/Assign*training/Adam/beta_2/Read/ReadVariableOp:0(20training/Adam/beta_2/Initializer/initial_value:0H

training/Adam/decay:0training/Adam/decay/Assign)training/Adam/decay/Read/ReadVariableOp:0(2/training/Adam/decay/Initializer/initial_value:0H
ł
training/Adam/learning_rate:0"training/Adam/learning_rate/Assign1training/Adam/learning_rate/Read/ReadVariableOp:0(27training/Adam/learning_rate/Initializer/initial_value:0H
š
!training/Adam/dense_16/kernel/m:0&training/Adam/dense_16/kernel/m/Assign5training/Adam/dense_16/kernel/m/Read/ReadVariableOp:0(23training/Adam/dense_16/kernel/m/Initializer/zeros:0
ą
training/Adam/dense_16/bias/m:0$training/Adam/dense_16/bias/m/Assign3training/Adam/dense_16/bias/m/Read/ReadVariableOp:0(21training/Adam/dense_16/bias/m/Initializer/zeros:0
š
!training/Adam/dense_17/kernel/m:0&training/Adam/dense_17/kernel/m/Assign5training/Adam/dense_17/kernel/m/Read/ReadVariableOp:0(23training/Adam/dense_17/kernel/m/Initializer/zeros:0
ą
training/Adam/dense_17/bias/m:0$training/Adam/dense_17/bias/m/Assign3training/Adam/dense_17/bias/m/Read/ReadVariableOp:0(21training/Adam/dense_17/bias/m/Initializer/zeros:0
š
!training/Adam/dense_18/kernel/m:0&training/Adam/dense_18/kernel/m/Assign5training/Adam/dense_18/kernel/m/Read/ReadVariableOp:0(23training/Adam/dense_18/kernel/m/Initializer/zeros:0
ą
training/Adam/dense_18/bias/m:0$training/Adam/dense_18/bias/m/Assign3training/Adam/dense_18/bias/m/Read/ReadVariableOp:0(21training/Adam/dense_18/bias/m/Initializer/zeros:0
š
!training/Adam/dense_19/kernel/m:0&training/Adam/dense_19/kernel/m/Assign5training/Adam/dense_19/kernel/m/Read/ReadVariableOp:0(23training/Adam/dense_19/kernel/m/Initializer/zeros:0
ą
training/Adam/dense_19/bias/m:0$training/Adam/dense_19/bias/m/Assign3training/Adam/dense_19/bias/m/Read/ReadVariableOp:0(21training/Adam/dense_19/bias/m/Initializer/zeros:0
š
!training/Adam/dense_16/kernel/v:0&training/Adam/dense_16/kernel/v/Assign5training/Adam/dense_16/kernel/v/Read/ReadVariableOp:0(23training/Adam/dense_16/kernel/v/Initializer/zeros:0
ą
training/Adam/dense_16/bias/v:0$training/Adam/dense_16/bias/v/Assign3training/Adam/dense_16/bias/v/Read/ReadVariableOp:0(21training/Adam/dense_16/bias/v/Initializer/zeros:0
š
!training/Adam/dense_17/kernel/v:0&training/Adam/dense_17/kernel/v/Assign5training/Adam/dense_17/kernel/v/Read/ReadVariableOp:0(23training/Adam/dense_17/kernel/v/Initializer/zeros:0
ą
training/Adam/dense_17/bias/v:0$training/Adam/dense_17/bias/v/Assign3training/Adam/dense_17/bias/v/Read/ReadVariableOp:0(21training/Adam/dense_17/bias/v/Initializer/zeros:0
š
!training/Adam/dense_18/kernel/v:0&training/Adam/dense_18/kernel/v/Assign5training/Adam/dense_18/kernel/v/Read/ReadVariableOp:0(23training/Adam/dense_18/kernel/v/Initializer/zeros:0
ą
training/Adam/dense_18/bias/v:0$training/Adam/dense_18/bias/v/Assign3training/Adam/dense_18/bias/v/Read/ReadVariableOp:0(21training/Adam/dense_18/bias/v/Initializer/zeros:0
š
!training/Adam/dense_19/kernel/v:0&training/Adam/dense_19/kernel/v/Assign5training/Adam/dense_19/kernel/v/Read/ReadVariableOp:0(23training/Adam/dense_19/kernel/v/Initializer/zeros:0
ą
training/Adam/dense_19/bias/v:0$training/Adam/dense_19/bias/v/Assign3training/Adam/dense_19/bias/v/Read/ReadVariableOp:0(21training/Adam/dense_19/bias/v/Initializer/zeros:0"
trainable_variablesóđ

dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08

dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08

dense_18/kernel:0dense_18/kernel/Assign%dense_18/kernel/Read/ReadVariableOp:0(2,dense_18/kernel/Initializer/random_uniform:08
s
dense_18/bias:0dense_18/bias/Assign#dense_18/bias/Read/ReadVariableOp:0(2!dense_18/bias/Initializer/zeros:08

dense_19/kernel:0dense_19/kernel/Assign%dense_19/kernel/Read/ReadVariableOp:0(2,dense_19/kernel/Initializer/random_uniform:08
s
dense_19/bias:0dense_19/bias/Assign#dense_19/bias/Read/ReadVariableOp:0(2!dense_19/bias/Initializer/zeros:08"Ĺ
local_variablesąŽ
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H*ę
trainŕ
D
dense_19_target1
dense_19_target:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
;
flatten_4_input(
flatten_4_input:0˙˙˙˙˙˙˙˙˙*4
metrics/acc/update_op
metric_op_wrapper:0 (
metrics/acc/value
Identity_30:0 
loss

loss/mul:0 A
predictions/dense_19)
dense_19/Softmax:0˙˙˙˙˙˙˙˙˙tensorflow/supervised/training*@
__saved_model_init_op'%
__saved_model_init_op
init_1*Q
__saved_model_train_op75
__saved_model_train_op
training_1/group_depsĄ
Ąő
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"eval*1.15.02v1.15.0-rc3-22-g590d6ee8Ýń
r
flatten_4_inputPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
shape:˙˙˙˙˙˙˙˙˙*
N
flatten_4/ShapeShapeflatten_4_input*
T0*
_output_shapes
:
g
flatten_4/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
i
flatten_4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
flatten_4/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ß
flatten_4/strided_sliceStridedSliceflatten_4/Shapeflatten_4/strided_slice/stackflatten_4/strided_slice/stack_1flatten_4/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
d
flatten_4/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

flatten_4/Reshape/shapePackflatten_4/strided_sliceflatten_4/Reshape/shape/1*
_output_shapes
:*
T0*
N
x
flatten_4/ReshapeReshapeflatten_4_inputflatten_4/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Ľ
0dense_16/kernel/Initializer/random_uniform/shapeConst*
valueB"*     *"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
:

.dense_16/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *˝rŁ˝*"
_class
loc:@dense_16/kernel

.dense_16/kernel/Initializer/random_uniform/maxConst*
valueB
 *˝rŁ=*"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
: 
Ö
8dense_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_16/kernel/Initializer/random_uniform/shape*
_output_shapes
:	**
T0*"
_class
loc:@dense_16/kernel*
dtype0
Ú
.dense_16/kernel/Initializer/random_uniform/subSub.dense_16/kernel/Initializer/random_uniform/max.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
: 
í
.dense_16/kernel/Initializer/random_uniform/mulMul8dense_16/kernel/Initializer/random_uniform/RandomUniform.dense_16/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
:	*
ß
*dense_16/kernel/Initializer/random_uniformAdd.dense_16/kernel/Initializer/random_uniform/mul.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
:	*

dense_16/kernelVarHandleOp*
_output_shapes
: *
shape:	** 
shared_namedense_16/kernel*"
_class
loc:@dense_16/kernel*
dtype0
o
0dense_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/kernel*
_output_shapes
: 
t
dense_16/kernel/AssignAssignVariableOpdense_16/kernel*dense_16/kernel/Initializer/random_uniform*
dtype0
t
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0*
_output_shapes
:	*

dense_16/bias/Initializer/zerosConst*
_output_shapes	
:*
valueB*    * 
_class
loc:@dense_16/bias*
dtype0

dense_16/biasVarHandleOp* 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_16/bias
k
.dense_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/bias*
_output_shapes
: 
e
dense_16/bias/AssignAssignVariableOpdense_16/biasdense_16/bias/Initializer/zeros*
dtype0
l
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:
o
dense_16/MatMul/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0*
_output_shapes
:	*

dense_16/MatMulMatMulflatten_4/Reshapedense_16/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
j
dense_16/BiasAdd/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:

dense_16/BiasAddBiasAdddense_16/MatMuldense_16/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
dense_16/ReluReludense_16/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
dropout_12/IdentityIdentitydense_16/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_17/kernel/Initializer/random_uniform/shapeConst*
valueB"    *"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
:

.dense_17/kernel/Initializer/random_uniform/minConst*
valueB
 *["˝*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
: 

.dense_17/kernel/Initializer/random_uniform/maxConst*
valueB
 *["=*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
: 
×
8dense_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_17/kernel/Initializer/random_uniform/shape*"
_class
loc:@dense_17/kernel*
dtype0* 
_output_shapes
:
*
T0
Ú
.dense_17/kernel/Initializer/random_uniform/subSub.dense_17/kernel/Initializer/random_uniform/max.dense_17/kernel/Initializer/random_uniform/min*"
_class
loc:@dense_17/kernel*
_output_shapes
: *
T0
î
.dense_17/kernel/Initializer/random_uniform/mulMul8dense_17/kernel/Initializer/random_uniform/RandomUniform.dense_17/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_17/kernel* 
_output_shapes
:

ŕ
*dense_17/kernel/Initializer/random_uniformAdd.dense_17/kernel/Initializer/random_uniform/mul.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel* 
_output_shapes
:

 
dense_17/kernelVarHandleOp* 
shared_namedense_17/kernel*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
: *
shape:

o
0dense_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/kernel*
_output_shapes
: 
t
dense_17/kernel/AssignAssignVariableOpdense_17/kernel*dense_17/kernel/Initializer/random_uniform*
dtype0
u
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0* 
_output_shapes
:


dense_17/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_17/bias*
dtype0*
_output_shapes	
:

dense_17/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_17/bias* 
_class
loc:@dense_17/bias
k
.dense_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/bias*
_output_shapes
: 
e
dense_17/bias/AssignAssignVariableOpdense_17/biasdense_17/bias/Initializer/zeros*
dtype0
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes	
:
p
dense_17/MatMul/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0* 
_output_shapes
:


dense_17/MatMulMatMuldropout_12/Identitydense_17/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
dense_17/BiasAdd/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes	
:

dense_17/BiasAddBiasAdddense_17/MatMuldense_17/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
dense_17/ReluReludense_17/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
a
dropout_13/IdentityIdentitydense_17/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_18/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"  Č   *"
_class
loc:@dense_18/kernel

.dense_18/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *ÍĚĚ˝*"
_class
loc:@dense_18/kernel*
dtype0

.dense_18/kernel/Initializer/random_uniform/maxConst*
valueB
 *ÍĚĚ=*"
_class
loc:@dense_18/kernel*
dtype0*
_output_shapes
: 
×
8dense_18/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_18/kernel/Initializer/random_uniform/shape*"
_class
loc:@dense_18/kernel*
dtype0* 
_output_shapes
:
Č*
T0
Ú
.dense_18/kernel/Initializer/random_uniform/subSub.dense_18/kernel/Initializer/random_uniform/max.dense_18/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_18/kernel*
_output_shapes
: 
î
.dense_18/kernel/Initializer/random_uniform/mulMul8dense_18/kernel/Initializer/random_uniform/RandomUniform.dense_18/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
Č*
T0*"
_class
loc:@dense_18/kernel
ŕ
*dense_18/kernel/Initializer/random_uniformAdd.dense_18/kernel/Initializer/random_uniform/mul.dense_18/kernel/Initializer/random_uniform/min*"
_class
loc:@dense_18/kernel* 
_output_shapes
:
Č*
T0
 
dense_18/kernelVarHandleOp*
shape:
Č* 
shared_namedense_18/kernel*"
_class
loc:@dense_18/kernel*
dtype0*
_output_shapes
: 
o
0dense_18/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_18/kernel*
_output_shapes
: 
t
dense_18/kernel/AssignAssignVariableOpdense_18/kernel*dense_18/kernel/Initializer/random_uniform*
dtype0
u
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
dtype0* 
_output_shapes
:
Č

dense_18/bias/Initializer/zerosConst*
valueBČ*    * 
_class
loc:@dense_18/bias*
dtype0*
_output_shapes	
:Č

dense_18/biasVarHandleOp*
shared_namedense_18/bias* 
_class
loc:@dense_18/bias*
dtype0*
_output_shapes
: *
shape:Č
k
.dense_18/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_18/bias*
_output_shapes
: 
e
dense_18/bias/AssignAssignVariableOpdense_18/biasdense_18/bias/Initializer/zeros*
dtype0
l
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
dtype0*
_output_shapes	
:Č
p
dense_18/MatMul/ReadVariableOpReadVariableOpdense_18/kernel*
dtype0* 
_output_shapes
:
Č

dense_18/MatMulMatMuldropout_13/Identitydense_18/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
j
dense_18/BiasAdd/ReadVariableOpReadVariableOpdense_18/bias*
dtype0*
_output_shapes	
:Č

dense_18/BiasAddBiasAdddense_18/MatMuldense_18/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
Z
dense_18/TanhTanhdense_18/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
a
dropout_14/IdentityIdentitydense_18/Tanh*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č*
T0
Ľ
0dense_19/kernel/Initializer/random_uniform/shapeConst*
valueB"Č      *"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
:

.dense_19/kernel/Initializer/random_uniform/minConst*
valueB
 *b'ž*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: 

.dense_19/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *b'>*"
_class
loc:@dense_19/kernel
Ö
8dense_19/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_19/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	Č*
T0*"
_class
loc:@dense_19/kernel
Ú
.dense_19/kernel/Initializer/random_uniform/subSub.dense_19/kernel/Initializer/random_uniform/max.dense_19/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes
: 
í
.dense_19/kernel/Initializer/random_uniform/mulMul8dense_19/kernel/Initializer/random_uniform/RandomUniform.dense_19/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes
:	Č
ß
*dense_19/kernel/Initializer/random_uniformAdd.dense_19/kernel/Initializer/random_uniform/mul.dense_19/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes
:	Č

dense_19/kernelVarHandleOp* 
shared_namedense_19/kernel*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: *
shape:	Č
o
0dense_19/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_19/kernel*
_output_shapes
: 
t
dense_19/kernel/AssignAssignVariableOpdense_19/kernel*dense_19/kernel/Initializer/random_uniform*
dtype0
t
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
dtype0*
_output_shapes
:	Č

dense_19/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_19/bias*
dtype0*
_output_shapes
:

dense_19/biasVarHandleOp* 
_class
loc:@dense_19/bias*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_19/bias
k
.dense_19/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_19/bias*
_output_shapes
: 
e
dense_19/bias/AssignAssignVariableOpdense_19/biasdense_19/bias/Initializer/zeros*
dtype0
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
dtype0*
_output_shapes
:
o
dense_19/MatMul/ReadVariableOpReadVariableOpdense_19/kernel*
dtype0*
_output_shapes
:	Č

dense_19/MatMulMatMuldropout_14/Identitydense_19/MatMul/ReadVariableOp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
i
dense_19/BiasAdd/ReadVariableOpReadVariableOpdense_19/bias*
dtype0*
_output_shapes
:

dense_19/BiasAddBiasAdddense_19/MatMuldense_19/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
dense_19/SoftmaxSoftmaxdense_19/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

dense_19_targetPlaceholder*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
x
totalVarHandleOp*
_class

loc:@total*
dtype0*
_output_shapes
: *
shape: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
x
countVarHandleOp*
shared_namecount*
_class

loc:@count*
dtype0*
_output_shapes
: *
shape: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: 
}
metrics/acc/SqueezeSqueezedense_19_target*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
z
metrics/acc/ArgMaxArgMaxdense_19/Softmaxmetrics/acc/ArgMax/dimension*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
metrics/acc/CastCastmetrics/acc/ArgMax*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
o
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
^
metrics/acc/SumSummetrics/acc/Cast_1metrics/acc/Const*
T0*
_output_shapes
: 
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0

metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
M
metrics/acc/SizeSizemetrics/acc/Cast_1*
_output_shapes
: *
T0
\
metrics/acc/Cast_2Castmetrics/acc/Size*
_output_shapes
: *

DstT0*

SrcT0

!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_2 ^metrics/acc/AssignAddVariableOp*
dtype0
 
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
T0*
_output_shapes
: 
z
loss/dense_19_loss/CastCastdense_19_target*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0	*

SrcT0
X
loss/dense_19_loss/ShapeShapedense_19/BiasAdd*
_output_shapes
:*
T0
s
 loss/dense_19_loss/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

loss/dense_19_loss/ReshapeReshapeloss/dense_19_loss/Cast loss/dense_19_loss/Reshape/shape*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
&loss/dense_19_loss/strided_slice/stackConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
r
(loss/dense_19_loss/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
r
(loss/dense_19_loss/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

 loss/dense_19_loss/strided_sliceStridedSliceloss/dense_19_loss/Shape&loss/dense_19_loss/strided_slice/stack(loss/dense_19_loss/strided_slice/stack_1(loss/dense_19_loss/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
o
$loss/dense_19_loss/Reshape_1/shape/0Const*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
 
"loss/dense_19_loss/Reshape_1/shapePack$loss/dense_19_loss/Reshape_1/shape/0 loss/dense_19_loss/strided_slice*
_output_shapes
:*
T0*
N

loss/dense_19_loss/Reshape_1Reshapedense_19/BiasAdd"loss/dense_19_loss/Reshape_1/shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

<loss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_19_loss/Reshape*
T0	*
_output_shapes
:

Zloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_19_loss/Reshape_1loss/dense_19_loss/Reshape*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
l
'loss/dense_19_loss/weighted_loss/Cast/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Uloss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
valueB *
dtype0

Tloss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Ţ
Tloss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeZloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:

Sloss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
k
closs/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
˛
Bloss/dense_19_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeZloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsd^loss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
í
Bloss/dense_19_loss/weighted_loss/broadcast_weights/ones_like/ConstConstd^loss/dense_19_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ú
<loss/dense_19_loss/weighted_loss/broadcast_weights/ones_likeFillBloss/dense_19_loss/weighted_loss/broadcast_weights/ones_like/ShapeBloss/dense_19_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
2loss/dense_19_loss/weighted_loss/broadcast_weightsMul'loss/dense_19_loss/weighted_loss/Cast/x<loss/dense_19_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
$loss/dense_19_loss/weighted_loss/MulMulZloss/dense_19_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits2loss/dense_19_loss/weighted_loss/broadcast_weights*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
b
loss/dense_19_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
loss/dense_19_loss/SumSum$loss/dense_19_loss/weighted_loss/Mulloss/dense_19_loss/Const*
T0*
_output_shapes
: 
n
loss/dense_19_loss/num_elementsSize$loss/dense_19_loss/weighted_loss/Mul*
_output_shapes
: *
T0
}
$loss/dense_19_loss/num_elements/CastCastloss/dense_19_loss/num_elements*

SrcT0*
_output_shapes
: *

DstT0
]
loss/dense_19_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
t
loss/dense_19_loss/Sum_1Sumloss/dense_19_loss/Sumloss/dense_19_loss/Const_1*
T0*
_output_shapes
: 

loss/dense_19_loss/valueDivNoNanloss/dense_19_loss/Sum_1$loss/dense_19_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_19_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
value	B	 R *
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
u
iterVarHandleOp*
dtype0	*
_output_shapes
: *
shape: *
shared_nameiter*
_class
	loc:@iter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
(
evaluation/group_depsNoOp	^loss/mul
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ň
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*ř
valueîBë	B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0

RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
ł
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2		*8
_output_shapes&
$:::::::::
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
J
AssignVariableOpAssignVariableOpdense_16/biasIdentity*
dtype0
F

Identity_1IdentityRestoreV2:1*
_output_shapes
:*
T0
P
AssignVariableOp_1AssignVariableOpdense_16/kernel
Identity_1*
dtype0
F

Identity_2IdentityRestoreV2:2*
T0*
_output_shapes
:
N
AssignVariableOp_2AssignVariableOpdense_17/bias
Identity_2*
dtype0
F

Identity_3IdentityRestoreV2:3*
_output_shapes
:*
T0
P
AssignVariableOp_3AssignVariableOpdense_17/kernel
Identity_3*
dtype0
F

Identity_4IdentityRestoreV2:4*
_output_shapes
:*
T0
N
AssignVariableOp_4AssignVariableOpdense_18/bias
Identity_4*
dtype0
F

Identity_5IdentityRestoreV2:5*
T0*
_output_shapes
:
P
AssignVariableOp_5AssignVariableOpdense_18/kernel
Identity_5*
dtype0
F

Identity_6IdentityRestoreV2:6*
_output_shapes
:*
T0
N
AssignVariableOp_6AssignVariableOpdense_19/bias
Identity_6*
dtype0
F

Identity_7IdentityRestoreV2:7*
T0*
_output_shapes
:
P
AssignVariableOp_7AssignVariableOpdense_19/kernel
Identity_7*
dtype0
F

Identity_8IdentityRestoreV2:8*
_output_shapes
:*
T0	
E
AssignVariableOp_8AssignVariableOpiter
Identity_8*
dtype0	
G
VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
S
VarIsInitializedOp_1VarIsInitializedOpdense_16/kernel*
_output_shapes
: 
S
VarIsInitializedOp_2VarIsInitializedOpdense_17/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpdense_17/bias*
_output_shapes
: 
S
VarIsInitializedOp_4VarIsInitializedOpdense_18/kernel*
_output_shapes
: 
S
VarIsInitializedOp_5VarIsInitializedOpdense_19/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_6VarIsInitializedOpdense_19/bias*
_output_shapes
: 
I
VarIsInitializedOp_7VarIsInitializedOpcount*
_output_shapes
: 
Q
VarIsInitializedOp_8VarIsInitializedOpdense_18/bias*
_output_shapes
: 
H
VarIsInitializedOp_9VarIsInitializedOpiter*
_output_shapes
: 
R
VarIsInitializedOp_10VarIsInitializedOpdense_16/bias*
_output_shapes
: 
ř
initNoOp^count/Assign^dense_16/bias/Assign^dense_16/kernel/Assign^dense_17/bias/Assign^dense_17/kernel/Assign^dense_18/bias/Assign^dense_18/kernel/Assign^dense_19/bias/Assign^dense_19/kernel/Assign^iter/Assign^total/Assign
W
div_no_nan/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
C

Identity_9Identity
div_no_nan*
T0*
_output_shapes
: 
x
metric_op_wrapperConst"^metrics/acc/AssignAddVariableOp_1*
valueB *
dtype0*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
Ĺ
save/SaveV2/tensor_namesConst*
_output_shapes
:	*ř
valueîBë	B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:	*%
valueB	B B B B B B B B B 
Ź
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!dense_16/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOpiter/Read/ReadVariableOp*
dtypes
2		
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
×
save/RestoreV2/tensor_namesConst"/device:CPU:0*ř
valueîBë	B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:	

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
Ç
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2		*8
_output_shapes&
$:::::::::
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpdense_16/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
_output_shapes
:*
T0
Z
save/AssignVariableOp_1AssignVariableOpdense_16/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
X
save/AssignVariableOp_2AssignVariableOpdense_17/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
_output_shapes
:*
T0
Z
save/AssignVariableOp_3AssignVariableOpdense_17/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
X
save/AssignVariableOp_4AssignVariableOpdense_18/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Z
save/AssignVariableOp_5AssignVariableOpdense_18/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
X
save/AssignVariableOp_6AssignVariableOpdense_19/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
_output_shapes
:*
T0
Z
save/AssignVariableOp_7AssignVariableOpdense_19/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0	*
_output_shapes
:
O
save/AssignVariableOp_8AssignVariableOpitersave/Identity_8*
dtype0	

save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8
,
init_1NoOp^count/Assign^total/Assign"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"Ň
	variablesÄÁ

dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08

dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08

dense_18/kernel:0dense_18/kernel/Assign%dense_18/kernel/Read/ReadVariableOp:0(2,dense_18/kernel/Initializer/random_uniform:08
s
dense_18/bias:0dense_18/bias/Assign#dense_18/bias/Read/ReadVariableOp:0(2!dense_18/bias/Initializer/zeros:08

dense_19/kernel:0dense_19/kernel/Assign%dense_19/kernel/Read/ReadVariableOp:0(2,dense_19/kernel/Initializer/random_uniform:08
s
dense_19/bias:0dense_19/bias/Assign#dense_19/bias/Read/ReadVariableOp:0(2!dense_19/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"
trainable_variablesóđ

dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08

dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08

dense_18/kernel:0dense_18/kernel/Assign%dense_18/kernel/Read/ReadVariableOp:0(2,dense_18/kernel/Initializer/random_uniform:08
s
dense_18/bias:0dense_18/bias/Assign#dense_18/bias/Read/ReadVariableOp:0(2!dense_18/bias/Initializer/zeros:08

dense_19/kernel:0dense_19/kernel/Assign%dense_19/kernel/Read/ReadVariableOp:0(2,dense_19/kernel/Initializer/random_uniform:08
s
dense_19/bias:0dense_19/bias/Assign#dense_19/bias/Read/ReadVariableOp:0(2!dense_19/bias/Initializer/zeros:08"Ĺ
local_variablesąŽ
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H*@
__saved_model_init_op'%
__saved_model_init_op
init_1*ä
evalŰ
;
flatten_4_input(
flatten_4_input:0˙˙˙˙˙˙˙˙˙*
D
dense_19_target1
dense_19_target:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙A
predictions/dense_19)
dense_19/Softmax:0˙˙˙˙˙˙˙˙˙4
metrics/acc/update_op
metric_op_wrapper:0 '
metrics/acc/value
Identity_9:0 
loss

loss/mul:0 tensorflow/supervised/evalęĹ
Łö
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.15.02v1.15.0-rc3-22-g590d6ee8˙˘
r
flatten_4_inputPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙**
shape:˙˙˙˙˙˙˙˙˙**
dtype0
N
flatten_4/ShapeShapeflatten_4_input*
_output_shapes
:*
T0
g
flatten_4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
flatten_4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
flatten_4/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ß
flatten_4/strided_sliceStridedSliceflatten_4/Shapeflatten_4/strided_slice/stackflatten_4/strided_slice/stack_1flatten_4/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
d
flatten_4/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

flatten_4/Reshape/shapePackflatten_4/strided_sliceflatten_4/Reshape/shape/1*
T0*
N*
_output_shapes
:
x
flatten_4/ReshapeReshapeflatten_4_inputflatten_4/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Ľ
0dense_16/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"*     *"
_class
loc:@dense_16/kernel

.dense_16/kernel/Initializer/random_uniform/minConst*
valueB
 *˝rŁ˝*"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
: 

.dense_16/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *˝rŁ=*"
_class
loc:@dense_16/kernel*
dtype0
Ö
8dense_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_16/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
:	*
Ú
.dense_16/kernel/Initializer/random_uniform/subSub.dense_16/kernel/Initializer/random_uniform/max.dense_16/kernel/Initializer/random_uniform/min*"
_class
loc:@dense_16/kernel*
_output_shapes
: *
T0
í
.dense_16/kernel/Initializer/random_uniform/mulMul8dense_16/kernel/Initializer/random_uniform/RandomUniform.dense_16/kernel/Initializer/random_uniform/sub*
_output_shapes
:	**
T0*"
_class
loc:@dense_16/kernel
ß
*dense_16/kernel/Initializer/random_uniformAdd.dense_16/kernel/Initializer/random_uniform/mul.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
:	*

dense_16/kernelVarHandleOp*
shape:	** 
shared_namedense_16/kernel*"
_class
loc:@dense_16/kernel*
dtype0*
_output_shapes
: 
o
0dense_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/kernel*
_output_shapes
: 
t
dense_16/kernel/AssignAssignVariableOpdense_16/kernel*dense_16/kernel/Initializer/random_uniform*
dtype0
t
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0*
_output_shapes
:	*

dense_16/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes	
:

dense_16/biasVarHandleOp*
shape:*
shared_namedense_16/bias* 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes
: 
k
.dense_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/bias*
_output_shapes
: 
e
dense_16/bias/AssignAssignVariableOpdense_16/biasdense_16/bias/Initializer/zeros*
dtype0
l
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:
o
dense_16/MatMul/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0*
_output_shapes
:	*

dense_16/MatMulMatMulflatten_4/Reshapedense_16/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
dense_16/BiasAdd/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:

dense_16/BiasAddBiasAdddense_16/MatMuldense_16/BiasAdd/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Z
dense_16/ReluReludense_16/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
dropout_12/IdentityIdentitydense_16/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ľ
0dense_17/kernel/Initializer/random_uniform/shapeConst*
valueB"    *"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
:

.dense_17/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *["˝*"
_class
loc:@dense_17/kernel*
dtype0

.dense_17/kernel/Initializer/random_uniform/maxConst*
valueB
 *["=*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
: 
×
8dense_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_17/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_17/kernel*
dtype0* 
_output_shapes
:

Ú
.dense_17/kernel/Initializer/random_uniform/subSub.dense_17/kernel/Initializer/random_uniform/max.dense_17/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@dense_17/kernel
î
.dense_17/kernel/Initializer/random_uniform/mulMul8dense_17/kernel/Initializer/random_uniform/RandomUniform.dense_17/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*
T0*"
_class
loc:@dense_17/kernel
ŕ
*dense_17/kernel/Initializer/random_uniformAdd.dense_17/kernel/Initializer/random_uniform/mul.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel* 
_output_shapes
:

 
dense_17/kernelVarHandleOp*
_output_shapes
: *
shape:
* 
shared_namedense_17/kernel*"
_class
loc:@dense_17/kernel*
dtype0
o
0dense_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/kernel*
_output_shapes
: 
t
dense_17/kernel/AssignAssignVariableOpdense_17/kernel*dense_17/kernel/Initializer/random_uniform*
dtype0
u
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0* 
_output_shapes
:


dense_17/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_17/bias*
dtype0*
_output_shapes	
:

dense_17/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_17/bias* 
_class
loc:@dense_17/bias
k
.dense_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/bias*
_output_shapes
: 
e
dense_17/bias/AssignAssignVariableOpdense_17/biasdense_17/bias/Initializer/zeros*
dtype0
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes	
:
p
dense_17/MatMul/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0* 
_output_shapes
:


dense_17/MatMulMatMuldropout_12/Identitydense_17/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
dense_17/BiasAdd/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes	
:

dense_17/BiasAddBiasAdddense_17/MatMuldense_17/BiasAdd/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Z
dense_17/ReluReludense_17/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
dropout_13/IdentityIdentitydense_17/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_18/kernel/Initializer/random_uniform/shapeConst*
valueB"  Č   *"
_class
loc:@dense_18/kernel*
dtype0*
_output_shapes
:

.dense_18/kernel/Initializer/random_uniform/minConst*
valueB
 *ÍĚĚ˝*"
_class
loc:@dense_18/kernel*
dtype0*
_output_shapes
: 

.dense_18/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ÍĚĚ=*"
_class
loc:@dense_18/kernel*
dtype0
×
8dense_18/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_18/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_18/kernel*
dtype0* 
_output_shapes
:
Č
Ú
.dense_18/kernel/Initializer/random_uniform/subSub.dense_18/kernel/Initializer/random_uniform/max.dense_18/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_18/kernel*
_output_shapes
: 
î
.dense_18/kernel/Initializer/random_uniform/mulMul8dense_18/kernel/Initializer/random_uniform/RandomUniform.dense_18/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_18/kernel* 
_output_shapes
:
Č
ŕ
*dense_18/kernel/Initializer/random_uniformAdd.dense_18/kernel/Initializer/random_uniform/mul.dense_18/kernel/Initializer/random_uniform/min*"
_class
loc:@dense_18/kernel* 
_output_shapes
:
Č*
T0
 
dense_18/kernelVarHandleOp*"
_class
loc:@dense_18/kernel*
dtype0*
_output_shapes
: *
shape:
Č* 
shared_namedense_18/kernel
o
0dense_18/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_18/kernel*
_output_shapes
: 
t
dense_18/kernel/AssignAssignVariableOpdense_18/kernel*dense_18/kernel/Initializer/random_uniform*
dtype0
u
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
dtype0* 
_output_shapes
:
Č

dense_18/bias/Initializer/zerosConst*
_output_shapes	
:Č*
valueBČ*    * 
_class
loc:@dense_18/bias*
dtype0

dense_18/biasVarHandleOp* 
_class
loc:@dense_18/bias*
dtype0*
_output_shapes
: *
shape:Č*
shared_namedense_18/bias
k
.dense_18/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_18/bias*
_output_shapes
: 
e
dense_18/bias/AssignAssignVariableOpdense_18/biasdense_18/bias/Initializer/zeros*
dtype0
l
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes	
:Č*
dtype0
p
dense_18/MatMul/ReadVariableOpReadVariableOpdense_18/kernel*
dtype0* 
_output_shapes
:
Č

dense_18/MatMulMatMuldropout_13/Identitydense_18/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č*
T0
j
dense_18/BiasAdd/ReadVariableOpReadVariableOpdense_18/bias*
dtype0*
_output_shapes	
:Č

dense_18/BiasAddBiasAdddense_18/MatMuldense_18/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
Z
dense_18/TanhTanhdense_18/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
a
dropout_14/IdentityIdentitydense_18/Tanh*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
Ľ
0dense_19/kernel/Initializer/random_uniform/shapeConst*
valueB"Č      *"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
:

.dense_19/kernel/Initializer/random_uniform/minConst*
valueB
 *b'ž*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: 

.dense_19/kernel/Initializer/random_uniform/maxConst*
valueB
 *b'>*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: 
Ö
8dense_19/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_19/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	Č*
T0*"
_class
loc:@dense_19/kernel
Ú
.dense_19/kernel/Initializer/random_uniform/subSub.dense_19/kernel/Initializer/random_uniform/max.dense_19/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes
: 
í
.dense_19/kernel/Initializer/random_uniform/mulMul8dense_19/kernel/Initializer/random_uniform/RandomUniform.dense_19/kernel/Initializer/random_uniform/sub*
_output_shapes
:	Č*
T0*"
_class
loc:@dense_19/kernel
ß
*dense_19/kernel/Initializer/random_uniformAdd.dense_19/kernel/Initializer/random_uniform/mul.dense_19/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes
:	Č

dense_19/kernelVarHandleOp* 
shared_namedense_19/kernel*"
_class
loc:@dense_19/kernel*
dtype0*
_output_shapes
: *
shape:	Č
o
0dense_19/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_19/kernel*
_output_shapes
: 
t
dense_19/kernel/AssignAssignVariableOpdense_19/kernel*dense_19/kernel/Initializer/random_uniform*
dtype0
t
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
dtype0*
_output_shapes
:	Č

dense_19/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_19/bias*
dtype0*
_output_shapes
:

dense_19/biasVarHandleOp* 
_class
loc:@dense_19/bias*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_19/bias
k
.dense_19/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_19/bias*
_output_shapes
: 
e
dense_19/bias/AssignAssignVariableOpdense_19/biasdense_19/bias/Initializer/zeros*
dtype0
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
dtype0*
_output_shapes
:
o
dense_19/MatMul/ReadVariableOpReadVariableOpdense_19/kernel*
dtype0*
_output_shapes
:	Č

dense_19/MatMulMatMuldropout_14/Identitydense_19/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
dense_19/BiasAdd/ReadVariableOpReadVariableOpdense_19/bias*
dtype0*
_output_shapes
:

dense_19/BiasAddBiasAdddense_19/MatMuldense_19/BiasAdd/ReadVariableOp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
dense_19/SoftmaxSoftmaxdense_19/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
-
predict/group_depsNoOp^dense_19/Softmax
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
§
RestoreV2/tensor_namesConst"/device:CPU:0*Í
valueĂBŔB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

RestoreV2/shape_and_slicesConst"/device:CPU:0*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:
Ž
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
J
AssignVariableOpAssignVariableOpdense_16/biasIdentity*
dtype0
F

Identity_1IdentityRestoreV2:1*
_output_shapes
:*
T0
P
AssignVariableOp_1AssignVariableOpdense_16/kernel
Identity_1*
dtype0
F

Identity_2IdentityRestoreV2:2*
T0*
_output_shapes
:
N
AssignVariableOp_2AssignVariableOpdense_17/bias
Identity_2*
dtype0
F

Identity_3IdentityRestoreV2:3*
T0*
_output_shapes
:
P
AssignVariableOp_3AssignVariableOpdense_17/kernel
Identity_3*
dtype0
F

Identity_4IdentityRestoreV2:4*
_output_shapes
:*
T0
N
AssignVariableOp_4AssignVariableOpdense_18/bias
Identity_4*
dtype0
F

Identity_5IdentityRestoreV2:5*
_output_shapes
:*
T0
P
AssignVariableOp_5AssignVariableOpdense_18/kernel
Identity_5*
dtype0
F

Identity_6IdentityRestoreV2:6*
_output_shapes
:*
T0
N
AssignVariableOp_6AssignVariableOpdense_19/bias
Identity_6*
dtype0
F

Identity_7IdentityRestoreV2:7*
T0*
_output_shapes
:
P
AssignVariableOp_7AssignVariableOpdense_19/kernel
Identity_7*
dtype0
Q
VarIsInitializedOpVarIsInitializedOpdense_16/kernel*
_output_shapes
: 
S
VarIsInitializedOp_1VarIsInitializedOpdense_18/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_2VarIsInitializedOpdense_17/bias*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpdense_18/bias*
_output_shapes
: 
S
VarIsInitializedOp_4VarIsInitializedOpdense_19/kernel*
_output_shapes
: 
S
VarIsInitializedOp_5VarIsInitializedOpdense_17/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_6VarIsInitializedOpdense_19/bias*
_output_shapes
: 
Q
VarIsInitializedOp_7VarIsInitializedOpdense_16/bias*
_output_shapes
: 
Ě
initNoOp^dense_16/bias/Assign^dense_16/kernel/Assign^dense_17/bias/Assign^dense_17/kernel/Assign^dense_18/bias/Assign^dense_18/kernel/Assign^dense_19/bias/Assign^dense_19/kernel/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/SaveV2/tensor_namesConst*Í
valueĂBŔB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
s
save/SaveV2/shape_and_slicesConst*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!dense_16/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp*
dtypes

2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
Ź
save/RestoreV2/tensor_namesConst"/device:CPU:0*Í
valueĂBŔB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*#
valueBB B B B B B B B *
dtype0
Â
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2
L
save/IdentityIdentitysave/RestoreV2*
_output_shapes
:*
T0
T
save/AssignVariableOpAssignVariableOpdense_16/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
Z
save/AssignVariableOp_1AssignVariableOpdense_16/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
X
save/AssignVariableOp_2AssignVariableOpdense_17/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpdense_17/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
X
save/AssignVariableOp_4AssignVariableOpdense_18/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Z
save/AssignVariableOp_5AssignVariableOpdense_18/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
X
save/AssignVariableOp_6AssignVariableOpdense_19/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
Z
save/AssignVariableOp_7AssignVariableOpdense_19/kernelsave/Identity_7*
dtype0
ć
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7

init_1NoOp"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"
	variablesóđ

dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08

dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08

dense_18/kernel:0dense_18/kernel/Assign%dense_18/kernel/Read/ReadVariableOp:0(2,dense_18/kernel/Initializer/random_uniform:08
s
dense_18/bias:0dense_18/bias/Assign#dense_18/bias/Read/ReadVariableOp:0(2!dense_18/bias/Initializer/zeros:08

dense_19/kernel:0dense_19/kernel/Assign%dense_19/kernel/Read/ReadVariableOp:0(2,dense_19/kernel/Initializer/random_uniform:08
s
dense_19/bias:0dense_19/bias/Assign#dense_19/bias/Read/ReadVariableOp:0(2!dense_19/bias/Initializer/zeros:08"
trainable_variablesóđ

dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08

dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08

dense_18/kernel:0dense_18/kernel/Assign%dense_18/kernel/Read/ReadVariableOp:0(2,dense_18/kernel/Initializer/random_uniform:08
s
dense_18/bias:0dense_18/bias/Assign#dense_18/bias/Read/ReadVariableOp:0(2!dense_18/bias/Initializer/zeros:08

dense_19/kernel:0dense_19/kernel/Assign%dense_19/kernel/Read/ReadVariableOp:0(2,dense_19/kernel/Initializer/random_uniform:08
s
dense_19/bias:0dense_19/bias/Assign#dense_19/bias/Read/ReadVariableOp:0(2!dense_19/bias/Initializer/zeros:08*¤
serving_default
;
flatten_4_input(
flatten_4_input:0˙˙˙˙˙˙˙˙˙*5
dense_19)
dense_19/Softmax:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict*@
__saved_model_init_op'%
__saved_model_init_op
init_1