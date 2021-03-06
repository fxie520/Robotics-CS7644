??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
?
cnn_model3/conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecnn_model3/conv_1/kernel
?
,cnn_model3/conv_1/kernel/Read/ReadVariableOpReadVariableOpcnn_model3/conv_1/kernel*&
_output_shapes
:*
dtype0
?
cnn_model3/conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namecnn_model3/conv_1/bias
}
*cnn_model3/conv_1/bias/Read/ReadVariableOpReadVariableOpcnn_model3/conv_1/bias*
_output_shapes
:*
dtype0
?
cnn_model3/layer_norm_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namecnn_model3/layer_norm_1/gamma
?
1cnn_model3/layer_norm_1/gamma/Read/ReadVariableOpReadVariableOpcnn_model3/layer_norm_1/gamma*
_output_shapes
:*
dtype0
?
cnn_model3/layer_norm_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namecnn_model3/layer_norm_1/beta
?
0cnn_model3/layer_norm_1/beta/Read/ReadVariableOpReadVariableOpcnn_model3/layer_norm_1/beta*
_output_shapes
:*
dtype0
?
cnn_model3/conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecnn_model3/conv_2/kernel
?
,cnn_model3/conv_2/kernel/Read/ReadVariableOpReadVariableOpcnn_model3/conv_2/kernel*&
_output_shapes
:*
dtype0
?
cnn_model3/conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namecnn_model3/conv_2/bias
}
*cnn_model3/conv_2/bias/Read/ReadVariableOpReadVariableOpcnn_model3/conv_2/bias*
_output_shapes
:*
dtype0
?
cnn_model3/layer_norm_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namecnn_model3/layer_norm_2/gamma
?
1cnn_model3/layer_norm_2/gamma/Read/ReadVariableOpReadVariableOpcnn_model3/layer_norm_2/gamma*
_output_shapes
:*
dtype0
?
cnn_model3/layer_norm_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namecnn_model3/layer_norm_2/beta
?
0cnn_model3/layer_norm_2/beta/Read/ReadVariableOpReadVariableOpcnn_model3/layer_norm_2/beta*
_output_shapes
:*
dtype0
?
cnn_model3/conv_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecnn_model3/conv_3/kernel
?
,cnn_model3/conv_3/kernel/Read/ReadVariableOpReadVariableOpcnn_model3/conv_3/kernel*&
_output_shapes
:*
dtype0
?
cnn_model3/conv_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namecnn_model3/conv_3/bias
}
*cnn_model3/conv_3/bias/Read/ReadVariableOpReadVariableOpcnn_model3/conv_3/bias*
_output_shapes
:*
dtype0
?
cnn_model3/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_namecnn_model3/dense/kernel
?
+cnn_model3/dense/kernel/Read/ReadVariableOpReadVariableOpcnn_model3/dense/kernel*
_output_shapes
:	?d*
dtype0
?
cnn_model3/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_namecnn_model3/dense/bias
{
)cnn_model3/dense/bias/Read/ReadVariableOpReadVariableOpcnn_model3/dense/bias*
_output_shapes
:d*
dtype0
?
cnn_model3/raw_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*-
shared_namecnn_model3/raw_output/kernel
?
0cnn_model3/raw_output/kernel/Read/ReadVariableOpReadVariableOpcnn_model3/raw_output/kernel*
_output_shapes

:d*
dtype0
?
cnn_model3/raw_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namecnn_model3/raw_output/bias
?
.cnn_model3/raw_output/bias/Read/ReadVariableOpReadVariableOpcnn_model3/raw_output/bias*
_output_shapes
:*
dtype0
Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"??wB???B???B
\
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"ZHB@?@???N9?

NoOpNoOp
?%
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*?%
value?%B?$ B?$
?
	conv1
	norm1
	conv2
	norm2
	conv3
flat

dense1
	drop1
	y_

	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
q
axis
	gamma
beta
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
q
"axis
	#gamma
$beta
%trainable_variables
&	variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+trainable_variables
,	variables
-regularization_losses
.	keras_api
R
/trainable_variables
0	variables
1regularization_losses
2	keras_api
h

3kernel
4bias
5trainable_variables
6	variables
7regularization_losses
8	keras_api
R
9trainable_variables
:	variables
;regularization_losses
<	keras_api
h

=kernel
>bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
f
0
1
2
3
4
5
#6
$7
)8
*9
310
411
=12
>13
f
0
1
2
3
4
5
#6
$7
)8
*9
310
411
=12
>13
 
?

	variables
trainable_variables
Clayer_metrics
Dmetrics
Elayer_regularization_losses
Fnon_trainable_variables
regularization_losses

Glayers
 
US
VARIABLE_VALUEcnn_model3/conv_1/kernel'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcnn_model3/conv_1/bias%conv1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
	variables
Hmetrics
Ilayer_metrics
Jlayer_regularization_losses
Knon_trainable_variables
regularization_losses

Llayers
 
YW
VARIABLE_VALUEcnn_model3/layer_norm_1/gamma&norm1/gamma/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEcnn_model3/layer_norm_1/beta%norm1/beta/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
	variables
Mmetrics
Nlayer_metrics
Olayer_regularization_losses
Pnon_trainable_variables
regularization_losses

Qlayers
US
VARIABLE_VALUEcnn_model3/conv_2/kernel'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcnn_model3/conv_2/bias%conv2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
	variables
Rmetrics
Slayer_metrics
Tlayer_regularization_losses
Unon_trainable_variables
 regularization_losses

Vlayers
 
YW
VARIABLE_VALUEcnn_model3/layer_norm_2/gamma&norm2/gamma/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEcnn_model3/layer_norm_2/beta%norm2/beta/.ATTRIBUTES/VARIABLE_VALUE

#0
$1

#0
$1
 
?
%trainable_variables
&	variables
Wmetrics
Xlayer_metrics
Ylayer_regularization_losses
Znon_trainable_variables
'regularization_losses

[layers
US
VARIABLE_VALUEcnn_model3/conv_3/kernel'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcnn_model3/conv_3/bias%conv3/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?
+trainable_variables
,	variables
\metrics
]layer_metrics
^layer_regularization_losses
_non_trainable_variables
-regularization_losses

`layers
 
 
 
?
/trainable_variables
0	variables
ametrics
blayer_metrics
clayer_regularization_losses
dnon_trainable_variables
1regularization_losses

elayers
US
VARIABLE_VALUEcnn_model3/dense/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcnn_model3/dense/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41

30
41
 
?
5trainable_variables
6	variables
fmetrics
glayer_metrics
hlayer_regularization_losses
inon_trainable_variables
7regularization_losses

jlayers
 
 
 
?
9trainable_variables
:	variables
kmetrics
llayer_metrics
mlayer_regularization_losses
nnon_trainable_variables
;regularization_losses

olayers
VT
VARIABLE_VALUEcnn_model3/raw_output/kernel$y_/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcnn_model3/raw_output/bias"y_/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

=0
>1
 
?
?trainable_variables
@	variables
pmetrics
qlayer_metrics
rlayer_regularization_losses
snon_trainable_variables
Aregularization_losses

tlayers
 
 
 
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1ConstConst_1cnn_model3/conv_1/kernelcnn_model3/conv_1/biascnn_model3/layer_norm_1/gammacnn_model3/layer_norm_1/betacnn_model3/conv_2/kernelcnn_model3/conv_2/biascnn_model3/layer_norm_2/gammacnn_model3/layer_norm_2/betacnn_model3/conv_3/kernelcnn_model3/conv_3/biascnn_model3/dense/kernelcnn_model3/dense/biascnn_model3/raw_output/kernelcnn_model3/raw_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_43054
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,cnn_model3/conv_1/kernel/Read/ReadVariableOp*cnn_model3/conv_1/bias/Read/ReadVariableOp1cnn_model3/layer_norm_1/gamma/Read/ReadVariableOp0cnn_model3/layer_norm_1/beta/Read/ReadVariableOp,cnn_model3/conv_2/kernel/Read/ReadVariableOp*cnn_model3/conv_2/bias/Read/ReadVariableOp1cnn_model3/layer_norm_2/gamma/Read/ReadVariableOp0cnn_model3/layer_norm_2/beta/Read/ReadVariableOp,cnn_model3/conv_3/kernel/Read/ReadVariableOp*cnn_model3/conv_3/bias/Read/ReadVariableOp+cnn_model3/dense/kernel/Read/ReadVariableOp)cnn_model3/dense/bias/Read/ReadVariableOp0cnn_model3/raw_output/kernel/Read/ReadVariableOp.cnn_model3/raw_output/bias/Read/ReadVariableOpConst_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_44480
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecnn_model3/conv_1/kernelcnn_model3/conv_1/biascnn_model3/layer_norm_1/gammacnn_model3/layer_norm_1/betacnn_model3/conv_2/kernelcnn_model3/conv_2/biascnn_model3/layer_norm_2/gammacnn_model3/layer_norm_2/betacnn_model3/conv_3/kernelcnn_model3/conv_3/biascnn_model3/dense/kernelcnn_model3/dense/biascnn_model3/raw_output/kernelcnn_model3/raw_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_44532??
?
?
*__inference_raw_output_layer_call_fn_44319

inputs
unknown:d
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_raw_output_layer_call_and_return_conditional_losses_424182
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?>
?
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_42334

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp??cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?mul_4/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Y
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2[
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: 2
mul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3T
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_3/xb
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: 2
mul_3d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y`
	ones/LessLess	mul_2:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less[
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yc

zeros/LessLess	mul_2:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less]
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3?
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:?????????2
	Reshape_1?
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype02
mul_4/ReadVariableOp?
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
mul_4?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpt
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
add?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_2/gamma/Regularizer/Square?
/cnn_model3/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_2/gamma/Regularizer/Const?
-cnn_model3/layer_norm_2/gamma/Regularizer/SumSum4cnn_model3/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_2/gamma/Regularizer/mulMul8cnn_model3/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/mulj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^add/ReadVariableOp@^cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_42243

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp??cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?mul_4/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Y
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2[
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: 2
mul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3T
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_3/xb
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: 2
mul_3d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y`
	ones/LessLess	mul_2:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less[
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yc

zeros/LessLess	mul_2:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less]
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3?
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:?????????2
	Reshape_1?
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype02
mul_4/ReadVariableOp?
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
mul_4?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpt
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
add?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_1/gamma/Regularizer/Square?
/cnn_model3/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_1/gamma/Regularizer/Const?
-cnn_model3/layer_norm_1/gamma/Regularizer/SumSum4cnn_model3/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_1/gamma/Regularizer/mulMul8cnn_model3/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/mulj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^add/ReadVariableOp@^cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_42147
input_1
cnn_model3_sub_y
cnn_model3_truediv_yJ
0cnn_model3_conv_1_conv2d_readvariableop_resource:?
1cnn_model3_conv_1_biasadd_readvariableop_resource:C
5cnn_model3_layer_norm_1_mul_4_readvariableop_resource:A
3cnn_model3_layer_norm_1_add_readvariableop_resource:J
0cnn_model3_conv_2_conv2d_readvariableop_resource:?
1cnn_model3_conv_2_biasadd_readvariableop_resource:C
5cnn_model3_layer_norm_2_mul_4_readvariableop_resource:A
3cnn_model3_layer_norm_2_add_readvariableop_resource:J
0cnn_model3_conv_3_conv2d_readvariableop_resource:?
1cnn_model3_conv_3_biasadd_readvariableop_resource:B
/cnn_model3_dense_matmul_readvariableop_resource:	?d>
0cnn_model3_dense_biasadd_readvariableop_resource:dF
4cnn_model3_raw_output_matmul_readvariableop_resource:dC
5cnn_model3_raw_output_biasadd_readvariableop_resource:
identity??(cnn_model3/conv_1/BiasAdd/ReadVariableOp?'cnn_model3/conv_1/Conv2D/ReadVariableOp?(cnn_model3/conv_2/BiasAdd/ReadVariableOp?'cnn_model3/conv_2/Conv2D/ReadVariableOp?(cnn_model3/conv_3/BiasAdd/ReadVariableOp?'cnn_model3/conv_3/Conv2D/ReadVariableOp?'cnn_model3/dense/BiasAdd/ReadVariableOp?&cnn_model3/dense/MatMul/ReadVariableOp?*cnn_model3/layer_norm_1/add/ReadVariableOp?,cnn_model3/layer_norm_1/mul_4/ReadVariableOp?*cnn_model3/layer_norm_2/add/ReadVariableOp?,cnn_model3/layer_norm_2/mul_4/ReadVariableOp?,cnn_model3/raw_output/BiasAdd/ReadVariableOp?+cnn_model3/raw_output/MatMul/ReadVariableOp|
cnn_model3/subSubinput_1cnn_model3_sub_y*
T0*/
_output_shapes
:?????????  2
cnn_model3/sub?
cnn_model3/truedivRealDivcnn_model3/sub:z:0cnn_model3_truediv_y*
T0*/
_output_shapes
:?????????  2
cnn_model3/truediv?
'cnn_model3/conv_1/Conv2D/ReadVariableOpReadVariableOp0cnn_model3_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'cnn_model3/conv_1/Conv2D/ReadVariableOp?
cnn_model3/conv_1/Conv2DConv2Dcnn_model3/truediv:z:0/cnn_model3/conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
cnn_model3/conv_1/Conv2D?
(cnn_model3/conv_1/BiasAdd/ReadVariableOpReadVariableOp1cnn_model3_conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(cnn_model3/conv_1/BiasAdd/ReadVariableOp?
cnn_model3/conv_1/BiasAddBiasAdd!cnn_model3/conv_1/Conv2D:output:00cnn_model3/conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model3/conv_1/BiasAdd?
cnn_model3/conv_1/LeakyRelu	LeakyRelu"cnn_model3/conv_1/BiasAdd:output:0*/
_output_shapes
:?????????2
cnn_model3/conv_1/LeakyRelu?
cnn_model3/layer_norm_1/ShapeShape)cnn_model3/conv_1/LeakyRelu:activations:0*
T0*
_output_shapes
:2
cnn_model3/layer_norm_1/Shape?
+cnn_model3/layer_norm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+cnn_model3/layer_norm_1/strided_slice/stack?
-cnn_model3/layer_norm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_1/strided_slice/stack_1?
-cnn_model3/layer_norm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_1/strided_slice/stack_2?
%cnn_model3/layer_norm_1/strided_sliceStridedSlice&cnn_model3/layer_norm_1/Shape:output:04cnn_model3/layer_norm_1/strided_slice/stack:output:06cnn_model3/layer_norm_1/strided_slice/stack_1:output:06cnn_model3/layer_norm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%cnn_model3/layer_norm_1/strided_slice?
cnn_model3/layer_norm_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
cnn_model3/layer_norm_1/mul/x?
cnn_model3/layer_norm_1/mulMul&cnn_model3/layer_norm_1/mul/x:output:0.cnn_model3/layer_norm_1/strided_slice:output:0*
T0*
_output_shapes
: 2
cnn_model3/layer_norm_1/mul?
-cnn_model3/layer_norm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_1/strided_slice_1/stack?
/cnn_model3/layer_norm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_1/strided_slice_1/stack_1?
/cnn_model3/layer_norm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_1/strided_slice_1/stack_2?
'cnn_model3/layer_norm_1/strided_slice_1StridedSlice&cnn_model3/layer_norm_1/Shape:output:06cnn_model3/layer_norm_1/strided_slice_1/stack:output:08cnn_model3/layer_norm_1/strided_slice_1/stack_1:output:08cnn_model3/layer_norm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'cnn_model3/layer_norm_1/strided_slice_1?
cnn_model3/layer_norm_1/mul_1Mulcnn_model3/layer_norm_1/mul:z:00cnn_model3/layer_norm_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2
cnn_model3/layer_norm_1/mul_1?
-cnn_model3/layer_norm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_1/strided_slice_2/stack?
/cnn_model3/layer_norm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_1/strided_slice_2/stack_1?
/cnn_model3/layer_norm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_1/strided_slice_2/stack_2?
'cnn_model3/layer_norm_1/strided_slice_2StridedSlice&cnn_model3/layer_norm_1/Shape:output:06cnn_model3/layer_norm_1/strided_slice_2/stack:output:08cnn_model3/layer_norm_1/strided_slice_2/stack_1:output:08cnn_model3/layer_norm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'cnn_model3/layer_norm_1/strided_slice_2?
cnn_model3/layer_norm_1/mul_2Mul!cnn_model3/layer_norm_1/mul_1:z:00cnn_model3/layer_norm_1/strided_slice_2:output:0*
T0*
_output_shapes
: 2
cnn_model3/layer_norm_1/mul_2?
-cnn_model3/layer_norm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_1/strided_slice_3/stack?
/cnn_model3/layer_norm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_1/strided_slice_3/stack_1?
/cnn_model3/layer_norm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_1/strided_slice_3/stack_2?
'cnn_model3/layer_norm_1/strided_slice_3StridedSlice&cnn_model3/layer_norm_1/Shape:output:06cnn_model3/layer_norm_1/strided_slice_3/stack:output:08cnn_model3/layer_norm_1/strided_slice_3/stack_1:output:08cnn_model3/layer_norm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'cnn_model3/layer_norm_1/strided_slice_3?
cnn_model3/layer_norm_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2!
cnn_model3/layer_norm_1/mul_3/x?
cnn_model3/layer_norm_1/mul_3Mul(cnn_model3/layer_norm_1/mul_3/x:output:00cnn_model3/layer_norm_1/strided_slice_3:output:0*
T0*
_output_shapes
: 2
cnn_model3/layer_norm_1/mul_3?
'cnn_model3/layer_norm_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2)
'cnn_model3/layer_norm_1/Reshape/shape/0?
'cnn_model3/layer_norm_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'cnn_model3/layer_norm_1/Reshape/shape/3?
%cnn_model3/layer_norm_1/Reshape/shapePack0cnn_model3/layer_norm_1/Reshape/shape/0:output:0!cnn_model3/layer_norm_1/mul_2:z:0!cnn_model3/layer_norm_1/mul_3:z:00cnn_model3/layer_norm_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2'
%cnn_model3/layer_norm_1/Reshape/shape?
cnn_model3/layer_norm_1/ReshapeReshape)cnn_model3/conv_1/LeakyRelu:activations:0.cnn_model3/layer_norm_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2!
cnn_model3/layer_norm_1/Reshape?
#cnn_model3/layer_norm_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#cnn_model3/layer_norm_1/ones/Less/y?
!cnn_model3/layer_norm_1/ones/LessLess!cnn_model3/layer_norm_1/mul_2:z:0,cnn_model3/layer_norm_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2#
!cnn_model3/layer_norm_1/ones/Less?
#cnn_model3/layer_norm_1/ones/packedPack!cnn_model3/layer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2%
#cnn_model3/layer_norm_1/ones/packed?
"cnn_model3/layer_norm_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"cnn_model3/layer_norm_1/ones/Const?
cnn_model3/layer_norm_1/onesFill,cnn_model3/layer_norm_1/ones/packed:output:0+cnn_model3/layer_norm_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
cnn_model3/layer_norm_1/ones?
$cnn_model3/layer_norm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$cnn_model3/layer_norm_1/zeros/Less/y?
"cnn_model3/layer_norm_1/zeros/LessLess!cnn_model3/layer_norm_1/mul_2:z:0-cnn_model3/layer_norm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"cnn_model3/layer_norm_1/zeros/Less?
$cnn_model3/layer_norm_1/zeros/packedPack!cnn_model3/layer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2&
$cnn_model3/layer_norm_1/zeros/packed?
#cnn_model3/layer_norm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#cnn_model3/layer_norm_1/zeros/Const?
cnn_model3/layer_norm_1/zerosFill-cnn_model3/layer_norm_1/zeros/packed:output:0,cnn_model3/layer_norm_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
cnn_model3/layer_norm_1/zeros?
cnn_model3/layer_norm_1/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
cnn_model3/layer_norm_1/Const?
cnn_model3/layer_norm_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2!
cnn_model3/layer_norm_1/Const_1?
(cnn_model3/layer_norm_1/FusedBatchNormV3FusedBatchNormV3(cnn_model3/layer_norm_1/Reshape:output:0%cnn_model3/layer_norm_1/ones:output:0&cnn_model3/layer_norm_1/zeros:output:0&cnn_model3/layer_norm_1/Const:output:0(cnn_model3/layer_norm_1/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2*
(cnn_model3/layer_norm_1/FusedBatchNormV3?
!cnn_model3/layer_norm_1/Reshape_1Reshape,cnn_model3/layer_norm_1/FusedBatchNormV3:y:0&cnn_model3/layer_norm_1/Shape:output:0*
T0*/
_output_shapes
:?????????2#
!cnn_model3/layer_norm_1/Reshape_1?
,cnn_model3/layer_norm_1/mul_4/ReadVariableOpReadVariableOp5cnn_model3_layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02.
,cnn_model3/layer_norm_1/mul_4/ReadVariableOp?
cnn_model3/layer_norm_1/mul_4Mul*cnn_model3/layer_norm_1/Reshape_1:output:04cnn_model3/layer_norm_1/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model3/layer_norm_1/mul_4?
*cnn_model3/layer_norm_1/add/ReadVariableOpReadVariableOp3cnn_model3_layer_norm_1_add_readvariableop_resource*
_output_shapes
:*
dtype02,
*cnn_model3/layer_norm_1/add/ReadVariableOp?
cnn_model3/layer_norm_1/addAddV2!cnn_model3/layer_norm_1/mul_4:z:02cnn_model3/layer_norm_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model3/layer_norm_1/add?
'cnn_model3/conv_2/Conv2D/ReadVariableOpReadVariableOp0cnn_model3_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'cnn_model3/conv_2/Conv2D/ReadVariableOp?
cnn_model3/conv_2/Conv2DConv2Dcnn_model3/layer_norm_1/add:z:0/cnn_model3/conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
cnn_model3/conv_2/Conv2D?
(cnn_model3/conv_2/BiasAdd/ReadVariableOpReadVariableOp1cnn_model3_conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(cnn_model3/conv_2/BiasAdd/ReadVariableOp?
cnn_model3/conv_2/BiasAddBiasAdd!cnn_model3/conv_2/Conv2D:output:00cnn_model3/conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model3/conv_2/BiasAdd?
cnn_model3/conv_2/LeakyRelu	LeakyRelu"cnn_model3/conv_2/BiasAdd:output:0*/
_output_shapes
:?????????2
cnn_model3/conv_2/LeakyRelu?
cnn_model3/layer_norm_2/ShapeShape)cnn_model3/conv_2/LeakyRelu:activations:0*
T0*
_output_shapes
:2
cnn_model3/layer_norm_2/Shape?
+cnn_model3/layer_norm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+cnn_model3/layer_norm_2/strided_slice/stack?
-cnn_model3/layer_norm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_2/strided_slice/stack_1?
-cnn_model3/layer_norm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_2/strided_slice/stack_2?
%cnn_model3/layer_norm_2/strided_sliceStridedSlice&cnn_model3/layer_norm_2/Shape:output:04cnn_model3/layer_norm_2/strided_slice/stack:output:06cnn_model3/layer_norm_2/strided_slice/stack_1:output:06cnn_model3/layer_norm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%cnn_model3/layer_norm_2/strided_slice?
cnn_model3/layer_norm_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
cnn_model3/layer_norm_2/mul/x?
cnn_model3/layer_norm_2/mulMul&cnn_model3/layer_norm_2/mul/x:output:0.cnn_model3/layer_norm_2/strided_slice:output:0*
T0*
_output_shapes
: 2
cnn_model3/layer_norm_2/mul?
-cnn_model3/layer_norm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_2/strided_slice_1/stack?
/cnn_model3/layer_norm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_2/strided_slice_1/stack_1?
/cnn_model3/layer_norm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_2/strided_slice_1/stack_2?
'cnn_model3/layer_norm_2/strided_slice_1StridedSlice&cnn_model3/layer_norm_2/Shape:output:06cnn_model3/layer_norm_2/strided_slice_1/stack:output:08cnn_model3/layer_norm_2/strided_slice_1/stack_1:output:08cnn_model3/layer_norm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'cnn_model3/layer_norm_2/strided_slice_1?
cnn_model3/layer_norm_2/mul_1Mulcnn_model3/layer_norm_2/mul:z:00cnn_model3/layer_norm_2/strided_slice_1:output:0*
T0*
_output_shapes
: 2
cnn_model3/layer_norm_2/mul_1?
-cnn_model3/layer_norm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_2/strided_slice_2/stack?
/cnn_model3/layer_norm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_2/strided_slice_2/stack_1?
/cnn_model3/layer_norm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_2/strided_slice_2/stack_2?
'cnn_model3/layer_norm_2/strided_slice_2StridedSlice&cnn_model3/layer_norm_2/Shape:output:06cnn_model3/layer_norm_2/strided_slice_2/stack:output:08cnn_model3/layer_norm_2/strided_slice_2/stack_1:output:08cnn_model3/layer_norm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'cnn_model3/layer_norm_2/strided_slice_2?
cnn_model3/layer_norm_2/mul_2Mul!cnn_model3/layer_norm_2/mul_1:z:00cnn_model3/layer_norm_2/strided_slice_2:output:0*
T0*
_output_shapes
: 2
cnn_model3/layer_norm_2/mul_2?
-cnn_model3/layer_norm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-cnn_model3/layer_norm_2/strided_slice_3/stack?
/cnn_model3/layer_norm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_2/strided_slice_3/stack_1?
/cnn_model3/layer_norm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/cnn_model3/layer_norm_2/strided_slice_3/stack_2?
'cnn_model3/layer_norm_2/strided_slice_3StridedSlice&cnn_model3/layer_norm_2/Shape:output:06cnn_model3/layer_norm_2/strided_slice_3/stack:output:08cnn_model3/layer_norm_2/strided_slice_3/stack_1:output:08cnn_model3/layer_norm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'cnn_model3/layer_norm_2/strided_slice_3?
cnn_model3/layer_norm_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2!
cnn_model3/layer_norm_2/mul_3/x?
cnn_model3/layer_norm_2/mul_3Mul(cnn_model3/layer_norm_2/mul_3/x:output:00cnn_model3/layer_norm_2/strided_slice_3:output:0*
T0*
_output_shapes
: 2
cnn_model3/layer_norm_2/mul_3?
'cnn_model3/layer_norm_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2)
'cnn_model3/layer_norm_2/Reshape/shape/0?
'cnn_model3/layer_norm_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'cnn_model3/layer_norm_2/Reshape/shape/3?
%cnn_model3/layer_norm_2/Reshape/shapePack0cnn_model3/layer_norm_2/Reshape/shape/0:output:0!cnn_model3/layer_norm_2/mul_2:z:0!cnn_model3/layer_norm_2/mul_3:z:00cnn_model3/layer_norm_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2'
%cnn_model3/layer_norm_2/Reshape/shape?
cnn_model3/layer_norm_2/ReshapeReshape)cnn_model3/conv_2/LeakyRelu:activations:0.cnn_model3/layer_norm_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2!
cnn_model3/layer_norm_2/Reshape?
#cnn_model3/layer_norm_2/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#cnn_model3/layer_norm_2/ones/Less/y?
!cnn_model3/layer_norm_2/ones/LessLess!cnn_model3/layer_norm_2/mul_2:z:0,cnn_model3/layer_norm_2/ones/Less/y:output:0*
T0*
_output_shapes
: 2#
!cnn_model3/layer_norm_2/ones/Less?
#cnn_model3/layer_norm_2/ones/packedPack!cnn_model3/layer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2%
#cnn_model3/layer_norm_2/ones/packed?
"cnn_model3/layer_norm_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"cnn_model3/layer_norm_2/ones/Const?
cnn_model3/layer_norm_2/onesFill,cnn_model3/layer_norm_2/ones/packed:output:0+cnn_model3/layer_norm_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
cnn_model3/layer_norm_2/ones?
$cnn_model3/layer_norm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$cnn_model3/layer_norm_2/zeros/Less/y?
"cnn_model3/layer_norm_2/zeros/LessLess!cnn_model3/layer_norm_2/mul_2:z:0-cnn_model3/layer_norm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"cnn_model3/layer_norm_2/zeros/Less?
$cnn_model3/layer_norm_2/zeros/packedPack!cnn_model3/layer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2&
$cnn_model3/layer_norm_2/zeros/packed?
#cnn_model3/layer_norm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#cnn_model3/layer_norm_2/zeros/Const?
cnn_model3/layer_norm_2/zerosFill-cnn_model3/layer_norm_2/zeros/packed:output:0,cnn_model3/layer_norm_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
cnn_model3/layer_norm_2/zeros?
cnn_model3/layer_norm_2/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
cnn_model3/layer_norm_2/Const?
cnn_model3/layer_norm_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2!
cnn_model3/layer_norm_2/Const_1?
(cnn_model3/layer_norm_2/FusedBatchNormV3FusedBatchNormV3(cnn_model3/layer_norm_2/Reshape:output:0%cnn_model3/layer_norm_2/ones:output:0&cnn_model3/layer_norm_2/zeros:output:0&cnn_model3/layer_norm_2/Const:output:0(cnn_model3/layer_norm_2/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2*
(cnn_model3/layer_norm_2/FusedBatchNormV3?
!cnn_model3/layer_norm_2/Reshape_1Reshape,cnn_model3/layer_norm_2/FusedBatchNormV3:y:0&cnn_model3/layer_norm_2/Shape:output:0*
T0*/
_output_shapes
:?????????2#
!cnn_model3/layer_norm_2/Reshape_1?
,cnn_model3/layer_norm_2/mul_4/ReadVariableOpReadVariableOp5cnn_model3_layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02.
,cnn_model3/layer_norm_2/mul_4/ReadVariableOp?
cnn_model3/layer_norm_2/mul_4Mul*cnn_model3/layer_norm_2/Reshape_1:output:04cnn_model3/layer_norm_2/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model3/layer_norm_2/mul_4?
*cnn_model3/layer_norm_2/add/ReadVariableOpReadVariableOp3cnn_model3_layer_norm_2_add_readvariableop_resource*
_output_shapes
:*
dtype02,
*cnn_model3/layer_norm_2/add/ReadVariableOp?
cnn_model3/layer_norm_2/addAddV2!cnn_model3/layer_norm_2/mul_4:z:02cnn_model3/layer_norm_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model3/layer_norm_2/add?
'cnn_model3/conv_3/Conv2D/ReadVariableOpReadVariableOp0cnn_model3_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'cnn_model3/conv_3/Conv2D/ReadVariableOp?
cnn_model3/conv_3/Conv2DConv2Dcnn_model3/layer_norm_2/add:z:0/cnn_model3/conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
cnn_model3/conv_3/Conv2D?
(cnn_model3/conv_3/BiasAdd/ReadVariableOpReadVariableOp1cnn_model3_conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(cnn_model3/conv_3/BiasAdd/ReadVariableOp?
cnn_model3/conv_3/BiasAddBiasAdd!cnn_model3/conv_3/Conv2D:output:00cnn_model3/conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model3/conv_3/BiasAdd?
cnn_model3/conv_3/LeakyRelu	LeakyRelu"cnn_model3/conv_3/BiasAdd:output:0*/
_output_shapes
:?????????2
cnn_model3/conv_3/LeakyRelu?
cnn_model3/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
cnn_model3/flatten/Const?
cnn_model3/flatten/ReshapeReshape)cnn_model3/conv_3/LeakyRelu:activations:0!cnn_model3/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
cnn_model3/flatten/Reshape?
&cnn_model3/dense/MatMul/ReadVariableOpReadVariableOp/cnn_model3_dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02(
&cnn_model3/dense/MatMul/ReadVariableOp?
cnn_model3/dense/MatMulMatMul#cnn_model3/flatten/Reshape:output:0.cnn_model3/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
cnn_model3/dense/MatMul?
'cnn_model3/dense/BiasAdd/ReadVariableOpReadVariableOp0cnn_model3_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02)
'cnn_model3/dense/BiasAdd/ReadVariableOp?
cnn_model3/dense/BiasAddBiasAdd!cnn_model3/dense/MatMul:product:0/cnn_model3/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
cnn_model3/dense/BiasAdd?
cnn_model3/dense/LeakyRelu	LeakyRelu!cnn_model3/dense/BiasAdd:output:0*'
_output_shapes
:?????????d2
cnn_model3/dense/LeakyRelu?
cnn_model3/dropout/IdentityIdentity(cnn_model3/dense/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d2
cnn_model3/dropout/Identity?
+cnn_model3/raw_output/MatMul/ReadVariableOpReadVariableOp4cnn_model3_raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02-
+cnn_model3/raw_output/MatMul/ReadVariableOp?
cnn_model3/raw_output/MatMulMatMul$cnn_model3/dropout/Identity:output:03cnn_model3/raw_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
cnn_model3/raw_output/MatMul?
,cnn_model3/raw_output/BiasAdd/ReadVariableOpReadVariableOp5cnn_model3_raw_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,cnn_model3/raw_output/BiasAdd/ReadVariableOp?
cnn_model3/raw_output/BiasAddBiasAdd&cnn_model3/raw_output/MatMul:product:04cnn_model3/raw_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
cnn_model3/raw_output/BiasAdd?
cnn_model3/raw_output/SoftmaxSoftmax&cnn_model3/raw_output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
cnn_model3/raw_output/Softmax?
IdentityIdentity'cnn_model3/raw_output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp)^cnn_model3/conv_1/BiasAdd/ReadVariableOp(^cnn_model3/conv_1/Conv2D/ReadVariableOp)^cnn_model3/conv_2/BiasAdd/ReadVariableOp(^cnn_model3/conv_2/Conv2D/ReadVariableOp)^cnn_model3/conv_3/BiasAdd/ReadVariableOp(^cnn_model3/conv_3/Conv2D/ReadVariableOp(^cnn_model3/dense/BiasAdd/ReadVariableOp'^cnn_model3/dense/MatMul/ReadVariableOp+^cnn_model3/layer_norm_1/add/ReadVariableOp-^cnn_model3/layer_norm_1/mul_4/ReadVariableOp+^cnn_model3/layer_norm_2/add/ReadVariableOp-^cnn_model3/layer_norm_2/mul_4/ReadVariableOp-^cnn_model3/raw_output/BiasAdd/ReadVariableOp,^cnn_model3/raw_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2T
(cnn_model3/conv_1/BiasAdd/ReadVariableOp(cnn_model3/conv_1/BiasAdd/ReadVariableOp2R
'cnn_model3/conv_1/Conv2D/ReadVariableOp'cnn_model3/conv_1/Conv2D/ReadVariableOp2T
(cnn_model3/conv_2/BiasAdd/ReadVariableOp(cnn_model3/conv_2/BiasAdd/ReadVariableOp2R
'cnn_model3/conv_2/Conv2D/ReadVariableOp'cnn_model3/conv_2/Conv2D/ReadVariableOp2T
(cnn_model3/conv_3/BiasAdd/ReadVariableOp(cnn_model3/conv_3/BiasAdd/ReadVariableOp2R
'cnn_model3/conv_3/Conv2D/ReadVariableOp'cnn_model3/conv_3/Conv2D/ReadVariableOp2R
'cnn_model3/dense/BiasAdd/ReadVariableOp'cnn_model3/dense/BiasAdd/ReadVariableOp2P
&cnn_model3/dense/MatMul/ReadVariableOp&cnn_model3/dense/MatMul/ReadVariableOp2X
*cnn_model3/layer_norm_1/add/ReadVariableOp*cnn_model3/layer_norm_1/add/ReadVariableOp2\
,cnn_model3/layer_norm_1/mul_4/ReadVariableOp,cnn_model3/layer_norm_1/mul_4/ReadVariableOp2X
*cnn_model3/layer_norm_2/add/ReadVariableOp*cnn_model3/layer_norm_2/add/ReadVariableOp2\
,cnn_model3/layer_norm_2/mul_4/ReadVariableOp,cnn_model3/layer_norm_2/mul_4/ReadVariableOp2\
,cnn_model3/raw_output/BiasAdd/ReadVariableOp,cnn_model3/raw_output/BiasAdd/ReadVariableOp2Z
+cnn_model3/raw_output/MatMul/ReadVariableOp+cnn_model3/raw_output/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????  
!
_user_specified_name	input_1: 

_output_shapes
:: 

_output_shapes
:
?
?
*__inference_cnn_model3_layer_call_fn_43202
input_1
unknown
	unknown_0#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:

unknown_11:	?d

unknown_12:d

unknown_13:d

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_cnn_model3_layer_call_and_return_conditional_losses_427272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????  
!
_user_specified_name	input_1: 

_output_shapes
:: 

_output_shapes
:
?
?
&__inference_conv_1_layer_call_fn_43999

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv_1_layer_call_and_return_conditional_losses_421752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
,__inference_layer_norm_1_layer_call_fn_44031

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_422432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_conv_3_layer_call_and_return_conditional_losses_44234

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAddf
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????2
	LeakyRelu?
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_3/kernel/Regularizer/SquareSquareBcnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_3/kernel/Regularizer/Square?
*cnn_model3/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_3/kernel/Regularizer/Const?
(cnn_model3/conv_3/kernel/Regularizer/SumSum/cnn_model3/conv_3/kernel/Regularizer/Square:y:03cnn_model3/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/Sum?
*cnn_model3/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_3/kernel/Regularizer/mul/x?
(cnn_model3/conv_3/kernel/Regularizer/mulMul3cnn_model3/conv_3/kernel/Regularizer/mul/x:output:01cnn_model3/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/mulz
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_cnn_model3_layer_call_fn_43091
input_1
unknown
	unknown_0#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:

unknown_11:	?d

unknown_12:d

unknown_13:d

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_cnn_model3_layer_call_and_return_conditional_losses_424672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????  
!
_user_specified_name	input_1: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference_loss_fn_1_44358V
Hcnn_model3_layer_norm_1_gamma_regularizer_square_readvariableop_resource:
identity???cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOpHcnn_model3_layer_norm_1_gamma_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_1/gamma/Regularizer/Square?
/cnn_model3/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_1/gamma/Regularizer/Const?
-cnn_model3/layer_norm_1/gamma/Regularizer/SumSum4cnn_model3/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_1/gamma/Regularizer/mulMul8cnn_model3/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/mul{
IdentityIdentity1cnn_model3/layer_norm_1/gamma/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp@^cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_44245

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_conv_2_layer_call_and_return_conditional_losses_42266

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAddf
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????2
	LeakyRelu?
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_2/kernel/Regularizer/SquareSquareBcnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_2/kernel/Regularizer/Square?
*cnn_model3/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_2/kernel/Regularizer/Const?
(cnn_model3/conv_2/kernel/Regularizer/SumSum/cnn_model3/conv_2/kernel/Regularizer/Square:y:03cnn_model3/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/Sum?
*cnn_model3/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_2/kernel/Regularizer/mul/x?
(cnn_model3/conv_2/kernel/Regularizer/mulMul3cnn_model3/conv_2/kernel/Regularizer/mul/x:output:01cnn_model3/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/mulz
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_6_44413Y
Gcnn_model3_raw_output_kernel_regularizer_square_readvariableop_resource:d
identity??>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGcnn_model3_raw_output_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:d*
dtype02@
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
/cnn_model3/raw_output/kernel/Regularizer/SquareSquareFcnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d21
/cnn_model3/raw_output/kernel/Regularizer/Square?
.cnn_model3/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.cnn_model3/raw_output/kernel/Regularizer/Const?
,cnn_model3/raw_output/kernel/Regularizer/SumSum3cnn_model3/raw_output/kernel/Regularizer/Square:y:07cnn_model3/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/Sum?
.cnn_model3/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.cnn_model3/raw_output/kernel/Regularizer/mul/x?
,cnn_model3/raw_output/kernel/Regularizer/mulMul7cnn_model3/raw_output/kernel/Regularizer/mul/x:output:05cnn_model3/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/mulz
IdentityIdentity0cnn_model3/raw_output/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp?^cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_3_44380V
Hcnn_model3_layer_norm_2_gamma_regularizer_square_readvariableop_resource:
identity???cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOpHcnn_model3_layer_norm_2_gamma_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_2/gamma/Regularizer/Square?
/cnn_model3/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_2/gamma/Regularizer/Const?
-cnn_model3/layer_norm_2/gamma/Regularizer/SumSum4cnn_model3/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_2/gamma/Regularizer/mulMul8cnn_model3/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/mul{
IdentityIdentity1cnn_model3/layer_norm_2/gamma/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp@^cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp
?
?
*__inference_cnn_model3_layer_call_fn_43128

inputs
unknown
	unknown_0#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:

unknown_11:	?d

unknown_12:d

unknown_13:d

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_cnn_model3_layer_call_and_return_conditional_losses_424672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs: 

_output_shapes
:: 

_output_shapes
:
?)
?
__inference__traced_save_44480
file_prefix7
3savev2_cnn_model3_conv_1_kernel_read_readvariableop5
1savev2_cnn_model3_conv_1_bias_read_readvariableop<
8savev2_cnn_model3_layer_norm_1_gamma_read_readvariableop;
7savev2_cnn_model3_layer_norm_1_beta_read_readvariableop7
3savev2_cnn_model3_conv_2_kernel_read_readvariableop5
1savev2_cnn_model3_conv_2_bias_read_readvariableop<
8savev2_cnn_model3_layer_norm_2_gamma_read_readvariableop;
7savev2_cnn_model3_layer_norm_2_beta_read_readvariableop7
3savev2_cnn_model3_conv_3_kernel_read_readvariableop5
1savev2_cnn_model3_conv_3_bias_read_readvariableop6
2savev2_cnn_model3_dense_kernel_read_readvariableop4
0savev2_cnn_model3_dense_bias_read_readvariableop;
7savev2_cnn_model3_raw_output_kernel_read_readvariableop9
5savev2_cnn_model3_raw_output_bias_read_readvariableop
savev2_const_2

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB&norm1/gamma/.ATTRIBUTES/VARIABLE_VALUEB%norm1/beta/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB&norm2/gamma/.ATTRIBUTES/VARIABLE_VALUEB%norm2/beta/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB$y_/kernel/.ATTRIBUTES/VARIABLE_VALUEB"y_/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_cnn_model3_conv_1_kernel_read_readvariableop1savev2_cnn_model3_conv_1_bias_read_readvariableop8savev2_cnn_model3_layer_norm_1_gamma_read_readvariableop7savev2_cnn_model3_layer_norm_1_beta_read_readvariableop3savev2_cnn_model3_conv_2_kernel_read_readvariableop1savev2_cnn_model3_conv_2_bias_read_readvariableop8savev2_cnn_model3_layer_norm_2_gamma_read_readvariableop7savev2_cnn_model3_layer_norm_2_beta_read_readvariableop3savev2_cnn_model3_conv_3_kernel_read_readvariableop1savev2_cnn_model3_conv_3_bias_read_readvariableop2savev2_cnn_model3_dense_kernel_read_readvariableop0savev2_cnn_model3_dense_bias_read_readvariableop7savev2_cnn_model3_raw_output_kernel_read_readvariableop5savev2_cnn_model3_raw_output_bias_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::::::::	?d:d:d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::

_output_shapes
: 
?
?
__inference_loss_fn_4_44391]
Ccnn_model3_conv_3_kernel_regularizer_square_readvariableop_resource:
identity??:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCcnn_model3_conv_3_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_3/kernel/Regularizer/SquareSquareBcnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_3/kernel/Regularizer/Square?
*cnn_model3/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_3/kernel/Regularizer/Const?
(cnn_model3/conv_3/kernel/Regularizer/SumSum/cnn_model3/conv_3/kernel/Regularizer/Square:y:03cnn_model3/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/Sum?
*cnn_model3/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_3/kernel/Regularizer/mul/x?
(cnn_model3/conv_3/kernel/Regularizer/mulMul3cnn_model3/conv_3/kernel/Regularizer/mul/x:output:01cnn_model3/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/mulv
IdentityIdentity,cnn_model3/conv_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp;^cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_5_44402U
Bcnn_model3_dense_kernel_regularizer_square_readvariableop_resource:	?d
identity??9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBcnn_model3_dense_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?d*
dtype02;
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
*cnn_model3/dense/kernel/Regularizer/SquareSquareAcnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2,
*cnn_model3/dense/kernel/Regularizer/Square?
)cnn_model3/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)cnn_model3/dense/kernel/Regularizer/Const?
'cnn_model3/dense/kernel/Regularizer/SumSum.cnn_model3/dense/kernel/Regularizer/Square:y:02cnn_model3/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/Sum?
)cnn_model3/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)cnn_model3/dense/kernel/Regularizer/mul/x?
'cnn_model3/dense/kernel/Regularizer/mulMul2cnn_model3/dense/kernel/Regularizer/mul/x:output:00cnn_model3/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/mulu
IdentityIdentity+cnn_model3/dense/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp:^cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp
?
?
*__inference_cnn_model3_layer_call_fn_43165

inputs
unknown
	unknown_0#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:

unknown_11:	?d

unknown_12:d

unknown_13:d

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_cnn_model3_layer_call_and_return_conditional_losses_427272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs: 

_output_shapes
:: 

_output_shapes
:
??
?
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43984
input_1	
sub_y
	truediv_y?
%conv_1_conv2d_readvariableop_resource:4
&conv_1_biasadd_readvariableop_resource:8
*layer_norm_1_mul_4_readvariableop_resource:6
(layer_norm_1_add_readvariableop_resource:?
%conv_2_conv2d_readvariableop_resource:4
&conv_2_biasadd_readvariableop_resource:8
*layer_norm_2_mul_4_readvariableop_resource:6
(layer_norm_2_add_readvariableop_resource:?
%conv_3_conv2d_readvariableop_resource:4
&conv_3_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	?d3
%dense_biasadd_readvariableop_resource:d;
)raw_output_matmul_readvariableop_resource:d8
*raw_output_biasadd_readvariableop_resource:
identity??:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/BiasAdd/ReadVariableOp?conv_1/Conv2D/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?conv_2/Conv2D/ReadVariableOp?conv_3/BiasAdd/ReadVariableOp?conv_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?layer_norm_1/add/ReadVariableOp?!layer_norm_1/mul_4/ReadVariableOp?layer_norm_2/add/ReadVariableOp?!layer_norm_2/mul_4/ReadVariableOp?!raw_output/BiasAdd/ReadVariableOp? raw_output/MatMul/ReadVariableOp[
subSubinput_1sub_y*
T0*/
_output_shapes
:?????????  2
subk
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  2	
truediv?
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_1/Conv2D/ReadVariableOp?
conv_1/Conv2DConv2Dtruediv:z:0$conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_1/Conv2D?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_1/BiasAdd/ReadVariableOp?
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_1/BiasAdd{
conv_1/LeakyRelu	LeakyReluconv_1/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_1/LeakyReluv
layer_norm_1/ShapeShapeconv_1/LeakyRelu:activations:0*
T0*
_output_shapes
:2
layer_norm_1/Shape?
 layer_norm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 layer_norm_1/strided_slice/stack?
"layer_norm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice/stack_1?
"layer_norm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice/stack_2?
layer_norm_1/strided_sliceStridedSlicelayer_norm_1/Shape:output:0)layer_norm_1/strided_slice/stack:output:0+layer_norm_1/strided_slice/stack_1:output:0+layer_norm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slicej
layer_norm_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/mul/x?
layer_norm_1/mulMullayer_norm_1/mul/x:output:0#layer_norm_1/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul?
"layer_norm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_1/stack?
$layer_norm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_1/stack_1?
$layer_norm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_1/stack_2?
layer_norm_1/strided_slice_1StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_1/stack:output:0-layer_norm_1/strided_slice_1/stack_1:output:0-layer_norm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_1?
layer_norm_1/mul_1Mullayer_norm_1/mul:z:0%layer_norm_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_1?
"layer_norm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_2/stack?
$layer_norm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_2/stack_1?
$layer_norm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_2/stack_2?
layer_norm_1/strided_slice_2StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_2/stack:output:0-layer_norm_1/strided_slice_2/stack_1:output:0-layer_norm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_2?
layer_norm_1/mul_2Mullayer_norm_1/mul_1:z:0%layer_norm_1/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_2?
"layer_norm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_3/stack?
$layer_norm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_3/stack_1?
$layer_norm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_3/stack_2?
layer_norm_1/strided_slice_3StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_3/stack:output:0-layer_norm_1/strided_slice_3/stack_1:output:0-layer_norm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_3n
layer_norm_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/mul_3/x?
layer_norm_1/mul_3Mullayer_norm_1/mul_3/x:output:0%layer_norm_1/strided_slice_3:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_3~
layer_norm_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/Reshape/shape/0~
layer_norm_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/Reshape/shape/3?
layer_norm_1/Reshape/shapePack%layer_norm_1/Reshape/shape/0:output:0layer_norm_1/mul_2:z:0layer_norm_1/mul_3:z:0%layer_norm_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
layer_norm_1/Reshape/shape?
layer_norm_1/ReshapeReshapeconv_1/LeakyRelu:activations:0#layer_norm_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_norm_1/Reshapew
layer_norm_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_1/ones/Less/y?
layer_norm_1/ones/LessLesslayer_norm_1/mul_2:z:0!layer_norm_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_1/ones/Less?
layer_norm_1/ones/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_1/ones/packedw
layer_norm_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
layer_norm_1/ones/Const?
layer_norm_1/onesFill!layer_norm_1/ones/packed:output:0 layer_norm_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_1/onesy
layer_norm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_1/zeros/Less/y?
layer_norm_1/zeros/LessLesslayer_norm_1/mul_2:z:0"layer_norm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_1/zeros/Less?
layer_norm_1/zeros/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_1/zeros/packedy
layer_norm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_norm_1/zeros/Const?
layer_norm_1/zerosFill"layer_norm_1/zeros/packed:output:0!layer_norm_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_1/zerosk
layer_norm_1/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_1/Consto
layer_norm_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_1/Const_1?
layer_norm_1/FusedBatchNormV3FusedBatchNormV3layer_norm_1/Reshape:output:0layer_norm_1/ones:output:0layer_norm_1/zeros:output:0layer_norm_1/Const:output:0layer_norm_1/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
layer_norm_1/FusedBatchNormV3?
layer_norm_1/Reshape_1Reshape!layer_norm_1/FusedBatchNormV3:y:0layer_norm_1/Shape:output:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/Reshape_1?
!layer_norm_1/mul_4/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02#
!layer_norm_1/mul_4/ReadVariableOp?
layer_norm_1/mul_4Mullayer_norm_1/Reshape_1:output:0)layer_norm_1/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/mul_4?
layer_norm_1/add/ReadVariableOpReadVariableOp(layer_norm_1_add_readvariableop_resource*
_output_shapes
:*
dtype02!
layer_norm_1/add/ReadVariableOp?
layer_norm_1/addAddV2layer_norm_1/mul_4:z:0'layer_norm_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/add?
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_2/Conv2D/ReadVariableOp?
conv_2/Conv2DConv2Dlayer_norm_1/add:z:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_2/Conv2D?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_2/BiasAdd/ReadVariableOp?
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_2/BiasAdd{
conv_2/LeakyRelu	LeakyReluconv_2/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_2/LeakyReluv
layer_norm_2/ShapeShapeconv_2/LeakyRelu:activations:0*
T0*
_output_shapes
:2
layer_norm_2/Shape?
 layer_norm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 layer_norm_2/strided_slice/stack?
"layer_norm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice/stack_1?
"layer_norm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice/stack_2?
layer_norm_2/strided_sliceStridedSlicelayer_norm_2/Shape:output:0)layer_norm_2/strided_slice/stack:output:0+layer_norm_2/strided_slice/stack_1:output:0+layer_norm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slicej
layer_norm_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/mul/x?
layer_norm_2/mulMullayer_norm_2/mul/x:output:0#layer_norm_2/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul?
"layer_norm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_1/stack?
$layer_norm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_1/stack_1?
$layer_norm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_1/stack_2?
layer_norm_2/strided_slice_1StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_1/stack:output:0-layer_norm_2/strided_slice_1/stack_1:output:0-layer_norm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_1?
layer_norm_2/mul_1Mullayer_norm_2/mul:z:0%layer_norm_2/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_1?
"layer_norm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_2/stack?
$layer_norm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_2/stack_1?
$layer_norm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_2/stack_2?
layer_norm_2/strided_slice_2StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_2/stack:output:0-layer_norm_2/strided_slice_2/stack_1:output:0-layer_norm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_2?
layer_norm_2/mul_2Mullayer_norm_2/mul_1:z:0%layer_norm_2/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_2?
"layer_norm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_3/stack?
$layer_norm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_3/stack_1?
$layer_norm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_3/stack_2?
layer_norm_2/strided_slice_3StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_3/stack:output:0-layer_norm_2/strided_slice_3/stack_1:output:0-layer_norm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_3n
layer_norm_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/mul_3/x?
layer_norm_2/mul_3Mullayer_norm_2/mul_3/x:output:0%layer_norm_2/strided_slice_3:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_3~
layer_norm_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/Reshape/shape/0~
layer_norm_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/Reshape/shape/3?
layer_norm_2/Reshape/shapePack%layer_norm_2/Reshape/shape/0:output:0layer_norm_2/mul_2:z:0layer_norm_2/mul_3:z:0%layer_norm_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
layer_norm_2/Reshape/shape?
layer_norm_2/ReshapeReshapeconv_2/LeakyRelu:activations:0#layer_norm_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_norm_2/Reshapew
layer_norm_2/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_2/ones/Less/y?
layer_norm_2/ones/LessLesslayer_norm_2/mul_2:z:0!layer_norm_2/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_2/ones/Less?
layer_norm_2/ones/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_2/ones/packedw
layer_norm_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
layer_norm_2/ones/Const?
layer_norm_2/onesFill!layer_norm_2/ones/packed:output:0 layer_norm_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_2/onesy
layer_norm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_2/zeros/Less/y?
layer_norm_2/zeros/LessLesslayer_norm_2/mul_2:z:0"layer_norm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_2/zeros/Less?
layer_norm_2/zeros/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_2/zeros/packedy
layer_norm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_norm_2/zeros/Const?
layer_norm_2/zerosFill"layer_norm_2/zeros/packed:output:0!layer_norm_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_2/zerosk
layer_norm_2/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_2/Consto
layer_norm_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_2/Const_1?
layer_norm_2/FusedBatchNormV3FusedBatchNormV3layer_norm_2/Reshape:output:0layer_norm_2/ones:output:0layer_norm_2/zeros:output:0layer_norm_2/Const:output:0layer_norm_2/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
layer_norm_2/FusedBatchNormV3?
layer_norm_2/Reshape_1Reshape!layer_norm_2/FusedBatchNormV3:y:0layer_norm_2/Shape:output:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/Reshape_1?
!layer_norm_2/mul_4/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02#
!layer_norm_2/mul_4/ReadVariableOp?
layer_norm_2/mul_4Mullayer_norm_2/Reshape_1:output:0)layer_norm_2/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/mul_4?
layer_norm_2/add/ReadVariableOpReadVariableOp(layer_norm_2_add_readvariableop_resource*
_output_shapes
:*
dtype02!
layer_norm_2/add/ReadVariableOp?
layer_norm_2/addAddV2layer_norm_2/mul_4:z:0'layer_norm_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/add?
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_3/Conv2D/ReadVariableOp?
conv_3/Conv2DConv2Dlayer_norm_2/add:z:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_3/Conv2D?
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_3/BiasAdd/ReadVariableOp?
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_3/BiasAdd{
conv_3/LeakyRelu	LeakyReluconv_3/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_3/LeakyReluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshapeconv_3/LeakyRelu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/BiasAddp
dense/LeakyRelu	LeakyReludense/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense/LeakyRelus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/dropout/Const?
dropout/dropout/MulMuldense/LeakyRelu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????d2
dropout/dropout/Mul{
dropout/dropout/ShapeShapedense/LeakyRelu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0*

seed*2.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d2
dropout/dropout/Mul_1?
 raw_output/MatMul/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02"
 raw_output/MatMul/ReadVariableOp?
raw_output/MatMulMatMuldropout/dropout/Mul_1:z:0(raw_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
raw_output/MatMul?
!raw_output/BiasAdd/ReadVariableOpReadVariableOp*raw_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!raw_output/BiasAdd/ReadVariableOp?
raw_output/BiasAddBiasAddraw_output/MatMul:product:0)raw_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
raw_output/BiasAdd?
raw_output/SoftmaxSoftmaxraw_output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
raw_output/Softmax?
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_1/kernel/Regularizer/SquareSquareBcnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_1/kernel/Regularizer/Square?
*cnn_model3/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_1/kernel/Regularizer/Const?
(cnn_model3/conv_1/kernel/Regularizer/SumSum/cnn_model3/conv_1/kernel/Regularizer/Square:y:03cnn_model3/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/Sum?
*cnn_model3/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_1/kernel/Regularizer/mul/x?
(cnn_model3/conv_1/kernel/Regularizer/mulMul3cnn_model3/conv_1/kernel/Regularizer/mul/x:output:01cnn_model3/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/mul?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_1/gamma/Regularizer/Square?
/cnn_model3/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_1/gamma/Regularizer/Const?
-cnn_model3/layer_norm_1/gamma/Regularizer/SumSum4cnn_model3/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_1/gamma/Regularizer/mulMul8cnn_model3/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/mul?
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_2/kernel/Regularizer/SquareSquareBcnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_2/kernel/Regularizer/Square?
*cnn_model3/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_2/kernel/Regularizer/Const?
(cnn_model3/conv_2/kernel/Regularizer/SumSum/cnn_model3/conv_2/kernel/Regularizer/Square:y:03cnn_model3/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/Sum?
*cnn_model3/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_2/kernel/Regularizer/mul/x?
(cnn_model3/conv_2/kernel/Regularizer/mulMul3cnn_model3/conv_2/kernel/Regularizer/mul/x:output:01cnn_model3/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/mul?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_2/gamma/Regularizer/Square?
/cnn_model3/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_2/gamma/Regularizer/Const?
-cnn_model3/layer_norm_2/gamma/Regularizer/SumSum4cnn_model3/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_2/gamma/Regularizer/mulMul8cnn_model3/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/mul?
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_3/kernel/Regularizer/SquareSquareBcnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_3/kernel/Regularizer/Square?
*cnn_model3/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_3/kernel/Regularizer/Const?
(cnn_model3/conv_3/kernel/Regularizer/SumSum/cnn_model3/conv_3/kernel/Regularizer/Square:y:03cnn_model3/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/Sum?
*cnn_model3/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_3/kernel/Regularizer/mul/x?
(cnn_model3/conv_3/kernel/Regularizer/mulMul3cnn_model3/conv_3/kernel/Regularizer/mul/x:output:01cnn_model3/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/mul?
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02;
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
*cnn_model3/dense/kernel/Regularizer/SquareSquareAcnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2,
*cnn_model3/dense/kernel/Regularizer/Square?
)cnn_model3/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)cnn_model3/dense/kernel/Regularizer/Const?
'cnn_model3/dense/kernel/Regularizer/SumSum.cnn_model3/dense/kernel/Regularizer/Square:y:02cnn_model3/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/Sum?
)cnn_model3/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)cnn_model3/dense/kernel/Regularizer/mul/x?
'cnn_model3/dense/kernel/Regularizer/mulMul2cnn_model3/dense/kernel/Regularizer/mul/x:output:00cnn_model3/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/mul?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02@
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
/cnn_model3/raw_output/kernel/Regularizer/SquareSquareFcnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d21
/cnn_model3/raw_output/kernel/Regularizer/Square?
.cnn_model3/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.cnn_model3/raw_output/kernel/Regularizer/Const?
,cnn_model3/raw_output/kernel/Regularizer/SumSum3cnn_model3/raw_output/kernel/Regularizer/Square:y:07cnn_model3/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/Sum?
.cnn_model3/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.cnn_model3/raw_output/kernel/Regularizer/mul/x?
,cnn_model3/raw_output/kernel/Regularizer/mulMul7cnn_model3/raw_output/kernel/Regularizer/mul/x:output:05cnn_model3/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/mulw
IdentityIdentityraw_output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp;^cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^layer_norm_1/add/ReadVariableOp"^layer_norm_1/mul_4/ReadVariableOp ^layer_norm_2/add/ReadVariableOp"^layer_norm_2/mul_4/ReadVariableOp"^raw_output/BiasAdd/ReadVariableOp!^raw_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2<
conv_1/Conv2D/ReadVariableOpconv_1/Conv2D/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2<
conv_2/Conv2D/ReadVariableOpconv_2/Conv2D/ReadVariableOp2>
conv_3/BiasAdd/ReadVariableOpconv_3/BiasAdd/ReadVariableOp2<
conv_3/Conv2D/ReadVariableOpconv_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2B
layer_norm_1/add/ReadVariableOplayer_norm_1/add/ReadVariableOp2F
!layer_norm_1/mul_4/ReadVariableOp!layer_norm_1/mul_4/ReadVariableOp2B
layer_norm_2/add/ReadVariableOplayer_norm_2/add/ReadVariableOp2F
!layer_norm_2/mul_4/ReadVariableOp!layer_norm_2/mul_4/ReadVariableOp2F
!raw_output/BiasAdd/ReadVariableOp!raw_output/BiasAdd/ReadVariableOp2D
 raw_output/MatMul/ReadVariableOp raw_output/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????  
!
_user_specified_name	input_1: 

_output_shapes
:: 

_output_shapes
:
?
?
A__inference_conv_2_layer_call_and_return_conditional_losses_44125

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAddf
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????2
	LeakyRelu?
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_2/kernel/Regularizer/SquareSquareBcnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_2/kernel/Regularizer/Square?
*cnn_model3/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_2/kernel/Regularizer/Const?
(cnn_model3/conv_2/kernel/Regularizer/SumSum/cnn_model3/conv_2/kernel/Regularizer/Square:y:03cnn_model3/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/Sum?
*cnn_model3/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_2/kernel/Regularizer/mul/x?
(cnn_model3/conv_2/kernel/Regularizer/mulMul3cnn_model3/conv_2/kernel/Regularizer/mul/x:output:01cnn_model3/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/mulz
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_44260

inputs
unknown:	?d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_423882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?>
?
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_44093

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp??cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?mul_4/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Y
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2[
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: 2
mul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3T
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_3/xb
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: 2
mul_3d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y`
	ones/LessLess	mul_2:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less[
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yc

zeros/LessLess	mul_2:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less]
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3?
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:?????????2
	Reshape_1?
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype02
mul_4/ReadVariableOp?
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
mul_4?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpt
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
add?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_1/gamma/Regularizer/Square?
/cnn_model3/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_1/gamma/Regularizer/Const?
-cnn_model3/layer_norm_1/gamma/Regularizer/SumSum4cnn_model3/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_1/gamma/Regularizer/mulMul8cnn_model3/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/mulj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^add/ReadVariableOp@^cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_conv_1_layer_call_and_return_conditional_losses_44016

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAddf
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????2
	LeakyRelu?
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_1/kernel/Regularizer/SquareSquareBcnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_1/kernel/Regularizer/Square?
*cnn_model3/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_1/kernel/Regularizer/Const?
(cnn_model3/conv_1/kernel/Regularizer/SumSum/cnn_model3/conv_1/kernel/Regularizer/Square:y:03cnn_model3/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/Sum?
*cnn_model3/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_1/kernel/Regularizer/mul/x?
(cnn_model3/conv_1/kernel/Regularizer/mulMul3cnn_model3/conv_1/kernel/Regularizer/mul/x:output:01cnn_model3/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/mulz
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
??
?	
!__inference__traced_restore_44532
file_prefixC
)assignvariableop_cnn_model3_conv_1_kernel:7
)assignvariableop_1_cnn_model3_conv_1_bias:>
0assignvariableop_2_cnn_model3_layer_norm_1_gamma:=
/assignvariableop_3_cnn_model3_layer_norm_1_beta:E
+assignvariableop_4_cnn_model3_conv_2_kernel:7
)assignvariableop_5_cnn_model3_conv_2_bias:>
0assignvariableop_6_cnn_model3_layer_norm_2_gamma:=
/assignvariableop_7_cnn_model3_layer_norm_2_beta:E
+assignvariableop_8_cnn_model3_conv_3_kernel:7
)assignvariableop_9_cnn_model3_conv_3_bias:>
+assignvariableop_10_cnn_model3_dense_kernel:	?d7
)assignvariableop_11_cnn_model3_dense_bias:dB
0assignvariableop_12_cnn_model3_raw_output_kernel:d<
.assignvariableop_13_cnn_model3_raw_output_bias:
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB&norm1/gamma/.ATTRIBUTES/VARIABLE_VALUEB%norm1/beta/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB&norm2/gamma/.ATTRIBUTES/VARIABLE_VALUEB%norm2/beta/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB$y_/kernel/.ATTRIBUTES/VARIABLE_VALUEB"y_/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp)assignvariableop_cnn_model3_conv_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp)assignvariableop_1_cnn_model3_conv_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_cnn_model3_layer_norm_1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_cnn_model3_layer_norm_1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp+assignvariableop_4_cnn_model3_conv_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp)assignvariableop_5_cnn_model3_conv_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp0assignvariableop_6_cnn_model3_layer_norm_2_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp/assignvariableop_7_cnn_model3_layer_norm_2_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp+assignvariableop_8_cnn_model3_conv_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp)assignvariableop_9_cnn_model3_conv_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_cnn_model3_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp)assignvariableop_11_cnn_model3_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp0assignvariableop_12_cnn_model3_raw_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp.assignvariableop_13_cnn_model3_raw_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_14f
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_15?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_42369

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_conv_3_layer_call_and_return_conditional_losses_42357

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAddf
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????2
	LeakyRelu?
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_3/kernel/Regularizer/SquareSquareBcnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_3/kernel/Regularizer/Square?
*cnn_model3/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_3/kernel/Regularizer/Const?
(cnn_model3/conv_3/kernel/Regularizer/SumSum/cnn_model3/conv_3/kernel/Regularizer/Square:y:03cnn_model3/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/Sum?
*cnn_model3/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_3/kernel/Regularizer/mul/x?
(cnn_model3/conv_3/kernel/Regularizer/mulMul3cnn_model3/conv_3/kernel/Regularizer/mul/x:output:01cnn_model3/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/mulz
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_42399

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
E__inference_raw_output_layer_call_and_return_conditional_losses_44336

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02@
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
/cnn_model3/raw_output/kernel/Regularizer/SquareSquareFcnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d21
/cnn_model3/raw_output/kernel/Regularizer/Square?
.cnn_model3/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.cnn_model3/raw_output/kernel/Regularizer/Const?
,cnn_model3/raw_output/kernel/Regularizer/SumSum3cnn_model3/raw_output/kernel/Regularizer/Square:y:07cnn_model3/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/Sum?
.cnn_model3/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.cnn_model3/raw_output/kernel/Regularizer/mul/x?
,cnn_model3/raw_output/kernel/Regularizer/mulMul7cnn_model3/raw_output/kernel/Regularizer/mul/x:output:05cnn_model3/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/mull
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_44347]
Ccnn_model3_conv_1_kernel_regularizer_square_readvariableop_resource:
identity??:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCcnn_model3_conv_1_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_1/kernel/Regularizer/SquareSquareBcnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_1/kernel/Regularizer/Square?
*cnn_model3/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_1/kernel/Regularizer/Const?
(cnn_model3/conv_1/kernel/Regularizer/SumSum/cnn_model3/conv_1/kernel/Regularizer/Square:y:03cnn_model3/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/Sum?
*cnn_model3/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_1/kernel/Regularizer/mul/x?
(cnn_model3/conv_1/kernel/Regularizer/mulMul3cnn_model3/conv_1/kernel/Regularizer/mul/x:output:01cnn_model3/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/mulv
IdentityIdentity,cnn_model3/conv_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp;^cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp
?
C
'__inference_dropout_layer_call_fn_44282

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_423992
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
,__inference_layer_norm_2_layer_call_fn_44140

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_423342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_44202

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp??cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?mul_4/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Y
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2[
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: 2
mul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3T
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_3/xb
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: 2
mul_3d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y`
	ones/LessLess	mul_2:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less[
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yc

zeros/LessLess	mul_2:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less]
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3?
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:?????????2
	Reshape_1?
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype02
mul_4/ReadVariableOp?
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
mul_4?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpt
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
add?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_2/gamma/Regularizer/Square?
/cnn_model3/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_2/gamma/Regularizer/Const?
-cnn_model3/layer_norm_2/gamma/Regularizer/SumSum4cnn_model3/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_2/gamma/Regularizer/mulMul8cnn_model3/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/mulj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^add/ReadVariableOp@^cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
@__inference_dense_layer_call_and_return_conditional_losses_44277

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d2
	LeakyRelu?
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02;
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
*cnn_model3/dense/kernel/Regularizer/SquareSquareAcnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2,
*cnn_model3/dense/kernel/Regularizer/Square?
)cnn_model3/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)cnn_model3/dense/kernel/Regularizer/Const?
'cnn_model3/dense/kernel/Regularizer/SumSum.cnn_model3/dense/kernel/Regularizer/Square:y:02cnn_model3/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/Sum?
)cnn_model3/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)cnn_model3/dense/kernel/Regularizer/mul/x?
'cnn_model3/dense/kernel/Regularizer/mulMul2cnn_model3/dense/kernel/Regularizer/mul/x:output:00cnn_model3/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/mulr
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp:^cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2v
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43394

inputs	
sub_y
	truediv_y?
%conv_1_conv2d_readvariableop_resource:4
&conv_1_biasadd_readvariableop_resource:8
*layer_norm_1_mul_4_readvariableop_resource:6
(layer_norm_1_add_readvariableop_resource:?
%conv_2_conv2d_readvariableop_resource:4
&conv_2_biasadd_readvariableop_resource:8
*layer_norm_2_mul_4_readvariableop_resource:6
(layer_norm_2_add_readvariableop_resource:?
%conv_3_conv2d_readvariableop_resource:4
&conv_3_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	?d3
%dense_biasadd_readvariableop_resource:d;
)raw_output_matmul_readvariableop_resource:d8
*raw_output_biasadd_readvariableop_resource:
identity??:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/BiasAdd/ReadVariableOp?conv_1/Conv2D/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?conv_2/Conv2D/ReadVariableOp?conv_3/BiasAdd/ReadVariableOp?conv_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?layer_norm_1/add/ReadVariableOp?!layer_norm_1/mul_4/ReadVariableOp?layer_norm_2/add/ReadVariableOp?!layer_norm_2/mul_4/ReadVariableOp?!raw_output/BiasAdd/ReadVariableOp? raw_output/MatMul/ReadVariableOpZ
subSubinputssub_y*
T0*/
_output_shapes
:?????????  2
subk
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  2	
truediv?
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_1/Conv2D/ReadVariableOp?
conv_1/Conv2DConv2Dtruediv:z:0$conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_1/Conv2D?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_1/BiasAdd/ReadVariableOp?
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_1/BiasAdd{
conv_1/LeakyRelu	LeakyReluconv_1/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_1/LeakyReluv
layer_norm_1/ShapeShapeconv_1/LeakyRelu:activations:0*
T0*
_output_shapes
:2
layer_norm_1/Shape?
 layer_norm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 layer_norm_1/strided_slice/stack?
"layer_norm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice/stack_1?
"layer_norm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice/stack_2?
layer_norm_1/strided_sliceStridedSlicelayer_norm_1/Shape:output:0)layer_norm_1/strided_slice/stack:output:0+layer_norm_1/strided_slice/stack_1:output:0+layer_norm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slicej
layer_norm_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/mul/x?
layer_norm_1/mulMullayer_norm_1/mul/x:output:0#layer_norm_1/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul?
"layer_norm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_1/stack?
$layer_norm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_1/stack_1?
$layer_norm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_1/stack_2?
layer_norm_1/strided_slice_1StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_1/stack:output:0-layer_norm_1/strided_slice_1/stack_1:output:0-layer_norm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_1?
layer_norm_1/mul_1Mullayer_norm_1/mul:z:0%layer_norm_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_1?
"layer_norm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_2/stack?
$layer_norm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_2/stack_1?
$layer_norm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_2/stack_2?
layer_norm_1/strided_slice_2StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_2/stack:output:0-layer_norm_1/strided_slice_2/stack_1:output:0-layer_norm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_2?
layer_norm_1/mul_2Mullayer_norm_1/mul_1:z:0%layer_norm_1/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_2?
"layer_norm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_3/stack?
$layer_norm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_3/stack_1?
$layer_norm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_3/stack_2?
layer_norm_1/strided_slice_3StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_3/stack:output:0-layer_norm_1/strided_slice_3/stack_1:output:0-layer_norm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_3n
layer_norm_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/mul_3/x?
layer_norm_1/mul_3Mullayer_norm_1/mul_3/x:output:0%layer_norm_1/strided_slice_3:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_3~
layer_norm_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/Reshape/shape/0~
layer_norm_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/Reshape/shape/3?
layer_norm_1/Reshape/shapePack%layer_norm_1/Reshape/shape/0:output:0layer_norm_1/mul_2:z:0layer_norm_1/mul_3:z:0%layer_norm_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
layer_norm_1/Reshape/shape?
layer_norm_1/ReshapeReshapeconv_1/LeakyRelu:activations:0#layer_norm_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_norm_1/Reshapew
layer_norm_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_1/ones/Less/y?
layer_norm_1/ones/LessLesslayer_norm_1/mul_2:z:0!layer_norm_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_1/ones/Less?
layer_norm_1/ones/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_1/ones/packedw
layer_norm_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
layer_norm_1/ones/Const?
layer_norm_1/onesFill!layer_norm_1/ones/packed:output:0 layer_norm_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_1/onesy
layer_norm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_1/zeros/Less/y?
layer_norm_1/zeros/LessLesslayer_norm_1/mul_2:z:0"layer_norm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_1/zeros/Less?
layer_norm_1/zeros/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_1/zeros/packedy
layer_norm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_norm_1/zeros/Const?
layer_norm_1/zerosFill"layer_norm_1/zeros/packed:output:0!layer_norm_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_1/zerosk
layer_norm_1/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_1/Consto
layer_norm_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_1/Const_1?
layer_norm_1/FusedBatchNormV3FusedBatchNormV3layer_norm_1/Reshape:output:0layer_norm_1/ones:output:0layer_norm_1/zeros:output:0layer_norm_1/Const:output:0layer_norm_1/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
layer_norm_1/FusedBatchNormV3?
layer_norm_1/Reshape_1Reshape!layer_norm_1/FusedBatchNormV3:y:0layer_norm_1/Shape:output:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/Reshape_1?
!layer_norm_1/mul_4/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02#
!layer_norm_1/mul_4/ReadVariableOp?
layer_norm_1/mul_4Mullayer_norm_1/Reshape_1:output:0)layer_norm_1/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/mul_4?
layer_norm_1/add/ReadVariableOpReadVariableOp(layer_norm_1_add_readvariableop_resource*
_output_shapes
:*
dtype02!
layer_norm_1/add/ReadVariableOp?
layer_norm_1/addAddV2layer_norm_1/mul_4:z:0'layer_norm_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/add?
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_2/Conv2D/ReadVariableOp?
conv_2/Conv2DConv2Dlayer_norm_1/add:z:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_2/Conv2D?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_2/BiasAdd/ReadVariableOp?
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_2/BiasAdd{
conv_2/LeakyRelu	LeakyReluconv_2/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_2/LeakyReluv
layer_norm_2/ShapeShapeconv_2/LeakyRelu:activations:0*
T0*
_output_shapes
:2
layer_norm_2/Shape?
 layer_norm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 layer_norm_2/strided_slice/stack?
"layer_norm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice/stack_1?
"layer_norm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice/stack_2?
layer_norm_2/strided_sliceStridedSlicelayer_norm_2/Shape:output:0)layer_norm_2/strided_slice/stack:output:0+layer_norm_2/strided_slice/stack_1:output:0+layer_norm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slicej
layer_norm_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/mul/x?
layer_norm_2/mulMullayer_norm_2/mul/x:output:0#layer_norm_2/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul?
"layer_norm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_1/stack?
$layer_norm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_1/stack_1?
$layer_norm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_1/stack_2?
layer_norm_2/strided_slice_1StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_1/stack:output:0-layer_norm_2/strided_slice_1/stack_1:output:0-layer_norm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_1?
layer_norm_2/mul_1Mullayer_norm_2/mul:z:0%layer_norm_2/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_1?
"layer_norm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_2/stack?
$layer_norm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_2/stack_1?
$layer_norm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_2/stack_2?
layer_norm_2/strided_slice_2StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_2/stack:output:0-layer_norm_2/strided_slice_2/stack_1:output:0-layer_norm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_2?
layer_norm_2/mul_2Mullayer_norm_2/mul_1:z:0%layer_norm_2/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_2?
"layer_norm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_3/stack?
$layer_norm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_3/stack_1?
$layer_norm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_3/stack_2?
layer_norm_2/strided_slice_3StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_3/stack:output:0-layer_norm_2/strided_slice_3/stack_1:output:0-layer_norm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_3n
layer_norm_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/mul_3/x?
layer_norm_2/mul_3Mullayer_norm_2/mul_3/x:output:0%layer_norm_2/strided_slice_3:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_3~
layer_norm_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/Reshape/shape/0~
layer_norm_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/Reshape/shape/3?
layer_norm_2/Reshape/shapePack%layer_norm_2/Reshape/shape/0:output:0layer_norm_2/mul_2:z:0layer_norm_2/mul_3:z:0%layer_norm_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
layer_norm_2/Reshape/shape?
layer_norm_2/ReshapeReshapeconv_2/LeakyRelu:activations:0#layer_norm_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_norm_2/Reshapew
layer_norm_2/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_2/ones/Less/y?
layer_norm_2/ones/LessLesslayer_norm_2/mul_2:z:0!layer_norm_2/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_2/ones/Less?
layer_norm_2/ones/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_2/ones/packedw
layer_norm_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
layer_norm_2/ones/Const?
layer_norm_2/onesFill!layer_norm_2/ones/packed:output:0 layer_norm_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_2/onesy
layer_norm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_2/zeros/Less/y?
layer_norm_2/zeros/LessLesslayer_norm_2/mul_2:z:0"layer_norm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_2/zeros/Less?
layer_norm_2/zeros/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_2/zeros/packedy
layer_norm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_norm_2/zeros/Const?
layer_norm_2/zerosFill"layer_norm_2/zeros/packed:output:0!layer_norm_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_2/zerosk
layer_norm_2/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_2/Consto
layer_norm_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_2/Const_1?
layer_norm_2/FusedBatchNormV3FusedBatchNormV3layer_norm_2/Reshape:output:0layer_norm_2/ones:output:0layer_norm_2/zeros:output:0layer_norm_2/Const:output:0layer_norm_2/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
layer_norm_2/FusedBatchNormV3?
layer_norm_2/Reshape_1Reshape!layer_norm_2/FusedBatchNormV3:y:0layer_norm_2/Shape:output:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/Reshape_1?
!layer_norm_2/mul_4/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02#
!layer_norm_2/mul_4/ReadVariableOp?
layer_norm_2/mul_4Mullayer_norm_2/Reshape_1:output:0)layer_norm_2/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/mul_4?
layer_norm_2/add/ReadVariableOpReadVariableOp(layer_norm_2_add_readvariableop_resource*
_output_shapes
:*
dtype02!
layer_norm_2/add/ReadVariableOp?
layer_norm_2/addAddV2layer_norm_2/mul_4:z:0'layer_norm_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/add?
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_3/Conv2D/ReadVariableOp?
conv_3/Conv2DConv2Dlayer_norm_2/add:z:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_3/Conv2D?
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_3/BiasAdd/ReadVariableOp?
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_3/BiasAdd{
conv_3/LeakyRelu	LeakyReluconv_3/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_3/LeakyReluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshapeconv_3/LeakyRelu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/BiasAddp
dense/LeakyRelu	LeakyReludense/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense/LeakyRelu?
dropout/IdentityIdentitydense/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d2
dropout/Identity?
 raw_output/MatMul/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02"
 raw_output/MatMul/ReadVariableOp?
raw_output/MatMulMatMuldropout/Identity:output:0(raw_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
raw_output/MatMul?
!raw_output/BiasAdd/ReadVariableOpReadVariableOp*raw_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!raw_output/BiasAdd/ReadVariableOp?
raw_output/BiasAddBiasAddraw_output/MatMul:product:0)raw_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
raw_output/BiasAdd?
raw_output/SoftmaxSoftmaxraw_output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
raw_output/Softmax?
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_1/kernel/Regularizer/SquareSquareBcnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_1/kernel/Regularizer/Square?
*cnn_model3/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_1/kernel/Regularizer/Const?
(cnn_model3/conv_1/kernel/Regularizer/SumSum/cnn_model3/conv_1/kernel/Regularizer/Square:y:03cnn_model3/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/Sum?
*cnn_model3/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_1/kernel/Regularizer/mul/x?
(cnn_model3/conv_1/kernel/Regularizer/mulMul3cnn_model3/conv_1/kernel/Regularizer/mul/x:output:01cnn_model3/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/mul?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_1/gamma/Regularizer/Square?
/cnn_model3/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_1/gamma/Regularizer/Const?
-cnn_model3/layer_norm_1/gamma/Regularizer/SumSum4cnn_model3/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_1/gamma/Regularizer/mulMul8cnn_model3/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/mul?
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_2/kernel/Regularizer/SquareSquareBcnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_2/kernel/Regularizer/Square?
*cnn_model3/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_2/kernel/Regularizer/Const?
(cnn_model3/conv_2/kernel/Regularizer/SumSum/cnn_model3/conv_2/kernel/Regularizer/Square:y:03cnn_model3/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/Sum?
*cnn_model3/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_2/kernel/Regularizer/mul/x?
(cnn_model3/conv_2/kernel/Regularizer/mulMul3cnn_model3/conv_2/kernel/Regularizer/mul/x:output:01cnn_model3/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/mul?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_2/gamma/Regularizer/Square?
/cnn_model3/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_2/gamma/Regularizer/Const?
-cnn_model3/layer_norm_2/gamma/Regularizer/SumSum4cnn_model3/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_2/gamma/Regularizer/mulMul8cnn_model3/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/mul?
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_3/kernel/Regularizer/SquareSquareBcnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_3/kernel/Regularizer/Square?
*cnn_model3/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_3/kernel/Regularizer/Const?
(cnn_model3/conv_3/kernel/Regularizer/SumSum/cnn_model3/conv_3/kernel/Regularizer/Square:y:03cnn_model3/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/Sum?
*cnn_model3/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_3/kernel/Regularizer/mul/x?
(cnn_model3/conv_3/kernel/Regularizer/mulMul3cnn_model3/conv_3/kernel/Regularizer/mul/x:output:01cnn_model3/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/mul?
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02;
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
*cnn_model3/dense/kernel/Regularizer/SquareSquareAcnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2,
*cnn_model3/dense/kernel/Regularizer/Square?
)cnn_model3/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)cnn_model3/dense/kernel/Regularizer/Const?
'cnn_model3/dense/kernel/Regularizer/SumSum.cnn_model3/dense/kernel/Regularizer/Square:y:02cnn_model3/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/Sum?
)cnn_model3/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)cnn_model3/dense/kernel/Regularizer/mul/x?
'cnn_model3/dense/kernel/Regularizer/mulMul2cnn_model3/dense/kernel/Regularizer/mul/x:output:00cnn_model3/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/mul?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02@
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
/cnn_model3/raw_output/kernel/Regularizer/SquareSquareFcnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d21
/cnn_model3/raw_output/kernel/Regularizer/Square?
.cnn_model3/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.cnn_model3/raw_output/kernel/Regularizer/Const?
,cnn_model3/raw_output/kernel/Regularizer/SumSum3cnn_model3/raw_output/kernel/Regularizer/Square:y:07cnn_model3/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/Sum?
.cnn_model3/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.cnn_model3/raw_output/kernel/Regularizer/mul/x?
,cnn_model3/raw_output/kernel/Regularizer/mulMul7cnn_model3/raw_output/kernel/Regularizer/mul/x:output:05cnn_model3/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/mulw
IdentityIdentityraw_output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp;^cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^layer_norm_1/add/ReadVariableOp"^layer_norm_1/mul_4/ReadVariableOp ^layer_norm_2/add/ReadVariableOp"^layer_norm_2/mul_4/ReadVariableOp"^raw_output/BiasAdd/ReadVariableOp!^raw_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2<
conv_1/Conv2D/ReadVariableOpconv_1/Conv2D/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2<
conv_2/Conv2D/ReadVariableOpconv_2/Conv2D/ReadVariableOp2>
conv_3/BiasAdd/ReadVariableOpconv_3/BiasAdd/ReadVariableOp2<
conv_3/Conv2D/ReadVariableOpconv_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2B
layer_norm_1/add/ReadVariableOplayer_norm_1/add/ReadVariableOp2F
!layer_norm_1/mul_4/ReadVariableOp!layer_norm_1/mul_4/ReadVariableOp2B
layer_norm_2/add/ReadVariableOplayer_norm_2/add/ReadVariableOp2F
!layer_norm_2/mul_4/ReadVariableOp!layer_norm_2/mul_4/ReadVariableOp2F
!raw_output/BiasAdd/ReadVariableOp!raw_output/BiasAdd/ReadVariableOp2D
 raw_output/MatMul/ReadVariableOp raw_output/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs: 

_output_shapes
:: 

_output_shapes
:
??
?
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43593

inputs	
sub_y
	truediv_y?
%conv_1_conv2d_readvariableop_resource:4
&conv_1_biasadd_readvariableop_resource:8
*layer_norm_1_mul_4_readvariableop_resource:6
(layer_norm_1_add_readvariableop_resource:?
%conv_2_conv2d_readvariableop_resource:4
&conv_2_biasadd_readvariableop_resource:8
*layer_norm_2_mul_4_readvariableop_resource:6
(layer_norm_2_add_readvariableop_resource:?
%conv_3_conv2d_readvariableop_resource:4
&conv_3_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	?d3
%dense_biasadd_readvariableop_resource:d;
)raw_output_matmul_readvariableop_resource:d8
*raw_output_biasadd_readvariableop_resource:
identity??:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/BiasAdd/ReadVariableOp?conv_1/Conv2D/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?conv_2/Conv2D/ReadVariableOp?conv_3/BiasAdd/ReadVariableOp?conv_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?layer_norm_1/add/ReadVariableOp?!layer_norm_1/mul_4/ReadVariableOp?layer_norm_2/add/ReadVariableOp?!layer_norm_2/mul_4/ReadVariableOp?!raw_output/BiasAdd/ReadVariableOp? raw_output/MatMul/ReadVariableOpZ
subSubinputssub_y*
T0*/
_output_shapes
:?????????  2
subk
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  2	
truediv?
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_1/Conv2D/ReadVariableOp?
conv_1/Conv2DConv2Dtruediv:z:0$conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_1/Conv2D?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_1/BiasAdd/ReadVariableOp?
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_1/BiasAdd{
conv_1/LeakyRelu	LeakyReluconv_1/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_1/LeakyReluv
layer_norm_1/ShapeShapeconv_1/LeakyRelu:activations:0*
T0*
_output_shapes
:2
layer_norm_1/Shape?
 layer_norm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 layer_norm_1/strided_slice/stack?
"layer_norm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice/stack_1?
"layer_norm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice/stack_2?
layer_norm_1/strided_sliceStridedSlicelayer_norm_1/Shape:output:0)layer_norm_1/strided_slice/stack:output:0+layer_norm_1/strided_slice/stack_1:output:0+layer_norm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slicej
layer_norm_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/mul/x?
layer_norm_1/mulMullayer_norm_1/mul/x:output:0#layer_norm_1/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul?
"layer_norm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_1/stack?
$layer_norm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_1/stack_1?
$layer_norm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_1/stack_2?
layer_norm_1/strided_slice_1StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_1/stack:output:0-layer_norm_1/strided_slice_1/stack_1:output:0-layer_norm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_1?
layer_norm_1/mul_1Mullayer_norm_1/mul:z:0%layer_norm_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_1?
"layer_norm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_2/stack?
$layer_norm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_2/stack_1?
$layer_norm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_2/stack_2?
layer_norm_1/strided_slice_2StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_2/stack:output:0-layer_norm_1/strided_slice_2/stack_1:output:0-layer_norm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_2?
layer_norm_1/mul_2Mullayer_norm_1/mul_1:z:0%layer_norm_1/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_2?
"layer_norm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_3/stack?
$layer_norm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_3/stack_1?
$layer_norm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_3/stack_2?
layer_norm_1/strided_slice_3StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_3/stack:output:0-layer_norm_1/strided_slice_3/stack_1:output:0-layer_norm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_3n
layer_norm_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/mul_3/x?
layer_norm_1/mul_3Mullayer_norm_1/mul_3/x:output:0%layer_norm_1/strided_slice_3:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_3~
layer_norm_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/Reshape/shape/0~
layer_norm_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/Reshape/shape/3?
layer_norm_1/Reshape/shapePack%layer_norm_1/Reshape/shape/0:output:0layer_norm_1/mul_2:z:0layer_norm_1/mul_3:z:0%layer_norm_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
layer_norm_1/Reshape/shape?
layer_norm_1/ReshapeReshapeconv_1/LeakyRelu:activations:0#layer_norm_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_norm_1/Reshapew
layer_norm_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_1/ones/Less/y?
layer_norm_1/ones/LessLesslayer_norm_1/mul_2:z:0!layer_norm_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_1/ones/Less?
layer_norm_1/ones/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_1/ones/packedw
layer_norm_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
layer_norm_1/ones/Const?
layer_norm_1/onesFill!layer_norm_1/ones/packed:output:0 layer_norm_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_1/onesy
layer_norm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_1/zeros/Less/y?
layer_norm_1/zeros/LessLesslayer_norm_1/mul_2:z:0"layer_norm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_1/zeros/Less?
layer_norm_1/zeros/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_1/zeros/packedy
layer_norm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_norm_1/zeros/Const?
layer_norm_1/zerosFill"layer_norm_1/zeros/packed:output:0!layer_norm_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_1/zerosk
layer_norm_1/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_1/Consto
layer_norm_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_1/Const_1?
layer_norm_1/FusedBatchNormV3FusedBatchNormV3layer_norm_1/Reshape:output:0layer_norm_1/ones:output:0layer_norm_1/zeros:output:0layer_norm_1/Const:output:0layer_norm_1/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
layer_norm_1/FusedBatchNormV3?
layer_norm_1/Reshape_1Reshape!layer_norm_1/FusedBatchNormV3:y:0layer_norm_1/Shape:output:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/Reshape_1?
!layer_norm_1/mul_4/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02#
!layer_norm_1/mul_4/ReadVariableOp?
layer_norm_1/mul_4Mullayer_norm_1/Reshape_1:output:0)layer_norm_1/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/mul_4?
layer_norm_1/add/ReadVariableOpReadVariableOp(layer_norm_1_add_readvariableop_resource*
_output_shapes
:*
dtype02!
layer_norm_1/add/ReadVariableOp?
layer_norm_1/addAddV2layer_norm_1/mul_4:z:0'layer_norm_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/add?
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_2/Conv2D/ReadVariableOp?
conv_2/Conv2DConv2Dlayer_norm_1/add:z:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_2/Conv2D?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_2/BiasAdd/ReadVariableOp?
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_2/BiasAdd{
conv_2/LeakyRelu	LeakyReluconv_2/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_2/LeakyReluv
layer_norm_2/ShapeShapeconv_2/LeakyRelu:activations:0*
T0*
_output_shapes
:2
layer_norm_2/Shape?
 layer_norm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 layer_norm_2/strided_slice/stack?
"layer_norm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice/stack_1?
"layer_norm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice/stack_2?
layer_norm_2/strided_sliceStridedSlicelayer_norm_2/Shape:output:0)layer_norm_2/strided_slice/stack:output:0+layer_norm_2/strided_slice/stack_1:output:0+layer_norm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slicej
layer_norm_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/mul/x?
layer_norm_2/mulMullayer_norm_2/mul/x:output:0#layer_norm_2/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul?
"layer_norm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_1/stack?
$layer_norm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_1/stack_1?
$layer_norm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_1/stack_2?
layer_norm_2/strided_slice_1StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_1/stack:output:0-layer_norm_2/strided_slice_1/stack_1:output:0-layer_norm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_1?
layer_norm_2/mul_1Mullayer_norm_2/mul:z:0%layer_norm_2/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_1?
"layer_norm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_2/stack?
$layer_norm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_2/stack_1?
$layer_norm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_2/stack_2?
layer_norm_2/strided_slice_2StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_2/stack:output:0-layer_norm_2/strided_slice_2/stack_1:output:0-layer_norm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_2?
layer_norm_2/mul_2Mullayer_norm_2/mul_1:z:0%layer_norm_2/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_2?
"layer_norm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_3/stack?
$layer_norm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_3/stack_1?
$layer_norm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_3/stack_2?
layer_norm_2/strided_slice_3StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_3/stack:output:0-layer_norm_2/strided_slice_3/stack_1:output:0-layer_norm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_3n
layer_norm_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/mul_3/x?
layer_norm_2/mul_3Mullayer_norm_2/mul_3/x:output:0%layer_norm_2/strided_slice_3:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_3~
layer_norm_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/Reshape/shape/0~
layer_norm_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/Reshape/shape/3?
layer_norm_2/Reshape/shapePack%layer_norm_2/Reshape/shape/0:output:0layer_norm_2/mul_2:z:0layer_norm_2/mul_3:z:0%layer_norm_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
layer_norm_2/Reshape/shape?
layer_norm_2/ReshapeReshapeconv_2/LeakyRelu:activations:0#layer_norm_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_norm_2/Reshapew
layer_norm_2/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_2/ones/Less/y?
layer_norm_2/ones/LessLesslayer_norm_2/mul_2:z:0!layer_norm_2/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_2/ones/Less?
layer_norm_2/ones/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_2/ones/packedw
layer_norm_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
layer_norm_2/ones/Const?
layer_norm_2/onesFill!layer_norm_2/ones/packed:output:0 layer_norm_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_2/onesy
layer_norm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_2/zeros/Less/y?
layer_norm_2/zeros/LessLesslayer_norm_2/mul_2:z:0"layer_norm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_2/zeros/Less?
layer_norm_2/zeros/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_2/zeros/packedy
layer_norm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_norm_2/zeros/Const?
layer_norm_2/zerosFill"layer_norm_2/zeros/packed:output:0!layer_norm_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_2/zerosk
layer_norm_2/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_2/Consto
layer_norm_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_2/Const_1?
layer_norm_2/FusedBatchNormV3FusedBatchNormV3layer_norm_2/Reshape:output:0layer_norm_2/ones:output:0layer_norm_2/zeros:output:0layer_norm_2/Const:output:0layer_norm_2/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
layer_norm_2/FusedBatchNormV3?
layer_norm_2/Reshape_1Reshape!layer_norm_2/FusedBatchNormV3:y:0layer_norm_2/Shape:output:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/Reshape_1?
!layer_norm_2/mul_4/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02#
!layer_norm_2/mul_4/ReadVariableOp?
layer_norm_2/mul_4Mullayer_norm_2/Reshape_1:output:0)layer_norm_2/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/mul_4?
layer_norm_2/add/ReadVariableOpReadVariableOp(layer_norm_2_add_readvariableop_resource*
_output_shapes
:*
dtype02!
layer_norm_2/add/ReadVariableOp?
layer_norm_2/addAddV2layer_norm_2/mul_4:z:0'layer_norm_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/add?
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_3/Conv2D/ReadVariableOp?
conv_3/Conv2DConv2Dlayer_norm_2/add:z:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_3/Conv2D?
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_3/BiasAdd/ReadVariableOp?
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_3/BiasAdd{
conv_3/LeakyRelu	LeakyReluconv_3/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_3/LeakyReluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshapeconv_3/LeakyRelu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/BiasAddp
dense/LeakyRelu	LeakyReludense/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense/LeakyRelus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/dropout/Const?
dropout/dropout/MulMuldense/LeakyRelu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????d2
dropout/dropout/Mul{
dropout/dropout/ShapeShapedense/LeakyRelu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0*

seed*2.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d2
dropout/dropout/Mul_1?
 raw_output/MatMul/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02"
 raw_output/MatMul/ReadVariableOp?
raw_output/MatMulMatMuldropout/dropout/Mul_1:z:0(raw_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
raw_output/MatMul?
!raw_output/BiasAdd/ReadVariableOpReadVariableOp*raw_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!raw_output/BiasAdd/ReadVariableOp?
raw_output/BiasAddBiasAddraw_output/MatMul:product:0)raw_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
raw_output/BiasAdd?
raw_output/SoftmaxSoftmaxraw_output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
raw_output/Softmax?
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_1/kernel/Regularizer/SquareSquareBcnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_1/kernel/Regularizer/Square?
*cnn_model3/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_1/kernel/Regularizer/Const?
(cnn_model3/conv_1/kernel/Regularizer/SumSum/cnn_model3/conv_1/kernel/Regularizer/Square:y:03cnn_model3/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/Sum?
*cnn_model3/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_1/kernel/Regularizer/mul/x?
(cnn_model3/conv_1/kernel/Regularizer/mulMul3cnn_model3/conv_1/kernel/Regularizer/mul/x:output:01cnn_model3/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/mul?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_1/gamma/Regularizer/Square?
/cnn_model3/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_1/gamma/Regularizer/Const?
-cnn_model3/layer_norm_1/gamma/Regularizer/SumSum4cnn_model3/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_1/gamma/Regularizer/mulMul8cnn_model3/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/mul?
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_2/kernel/Regularizer/SquareSquareBcnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_2/kernel/Regularizer/Square?
*cnn_model3/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_2/kernel/Regularizer/Const?
(cnn_model3/conv_2/kernel/Regularizer/SumSum/cnn_model3/conv_2/kernel/Regularizer/Square:y:03cnn_model3/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/Sum?
*cnn_model3/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_2/kernel/Regularizer/mul/x?
(cnn_model3/conv_2/kernel/Regularizer/mulMul3cnn_model3/conv_2/kernel/Regularizer/mul/x:output:01cnn_model3/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/mul?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_2/gamma/Regularizer/Square?
/cnn_model3/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_2/gamma/Regularizer/Const?
-cnn_model3/layer_norm_2/gamma/Regularizer/SumSum4cnn_model3/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_2/gamma/Regularizer/mulMul8cnn_model3/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/mul?
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_3/kernel/Regularizer/SquareSquareBcnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_3/kernel/Regularizer/Square?
*cnn_model3/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_3/kernel/Regularizer/Const?
(cnn_model3/conv_3/kernel/Regularizer/SumSum/cnn_model3/conv_3/kernel/Regularizer/Square:y:03cnn_model3/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/Sum?
*cnn_model3/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_3/kernel/Regularizer/mul/x?
(cnn_model3/conv_3/kernel/Regularizer/mulMul3cnn_model3/conv_3/kernel/Regularizer/mul/x:output:01cnn_model3/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/mul?
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02;
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
*cnn_model3/dense/kernel/Regularizer/SquareSquareAcnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2,
*cnn_model3/dense/kernel/Regularizer/Square?
)cnn_model3/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)cnn_model3/dense/kernel/Regularizer/Const?
'cnn_model3/dense/kernel/Regularizer/SumSum.cnn_model3/dense/kernel/Regularizer/Square:y:02cnn_model3/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/Sum?
)cnn_model3/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)cnn_model3/dense/kernel/Regularizer/mul/x?
'cnn_model3/dense/kernel/Regularizer/mulMul2cnn_model3/dense/kernel/Regularizer/mul/x:output:00cnn_model3/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/mul?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02@
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
/cnn_model3/raw_output/kernel/Regularizer/SquareSquareFcnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d21
/cnn_model3/raw_output/kernel/Regularizer/Square?
.cnn_model3/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.cnn_model3/raw_output/kernel/Regularizer/Const?
,cnn_model3/raw_output/kernel/Regularizer/SumSum3cnn_model3/raw_output/kernel/Regularizer/Square:y:07cnn_model3/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/Sum?
.cnn_model3/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.cnn_model3/raw_output/kernel/Regularizer/mul/x?
,cnn_model3/raw_output/kernel/Regularizer/mulMul7cnn_model3/raw_output/kernel/Regularizer/mul/x:output:05cnn_model3/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/mulw
IdentityIdentityraw_output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp;^cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^layer_norm_1/add/ReadVariableOp"^layer_norm_1/mul_4/ReadVariableOp ^layer_norm_2/add/ReadVariableOp"^layer_norm_2/mul_4/ReadVariableOp"^raw_output/BiasAdd/ReadVariableOp!^raw_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2<
conv_1/Conv2D/ReadVariableOpconv_1/Conv2D/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2<
conv_2/Conv2D/ReadVariableOpconv_2/Conv2D/ReadVariableOp2>
conv_3/BiasAdd/ReadVariableOpconv_3/BiasAdd/ReadVariableOp2<
conv_3/Conv2D/ReadVariableOpconv_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2B
layer_norm_1/add/ReadVariableOplayer_norm_1/add/ReadVariableOp2F
!layer_norm_1/mul_4/ReadVariableOp!layer_norm_1/mul_4/ReadVariableOp2B
layer_norm_2/add/ReadVariableOplayer_norm_2/add/ReadVariableOp2F
!layer_norm_2/mul_4/ReadVariableOp!layer_norm_2/mul_4/ReadVariableOp2F
!raw_output/BiasAdd/ReadVariableOp!raw_output/BiasAdd/ReadVariableOp2D
 raw_output/MatMul/ReadVariableOp raw_output/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs: 

_output_shapes
:: 

_output_shapes
:
?
?
&__inference_conv_2_layer_call_fn_44108

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv_2_layer_call_and_return_conditional_losses_422662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
ށ
?	
E__inference_cnn_model3_layer_call_and_return_conditional_losses_42467

inputs	
sub_y
	truediv_y&
conv_1_42176:
conv_1_42178: 
layer_norm_1_42244: 
layer_norm_1_42246:&
conv_2_42267:
conv_2_42269: 
layer_norm_2_42335: 
layer_norm_2_42337:&
conv_3_42358:
conv_3_42360:
dense_42389:	?d
dense_42391:d"
raw_output_42419:d
raw_output_42421:
identity??:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?$layer_norm_1/StatefulPartitionedCall?$layer_norm_2/StatefulPartitionedCall?"raw_output/StatefulPartitionedCallZ
subSubinputssub_y*
T0*/
_output_shapes
:?????????  2
subk
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  2	
truediv?
conv_1/StatefulPartitionedCallStatefulPartitionedCalltruediv:z:0conv_1_42176conv_1_42178*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv_1_layer_call_and_return_conditional_losses_421752 
conv_1/StatefulPartitionedCall?
$layer_norm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0layer_norm_1_42244layer_norm_1_42246*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_422432&
$layer_norm_1/StatefulPartitionedCall?
conv_2/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_1/StatefulPartitionedCall:output:0conv_2_42267conv_2_42269*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv_2_layer_call_and_return_conditional_losses_422662 
conv_2/StatefulPartitionedCall?
$layer_norm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0layer_norm_2_42335layer_norm_2_42337*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_423342&
$layer_norm_2/StatefulPartitionedCall?
conv_3/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_2/StatefulPartitionedCall:output:0conv_3_42358conv_3_42360*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv_3_layer_call_and_return_conditional_losses_423572 
conv_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_423692
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_42389dense_42391*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_423882
dense/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_423992
dropout/PartitionedCall?
"raw_output/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0raw_output_42419raw_output_42421*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_raw_output_layer_call_and_return_conditional_losses_424182$
"raw_output/StatefulPartitionedCall?
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_1_42176*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_1/kernel/Regularizer/SquareSquareBcnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_1/kernel/Regularizer/Square?
*cnn_model3/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_1/kernel/Regularizer/Const?
(cnn_model3/conv_1/kernel/Regularizer/SumSum/cnn_model3/conv_1/kernel/Regularizer/Square:y:03cnn_model3/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/Sum?
*cnn_model3/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_1/kernel/Regularizer/mul/x?
(cnn_model3/conv_1/kernel/Regularizer/mulMul3cnn_model3/conv_1/kernel/Regularizer/mul/x:output:01cnn_model3/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/mul?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_1_42244*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_1/gamma/Regularizer/Square?
/cnn_model3/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_1/gamma/Regularizer/Const?
-cnn_model3/layer_norm_1/gamma/Regularizer/SumSum4cnn_model3/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_1/gamma/Regularizer/mulMul8cnn_model3/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/mul?
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_2_42267*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_2/kernel/Regularizer/SquareSquareBcnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_2/kernel/Regularizer/Square?
*cnn_model3/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_2/kernel/Regularizer/Const?
(cnn_model3/conv_2/kernel/Regularizer/SumSum/cnn_model3/conv_2/kernel/Regularizer/Square:y:03cnn_model3/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/Sum?
*cnn_model3/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_2/kernel/Regularizer/mul/x?
(cnn_model3/conv_2/kernel/Regularizer/mulMul3cnn_model3/conv_2/kernel/Regularizer/mul/x:output:01cnn_model3/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/mul?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_2_42335*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_2/gamma/Regularizer/Square?
/cnn_model3/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_2/gamma/Regularizer/Const?
-cnn_model3/layer_norm_2/gamma/Regularizer/SumSum4cnn_model3/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_2/gamma/Regularizer/mulMul8cnn_model3/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/mul?
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_3_42358*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_3/kernel/Regularizer/SquareSquareBcnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_3/kernel/Regularizer/Square?
*cnn_model3/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_3/kernel/Regularizer/Const?
(cnn_model3/conv_3/kernel/Regularizer/SumSum/cnn_model3/conv_3/kernel/Regularizer/Square:y:03cnn_model3/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/Sum?
*cnn_model3/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_3/kernel/Regularizer/mul/x?
(cnn_model3/conv_3/kernel/Regularizer/mulMul3cnn_model3/conv_3/kernel/Regularizer/mul/x:output:01cnn_model3/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/mul?
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42389*
_output_shapes
:	?d*
dtype02;
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
*cnn_model3/dense/kernel/Regularizer/SquareSquareAcnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2,
*cnn_model3/dense/kernel/Regularizer/Square?
)cnn_model3/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)cnn_model3/dense/kernel/Regularizer/Const?
'cnn_model3/dense/kernel/Regularizer/SumSum.cnn_model3/dense/kernel/Regularizer/Square:y:02cnn_model3/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/Sum?
)cnn_model3/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)cnn_model3/dense/kernel/Regularizer/mul/x?
'cnn_model3/dense/kernel/Regularizer/mulMul2cnn_model3/dense/kernel/Regularizer/mul/x:output:00cnn_model3/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/mul?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpraw_output_42419*
_output_shapes

:d*
dtype02@
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
/cnn_model3/raw_output/kernel/Regularizer/SquareSquareFcnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d21
/cnn_model3/raw_output/kernel/Regularizer/Square?
.cnn_model3/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.cnn_model3/raw_output/kernel/Regularizer/Const?
,cnn_model3/raw_output/kernel/Regularizer/SumSum3cnn_model3/raw_output/kernel/Regularizer/Square:y:07cnn_model3/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/Sum?
.cnn_model3/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.cnn_model3/raw_output/kernel/Regularizer/mul/x?
,cnn_model3/raw_output/kernel/Regularizer/mulMul7cnn_model3/raw_output/kernel/Regularizer/mul/x:output:05cnn_model3/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/mul?
IdentityIdentity+raw_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp;^cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^dense/StatefulPartitionedCall%^layer_norm_1/StatefulPartitionedCall%^layer_norm_2/StatefulPartitionedCall#^raw_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$layer_norm_1/StatefulPartitionedCall$layer_norm_1/StatefulPartitionedCall2L
$layer_norm_2/StatefulPartitionedCall$layer_norm_2/StatefulPartitionedCall2H
"raw_output/StatefulPartitionedCall"raw_output/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs: 

_output_shapes
:: 

_output_shapes
:
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_44292

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
`
'__inference_dropout_layer_call_fn_44287

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_425322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
@__inference_dense_layer_call_and_return_conditional_losses_42388

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d2
	LeakyRelu?
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02;
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
*cnn_model3/dense/kernel/Regularizer/SquareSquareAcnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2,
*cnn_model3/dense/kernel/Regularizer/Square?
)cnn_model3/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)cnn_model3/dense/kernel/Regularizer/Const?
'cnn_model3/dense/kernel/Regularizer/SumSum.cnn_model3/dense/kernel/Regularizer/Square:y:02cnn_model3/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/Sum?
)cnn_model3/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)cnn_model3/dense/kernel/Regularizer/mul/x?
'cnn_model3/dense/kernel/Regularizer/mulMul2cnn_model3/dense/kernel/Regularizer/mul/x:output:00cnn_model3/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/mulr
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????d2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp:^cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2v
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_43054
input_1
unknown
	unknown_0#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:

unknown_11:	?d

unknown_12:d

unknown_13:d

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_421472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????  
!
_user_specified_name	input_1: 

_output_shapes
:: 

_output_shapes
:
?
?
A__inference_conv_1_layer_call_and_return_conditional_losses_42175

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAddf
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????2
	LeakyRelu?
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_1/kernel/Regularizer/SquareSquareBcnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_1/kernel/Regularizer/Square?
*cnn_model3/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_1/kernel/Regularizer/Const?
(cnn_model3/conv_1/kernel/Regularizer/SumSum/cnn_model3/conv_1/kernel/Regularizer/Square:y:03cnn_model3/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/Sum?
*cnn_model3/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_1/kernel/Regularizer/mul/x?
(cnn_model3/conv_1/kernel/Regularizer/mulMul3cnn_model3/conv_1/kernel/Regularizer/mul/x:output:01cnn_model3/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/mulz
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
E__inference_raw_output_layer_call_and_return_conditional_losses_42418

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02@
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
/cnn_model3/raw_output/kernel/Regularizer/SquareSquareFcnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d21
/cnn_model3/raw_output/kernel/Regularizer/Square?
.cnn_model3/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.cnn_model3/raw_output/kernel/Regularizer/Const?
,cnn_model3/raw_output/kernel/Regularizer/SumSum3cnn_model3/raw_output/kernel/Regularizer/Square:y:07cnn_model3/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/Sum?
.cnn_model3/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.cnn_model3/raw_output/kernel/Regularizer/mul/x?
,cnn_model3/raw_output/kernel/Regularizer/mulMul7cnn_model3/raw_output/kernel/Regularizer/mul/x:output:05cnn_model3/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/mull
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_42532

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?

E__inference_cnn_model3_layer_call_and_return_conditional_losses_42727

inputs	
sub_y
	truediv_y&
conv_1_42647:
conv_1_42649: 
layer_norm_1_42652: 
layer_norm_1_42654:&
conv_2_42657:
conv_2_42659: 
layer_norm_2_42662: 
layer_norm_2_42664:&
conv_3_42667:
conv_3_42669:
dense_42673:	?d
dense_42675:d"
raw_output_42679:d
raw_output_42681:
identity??:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?$layer_norm_1/StatefulPartitionedCall?$layer_norm_2/StatefulPartitionedCall?"raw_output/StatefulPartitionedCallZ
subSubinputssub_y*
T0*/
_output_shapes
:?????????  2
subk
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  2	
truediv?
conv_1/StatefulPartitionedCallStatefulPartitionedCalltruediv:z:0conv_1_42647conv_1_42649*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv_1_layer_call_and_return_conditional_losses_421752 
conv_1/StatefulPartitionedCall?
$layer_norm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0layer_norm_1_42652layer_norm_1_42654*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_422432&
$layer_norm_1/StatefulPartitionedCall?
conv_2/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_1/StatefulPartitionedCall:output:0conv_2_42657conv_2_42659*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv_2_layer_call_and_return_conditional_losses_422662 
conv_2/StatefulPartitionedCall?
$layer_norm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0layer_norm_2_42662layer_norm_2_42664*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_423342&
$layer_norm_2/StatefulPartitionedCall?
conv_3/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_2/StatefulPartitionedCall:output:0conv_3_42667conv_3_42669*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv_3_layer_call_and_return_conditional_losses_423572 
conv_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_423692
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_42673dense_42675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_423882
dense/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_425322!
dropout/StatefulPartitionedCall?
"raw_output/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0raw_output_42679raw_output_42681*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_raw_output_layer_call_and_return_conditional_losses_424182$
"raw_output/StatefulPartitionedCall?
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_1_42647*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_1/kernel/Regularizer/SquareSquareBcnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_1/kernel/Regularizer/Square?
*cnn_model3/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_1/kernel/Regularizer/Const?
(cnn_model3/conv_1/kernel/Regularizer/SumSum/cnn_model3/conv_1/kernel/Regularizer/Square:y:03cnn_model3/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/Sum?
*cnn_model3/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_1/kernel/Regularizer/mul/x?
(cnn_model3/conv_1/kernel/Regularizer/mulMul3cnn_model3/conv_1/kernel/Regularizer/mul/x:output:01cnn_model3/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/mul?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_1_42652*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_1/gamma/Regularizer/Square?
/cnn_model3/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_1/gamma/Regularizer/Const?
-cnn_model3/layer_norm_1/gamma/Regularizer/SumSum4cnn_model3/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_1/gamma/Regularizer/mulMul8cnn_model3/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/mul?
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_2_42657*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_2/kernel/Regularizer/SquareSquareBcnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_2/kernel/Regularizer/Square?
*cnn_model3/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_2/kernel/Regularizer/Const?
(cnn_model3/conv_2/kernel/Regularizer/SumSum/cnn_model3/conv_2/kernel/Regularizer/Square:y:03cnn_model3/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/Sum?
*cnn_model3/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_2/kernel/Regularizer/mul/x?
(cnn_model3/conv_2/kernel/Regularizer/mulMul3cnn_model3/conv_2/kernel/Regularizer/mul/x:output:01cnn_model3/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/mul?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_2_42662*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_2/gamma/Regularizer/Square?
/cnn_model3/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_2/gamma/Regularizer/Const?
-cnn_model3/layer_norm_2/gamma/Regularizer/SumSum4cnn_model3/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_2/gamma/Regularizer/mulMul8cnn_model3/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/mul?
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_3_42667*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_3/kernel/Regularizer/SquareSquareBcnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_3/kernel/Regularizer/Square?
*cnn_model3/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_3/kernel/Regularizer/Const?
(cnn_model3/conv_3/kernel/Regularizer/SumSum/cnn_model3/conv_3/kernel/Regularizer/Square:y:03cnn_model3/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/Sum?
*cnn_model3/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_3/kernel/Regularizer/mul/x?
(cnn_model3/conv_3/kernel/Regularizer/mulMul3cnn_model3/conv_3/kernel/Regularizer/mul/x:output:01cnn_model3/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/mul?
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42673*
_output_shapes
:	?d*
dtype02;
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
*cnn_model3/dense/kernel/Regularizer/SquareSquareAcnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2,
*cnn_model3/dense/kernel/Regularizer/Square?
)cnn_model3/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)cnn_model3/dense/kernel/Regularizer/Const?
'cnn_model3/dense/kernel/Regularizer/SumSum.cnn_model3/dense/kernel/Regularizer/Square:y:02cnn_model3/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/Sum?
)cnn_model3/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)cnn_model3/dense/kernel/Regularizer/mul/x?
'cnn_model3/dense/kernel/Regularizer/mulMul2cnn_model3/dense/kernel/Regularizer/mul/x:output:00cnn_model3/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/mul?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpraw_output_42679*
_output_shapes

:d*
dtype02@
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
/cnn_model3/raw_output/kernel/Regularizer/SquareSquareFcnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d21
/cnn_model3/raw_output/kernel/Regularizer/Square?
.cnn_model3/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.cnn_model3/raw_output/kernel/Regularizer/Const?
,cnn_model3/raw_output/kernel/Regularizer/SumSum3cnn_model3/raw_output/kernel/Regularizer/Square:y:07cnn_model3/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/Sum?
.cnn_model3/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.cnn_model3/raw_output/kernel/Regularizer/mul/x?
,cnn_model3/raw_output/kernel/Regularizer/mulMul7cnn_model3/raw_output/kernel/Regularizer/mul/x:output:05cnn_model3/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/mul?
IdentityIdentity+raw_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp;^cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall%^layer_norm_1/StatefulPartitionedCall%^layer_norm_2/StatefulPartitionedCall#^raw_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2L
$layer_norm_1/StatefulPartitionedCall$layer_norm_1/StatefulPartitionedCall2L
$layer_norm_2/StatefulPartitionedCall$layer_norm_2/StatefulPartitionedCall2H
"raw_output/StatefulPartitionedCall"raw_output/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs: 

_output_shapes
:: 

_output_shapes
:
?
?
&__inference_conv_3_layer_call_fn_44217

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv_3_layer_call_and_return_conditional_losses_423572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
C
'__inference_flatten_layer_call_fn_44239

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_423692
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_44304

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43785
input_1	
sub_y
	truediv_y?
%conv_1_conv2d_readvariableop_resource:4
&conv_1_biasadd_readvariableop_resource:8
*layer_norm_1_mul_4_readvariableop_resource:6
(layer_norm_1_add_readvariableop_resource:?
%conv_2_conv2d_readvariableop_resource:4
&conv_2_biasadd_readvariableop_resource:8
*layer_norm_2_mul_4_readvariableop_resource:6
(layer_norm_2_add_readvariableop_resource:?
%conv_3_conv2d_readvariableop_resource:4
&conv_3_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	?d3
%dense_biasadd_readvariableop_resource:d;
)raw_output_matmul_readvariableop_resource:d8
*raw_output_biasadd_readvariableop_resource:
identity??:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/BiasAdd/ReadVariableOp?conv_1/Conv2D/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?conv_2/Conv2D/ReadVariableOp?conv_3/BiasAdd/ReadVariableOp?conv_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?layer_norm_1/add/ReadVariableOp?!layer_norm_1/mul_4/ReadVariableOp?layer_norm_2/add/ReadVariableOp?!layer_norm_2/mul_4/ReadVariableOp?!raw_output/BiasAdd/ReadVariableOp? raw_output/MatMul/ReadVariableOp[
subSubinput_1sub_y*
T0*/
_output_shapes
:?????????  2
subk
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  2	
truediv?
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_1/Conv2D/ReadVariableOp?
conv_1/Conv2DConv2Dtruediv:z:0$conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_1/Conv2D?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_1/BiasAdd/ReadVariableOp?
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_1/BiasAdd{
conv_1/LeakyRelu	LeakyReluconv_1/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_1/LeakyReluv
layer_norm_1/ShapeShapeconv_1/LeakyRelu:activations:0*
T0*
_output_shapes
:2
layer_norm_1/Shape?
 layer_norm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 layer_norm_1/strided_slice/stack?
"layer_norm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice/stack_1?
"layer_norm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice/stack_2?
layer_norm_1/strided_sliceStridedSlicelayer_norm_1/Shape:output:0)layer_norm_1/strided_slice/stack:output:0+layer_norm_1/strided_slice/stack_1:output:0+layer_norm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slicej
layer_norm_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/mul/x?
layer_norm_1/mulMullayer_norm_1/mul/x:output:0#layer_norm_1/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul?
"layer_norm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_1/stack?
$layer_norm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_1/stack_1?
$layer_norm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_1/stack_2?
layer_norm_1/strided_slice_1StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_1/stack:output:0-layer_norm_1/strided_slice_1/stack_1:output:0-layer_norm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_1?
layer_norm_1/mul_1Mullayer_norm_1/mul:z:0%layer_norm_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_1?
"layer_norm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_2/stack?
$layer_norm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_2/stack_1?
$layer_norm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_2/stack_2?
layer_norm_1/strided_slice_2StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_2/stack:output:0-layer_norm_1/strided_slice_2/stack_1:output:0-layer_norm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_2?
layer_norm_1/mul_2Mullayer_norm_1/mul_1:z:0%layer_norm_1/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_2?
"layer_norm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_1/strided_slice_3/stack?
$layer_norm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_3/stack_1?
$layer_norm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_1/strided_slice_3/stack_2?
layer_norm_1/strided_slice_3StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_3/stack:output:0-layer_norm_1/strided_slice_3/stack_1:output:0-layer_norm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_1/strided_slice_3n
layer_norm_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/mul_3/x?
layer_norm_1/mul_3Mullayer_norm_1/mul_3/x:output:0%layer_norm_1/strided_slice_3:output:0*
T0*
_output_shapes
: 2
layer_norm_1/mul_3~
layer_norm_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/Reshape/shape/0~
layer_norm_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_1/Reshape/shape/3?
layer_norm_1/Reshape/shapePack%layer_norm_1/Reshape/shape/0:output:0layer_norm_1/mul_2:z:0layer_norm_1/mul_3:z:0%layer_norm_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
layer_norm_1/Reshape/shape?
layer_norm_1/ReshapeReshapeconv_1/LeakyRelu:activations:0#layer_norm_1/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_norm_1/Reshapew
layer_norm_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_1/ones/Less/y?
layer_norm_1/ones/LessLesslayer_norm_1/mul_2:z:0!layer_norm_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_1/ones/Less?
layer_norm_1/ones/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_1/ones/packedw
layer_norm_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
layer_norm_1/ones/Const?
layer_norm_1/onesFill!layer_norm_1/ones/packed:output:0 layer_norm_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_1/onesy
layer_norm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_1/zeros/Less/y?
layer_norm_1/zeros/LessLesslayer_norm_1/mul_2:z:0"layer_norm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_1/zeros/Less?
layer_norm_1/zeros/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_1/zeros/packedy
layer_norm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_norm_1/zeros/Const?
layer_norm_1/zerosFill"layer_norm_1/zeros/packed:output:0!layer_norm_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_1/zerosk
layer_norm_1/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_1/Consto
layer_norm_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_1/Const_1?
layer_norm_1/FusedBatchNormV3FusedBatchNormV3layer_norm_1/Reshape:output:0layer_norm_1/ones:output:0layer_norm_1/zeros:output:0layer_norm_1/Const:output:0layer_norm_1/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
layer_norm_1/FusedBatchNormV3?
layer_norm_1/Reshape_1Reshape!layer_norm_1/FusedBatchNormV3:y:0layer_norm_1/Shape:output:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/Reshape_1?
!layer_norm_1/mul_4/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02#
!layer_norm_1/mul_4/ReadVariableOp?
layer_norm_1/mul_4Mullayer_norm_1/Reshape_1:output:0)layer_norm_1/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/mul_4?
layer_norm_1/add/ReadVariableOpReadVariableOp(layer_norm_1_add_readvariableop_resource*
_output_shapes
:*
dtype02!
layer_norm_1/add/ReadVariableOp?
layer_norm_1/addAddV2layer_norm_1/mul_4:z:0'layer_norm_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_1/add?
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_2/Conv2D/ReadVariableOp?
conv_2/Conv2DConv2Dlayer_norm_1/add:z:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_2/Conv2D?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_2/BiasAdd/ReadVariableOp?
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_2/BiasAdd{
conv_2/LeakyRelu	LeakyReluconv_2/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_2/LeakyReluv
layer_norm_2/ShapeShapeconv_2/LeakyRelu:activations:0*
T0*
_output_shapes
:2
layer_norm_2/Shape?
 layer_norm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 layer_norm_2/strided_slice/stack?
"layer_norm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice/stack_1?
"layer_norm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice/stack_2?
layer_norm_2/strided_sliceStridedSlicelayer_norm_2/Shape:output:0)layer_norm_2/strided_slice/stack:output:0+layer_norm_2/strided_slice/stack_1:output:0+layer_norm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slicej
layer_norm_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/mul/x?
layer_norm_2/mulMullayer_norm_2/mul/x:output:0#layer_norm_2/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul?
"layer_norm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_1/stack?
$layer_norm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_1/stack_1?
$layer_norm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_1/stack_2?
layer_norm_2/strided_slice_1StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_1/stack:output:0-layer_norm_2/strided_slice_1/stack_1:output:0-layer_norm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_1?
layer_norm_2/mul_1Mullayer_norm_2/mul:z:0%layer_norm_2/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_1?
"layer_norm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_2/stack?
$layer_norm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_2/stack_1?
$layer_norm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_2/stack_2?
layer_norm_2/strided_slice_2StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_2/stack:output:0-layer_norm_2/strided_slice_2/stack_1:output:0-layer_norm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_2?
layer_norm_2/mul_2Mullayer_norm_2/mul_1:z:0%layer_norm_2/strided_slice_2:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_2?
"layer_norm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"layer_norm_2/strided_slice_3/stack?
$layer_norm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_3/stack_1?
$layer_norm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$layer_norm_2/strided_slice_3/stack_2?
layer_norm_2/strided_slice_3StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_3/stack:output:0-layer_norm_2/strided_slice_3/stack_1:output:0-layer_norm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
layer_norm_2/strided_slice_3n
layer_norm_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/mul_3/x?
layer_norm_2/mul_3Mullayer_norm_2/mul_3/x:output:0%layer_norm_2/strided_slice_3:output:0*
T0*
_output_shapes
: 2
layer_norm_2/mul_3~
layer_norm_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/Reshape/shape/0~
layer_norm_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
layer_norm_2/Reshape/shape/3?
layer_norm_2/Reshape/shapePack%layer_norm_2/Reshape/shape/0:output:0layer_norm_2/mul_2:z:0layer_norm_2/mul_3:z:0%layer_norm_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
layer_norm_2/Reshape/shape?
layer_norm_2/ReshapeReshapeconv_2/LeakyRelu:activations:0#layer_norm_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_norm_2/Reshapew
layer_norm_2/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_2/ones/Less/y?
layer_norm_2/ones/LessLesslayer_norm_2/mul_2:z:0!layer_norm_2/ones/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_2/ones/Less?
layer_norm_2/ones/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_2/ones/packedw
layer_norm_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
layer_norm_2/ones/Const?
layer_norm_2/onesFill!layer_norm_2/ones/packed:output:0 layer_norm_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_2/onesy
layer_norm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
layer_norm_2/zeros/Less/y?
layer_norm_2/zeros/LessLesslayer_norm_2/mul_2:z:0"layer_norm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
layer_norm_2/zeros/Less?
layer_norm_2/zeros/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:2
layer_norm_2/zeros/packedy
layer_norm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_norm_2/zeros/Const?
layer_norm_2/zerosFill"layer_norm_2/zeros/packed:output:0!layer_norm_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_norm_2/zerosk
layer_norm_2/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_2/Consto
layer_norm_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_norm_2/Const_1?
layer_norm_2/FusedBatchNormV3FusedBatchNormV3layer_norm_2/Reshape:output:0layer_norm_2/ones:output:0layer_norm_2/zeros:output:0layer_norm_2/Const:output:0layer_norm_2/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
layer_norm_2/FusedBatchNormV3?
layer_norm_2/Reshape_1Reshape!layer_norm_2/FusedBatchNormV3:y:0layer_norm_2/Shape:output:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/Reshape_1?
!layer_norm_2/mul_4/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02#
!layer_norm_2/mul_4/ReadVariableOp?
layer_norm_2/mul_4Mullayer_norm_2/Reshape_1:output:0)layer_norm_2/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/mul_4?
layer_norm_2/add/ReadVariableOpReadVariableOp(layer_norm_2_add_readvariableop_resource*
_output_shapes
:*
dtype02!
layer_norm_2/add/ReadVariableOp?
layer_norm_2/addAddV2layer_norm_2/mul_4:z:0'layer_norm_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
layer_norm_2/add?
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv_3/Conv2D/ReadVariableOp?
conv_3/Conv2DConv2Dlayer_norm_2/add:z:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv_3/Conv2D?
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv_3/BiasAdd/ReadVariableOp?
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv_3/BiasAdd{
conv_3/LeakyRelu	LeakyReluconv_3/BiasAdd:output:0*/
_output_shapes
:?????????2
conv_3/LeakyReluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshapeconv_3/LeakyRelu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/BiasAddp
dense/LeakyRelu	LeakyReludense/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense/LeakyRelu?
dropout/IdentityIdentitydense/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d2
dropout/Identity?
 raw_output/MatMul/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02"
 raw_output/MatMul/ReadVariableOp?
raw_output/MatMulMatMuldropout/Identity:output:0(raw_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
raw_output/MatMul?
!raw_output/BiasAdd/ReadVariableOpReadVariableOp*raw_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!raw_output/BiasAdd/ReadVariableOp?
raw_output/BiasAddBiasAddraw_output/MatMul:product:0)raw_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
raw_output/BiasAdd?
raw_output/SoftmaxSoftmaxraw_output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
raw_output/Softmax?
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_1/kernel/Regularizer/SquareSquareBcnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_1/kernel/Regularizer/Square?
*cnn_model3/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_1/kernel/Regularizer/Const?
(cnn_model3/conv_1/kernel/Regularizer/SumSum/cnn_model3/conv_1/kernel/Regularizer/Square:y:03cnn_model3/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/Sum?
*cnn_model3/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_1/kernel/Regularizer/mul/x?
(cnn_model3/conv_1/kernel/Regularizer/mulMul3cnn_model3/conv_1/kernel/Regularizer/mul/x:output:01cnn_model3/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_1/kernel/Regularizer/mul?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_1/gamma/Regularizer/Square?
/cnn_model3/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_1/gamma/Regularizer/Const?
-cnn_model3/layer_norm_1/gamma/Regularizer/SumSum4cnn_model3/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_1/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_1/gamma/Regularizer/mulMul8cnn_model3/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_1/gamma/Regularizer/mul?
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_2/kernel/Regularizer/SquareSquareBcnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_2/kernel/Regularizer/Square?
*cnn_model3/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_2/kernel/Regularizer/Const?
(cnn_model3/conv_2/kernel/Regularizer/SumSum/cnn_model3/conv_2/kernel/Regularizer/Square:y:03cnn_model3/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/Sum?
*cnn_model3/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_2/kernel/Regularizer/mul/x?
(cnn_model3/conv_2/kernel/Regularizer/mulMul3cnn_model3/conv_2/kernel/Regularizer/mul/x:output:01cnn_model3/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/mul?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype02A
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
0cnn_model3/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:22
0cnn_model3/layer_norm_2/gamma/Regularizer/Square?
/cnn_model3/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/cnn_model3/layer_norm_2/gamma/Regularizer/Const?
-cnn_model3/layer_norm_2/gamma/Regularizer/SumSum4cnn_model3/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model3/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/Sum?
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/cnn_model3/layer_norm_2/gamma/Regularizer/mul/x?
-cnn_model3/layer_norm_2/gamma/Regularizer/mulMul8cnn_model3/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model3/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-cnn_model3/layer_norm_2/gamma/Regularizer/mul?
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_3/kernel/Regularizer/SquareSquareBcnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_3/kernel/Regularizer/Square?
*cnn_model3/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_3/kernel/Regularizer/Const?
(cnn_model3/conv_3/kernel/Regularizer/SumSum/cnn_model3/conv_3/kernel/Regularizer/Square:y:03cnn_model3/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/Sum?
*cnn_model3/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_3/kernel/Regularizer/mul/x?
(cnn_model3/conv_3/kernel/Regularizer/mulMul3cnn_model3/conv_3/kernel/Regularizer/mul/x:output:01cnn_model3/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_3/kernel/Regularizer/mul?
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02;
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp?
*cnn_model3/dense/kernel/Regularizer/SquareSquareAcnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?d2,
*cnn_model3/dense/kernel/Regularizer/Square?
)cnn_model3/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)cnn_model3/dense/kernel/Regularizer/Const?
'cnn_model3/dense/kernel/Regularizer/SumSum.cnn_model3/dense/kernel/Regularizer/Square:y:02cnn_model3/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/Sum?
)cnn_model3/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)cnn_model3/dense/kernel/Regularizer/mul/x?
'cnn_model3/dense/kernel/Regularizer/mulMul2cnn_model3/dense/kernel/Regularizer/mul/x:output:00cnn_model3/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'cnn_model3/dense/kernel/Regularizer/mul?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02@
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp?
/cnn_model3/raw_output/kernel/Regularizer/SquareSquareFcnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d21
/cnn_model3/raw_output/kernel/Regularizer/Square?
.cnn_model3/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.cnn_model3/raw_output/kernel/Regularizer/Const?
,cnn_model3/raw_output/kernel/Regularizer/SumSum3cnn_model3/raw_output/kernel/Regularizer/Square:y:07cnn_model3/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/Sum?
.cnn_model3/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.cnn_model3/raw_output/kernel/Regularizer/mul/x?
,cnn_model3/raw_output/kernel/Regularizer/mulMul7cnn_model3/raw_output/kernel/Regularizer/mul/x:output:05cnn_model3/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,cnn_model3/raw_output/kernel/Regularizer/mulw
IdentityIdentityraw_output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp;^cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^layer_norm_1/add/ReadVariableOp"^layer_norm_1/mul_4/ReadVariableOp ^layer_norm_2/add/ReadVariableOp"^layer_norm_2/mul_4/ReadVariableOp"^raw_output/BiasAdd/ReadVariableOp!^raw_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model3/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model3/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model3/raw_output/kernel/Regularizer/Square/ReadVariableOp2>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2<
conv_1/Conv2D/ReadVariableOpconv_1/Conv2D/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2<
conv_2/Conv2D/ReadVariableOpconv_2/Conv2D/ReadVariableOp2>
conv_3/BiasAdd/ReadVariableOpconv_3/BiasAdd/ReadVariableOp2<
conv_3/Conv2D/ReadVariableOpconv_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2B
layer_norm_1/add/ReadVariableOplayer_norm_1/add/ReadVariableOp2F
!layer_norm_1/mul_4/ReadVariableOp!layer_norm_1/mul_4/ReadVariableOp2B
layer_norm_2/add/ReadVariableOplayer_norm_2/add/ReadVariableOp2F
!layer_norm_2/mul_4/ReadVariableOp!layer_norm_2/mul_4/ReadVariableOp2F
!raw_output/BiasAdd/ReadVariableOp!raw_output/BiasAdd/ReadVariableOp2D
 raw_output/MatMul/ReadVariableOp raw_output/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????  
!
_user_specified_name	input_1: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference_loss_fn_2_44369]
Ccnn_model3_conv_2_kernel_regularizer_square_readvariableop_resource:
identity??:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCcnn_model3_conv_2_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype02<
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp?
+cnn_model3/conv_2/kernel/Regularizer/SquareSquareBcnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2-
+cnn_model3/conv_2/kernel/Regularizer/Square?
*cnn_model3/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*cnn_model3/conv_2/kernel/Regularizer/Const?
(cnn_model3/conv_2/kernel/Regularizer/SumSum/cnn_model3/conv_2/kernel/Regularizer/Square:y:03cnn_model3/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/Sum?
*cnn_model3/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2,
*cnn_model3/conv_2/kernel/Regularizer/mul/x?
(cnn_model3/conv_2/kernel/Regularizer/mulMul3cnn_model3/conv_2/kernel/Regularizer/mul/x:output:01cnn_model3/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2*
(cnn_model3/conv_2/kernel/Regularizer/mulv
IdentityIdentity,cnn_model3/conv_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp;^cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model3/conv_2/kernel/Regularizer/Square/ReadVariableOp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????  <
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ե
?
	conv1
	norm1
	conv2
	norm2
	conv3
flat

dense1
	drop1
	y_

	variables
trainable_variables
regularization_losses
	keras_api

signatures
u__call__
v_default_save_signature
*w&call_and_return_all_conditional_losses"
_tf_keras_model
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
?
axis
	gamma
beta
trainable_variables
	variables
regularization_losses
	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
?
"axis
	#gamma
$beta
%trainable_variables
&	variables
'regularization_losses
(	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

)kernel
*bias
+trainable_variables
,	variables
-regularization_losses
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
/trainable_variables
0	variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

3kernel
4bias
5trainable_variables
6	variables
7regularization_losses
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
9trainable_variables
:	variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

=kernel
>bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
0
1
2
3
4
5
#6
$7
)8
*9
310
411
=12
>13"
trackable_list_wrapper
?
0
1
2
3
4
5
#6
$7
)8
*9
310
411
=12
>13"
trackable_list_wrapper
X
?0
?1
?2
?3
?4
?5
?6"
trackable_list_wrapper
?

	variables
trainable_variables
Clayer_metrics
Dmetrics
Elayer_regularization_losses
Fnon_trainable_variables
regularization_losses

Glayers
u__call__
v_default_save_signature
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
2:02cnn_model3/conv_1/kernel
$:"2cnn_model3/conv_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
trainable_variables
	variables
Hmetrics
Ilayer_metrics
Jlayer_regularization_losses
Knon_trainable_variables
regularization_losses

Llayers
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2cnn_model3/layer_norm_1/gamma
*:(2cnn_model3/layer_norm_1/beta
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
trainable_variables
	variables
Mmetrics
Nlayer_metrics
Olayer_regularization_losses
Pnon_trainable_variables
regularization_losses

Qlayers
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
2:02cnn_model3/conv_2/kernel
$:"2cnn_model3/conv_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
trainable_variables
	variables
Rmetrics
Slayer_metrics
Tlayer_regularization_losses
Unon_trainable_variables
 regularization_losses

Vlayers
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2cnn_model3/layer_norm_2/gamma
*:(2cnn_model3/layer_norm_2/beta
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
%trainable_variables
&	variables
Wmetrics
Xlayer_metrics
Ylayer_regularization_losses
Znon_trainable_variables
'regularization_losses

[layers
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2:02cnn_model3/conv_3/kernel
$:"2cnn_model3/conv_3/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
+trainable_variables
,	variables
\metrics
]layer_metrics
^layer_regularization_losses
_non_trainable_variables
-regularization_losses

`layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
/trainable_variables
0	variables
ametrics
blayer_metrics
clayer_regularization_losses
dnon_trainable_variables
1regularization_losses

elayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(	?d2cnn_model3/dense/kernel
#:!d2cnn_model3/dense/bias
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
5trainable_variables
6	variables
fmetrics
glayer_metrics
hlayer_regularization_losses
inon_trainable_variables
7regularization_losses

jlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
9trainable_variables
:	variables
kmetrics
llayer_metrics
mlayer_regularization_losses
nnon_trainable_variables
;regularization_losses

olayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,d2cnn_model3/raw_output/kernel
(:&2cnn_model3/raw_output/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?trainable_variables
@	variables
pmetrics
qlayer_metrics
rlayer_regularization_losses
snon_trainable_variables
Aregularization_losses

tlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
*__inference_cnn_model3_layer_call_fn_43091
*__inference_cnn_model3_layer_call_fn_43128
*__inference_cnn_model3_layer_call_fn_43165
*__inference_cnn_model3_layer_call_fn_43202?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_42147input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43394
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43593
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43785
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43984?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_conv_1_layer_call_fn_43999?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv_1_layer_call_and_return_conditional_losses_44016?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_layer_norm_1_layer_call_fn_44031?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_44093?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_conv_2_layer_call_fn_44108?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv_2_layer_call_and_return_conditional_losses_44125?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_layer_norm_2_layer_call_fn_44140?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_44202?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_conv_3_layer_call_fn_44217?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv_3_layer_call_and_return_conditional_losses_44234?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_flatten_layer_call_fn_44239?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_flatten_layer_call_and_return_conditional_losses_44245?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_44260?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_44277?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dropout_layer_call_fn_44282
'__inference_dropout_layer_call_fn_44287?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dropout_layer_call_and_return_conditional_losses_44292
B__inference_dropout_layer_call_and_return_conditional_losses_44304?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_raw_output_layer_call_fn_44319?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_raw_output_layer_call_and_return_conditional_losses_44336?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_44347?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_44358?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_44369?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_44380?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_44391?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_44402?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_6_44413?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
#__inference_signature_wrapper_43054input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
	J
Const
J	
Const_1?
 __inference__wrapped_model_42147???#$)*34=>8?5
.?+
)?&
input_1?????????  
? "3?0
.
output_1"?
output_1??????????
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43394x??#$)*34=>;?8
1?.
(?%
inputs?????????  
p 
? "%?"
?
0?????????
? ?
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43593x??#$)*34=>;?8
1?.
(?%
inputs?????????  
p
? "%?"
?
0?????????
? ?
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43785y??#$)*34=><?9
2?/
)?&
input_1?????????  
p 
? "%?"
?
0?????????
? ?
E__inference_cnn_model3_layer_call_and_return_conditional_losses_43984y??#$)*34=><?9
2?/
)?&
input_1?????????  
p
? "%?"
?
0?????????
? ?
*__inference_cnn_model3_layer_call_fn_43091l??#$)*34=><?9
2?/
)?&
input_1?????????  
p 
? "???????????
*__inference_cnn_model3_layer_call_fn_43128k??#$)*34=>;?8
1?.
(?%
inputs?????????  
p 
? "???????????
*__inference_cnn_model3_layer_call_fn_43165k??#$)*34=>;?8
1?.
(?%
inputs?????????  
p
? "???????????
*__inference_cnn_model3_layer_call_fn_43202l??#$)*34=><?9
2?/
)?&
input_1?????????  
p
? "???????????
A__inference_conv_1_layer_call_and_return_conditional_losses_44016l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????
? ?
&__inference_conv_1_layer_call_fn_43999_7?4
-?*
(?%
inputs?????????  
? " ???????????
A__inference_conv_2_layer_call_and_return_conditional_losses_44125l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
&__inference_conv_2_layer_call_fn_44108_7?4
-?*
(?%
inputs?????????
? " ???????????
A__inference_conv_3_layer_call_and_return_conditional_losses_44234l)*7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
&__inference_conv_3_layer_call_fn_44217_)*7?4
-?*
(?%
inputs?????????
? " ???????????
@__inference_dense_layer_call_and_return_conditional_losses_44277]340?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? y
%__inference_dense_layer_call_fn_44260P340?-
&?#
!?
inputs??????????
? "??????????d?
B__inference_dropout_layer_call_and_return_conditional_losses_44292\3?0
)?&
 ?
inputs?????????d
p 
? "%?"
?
0?????????d
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_44304\3?0
)?&
 ?
inputs?????????d
p
? "%?"
?
0?????????d
? z
'__inference_dropout_layer_call_fn_44282O3?0
)?&
 ?
inputs?????????d
p 
? "??????????dz
'__inference_dropout_layer_call_fn_44287O3?0
)?&
 ?
inputs?????????d
p
? "??????????d?
B__inference_flatten_layer_call_and_return_conditional_losses_44245a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? 
'__inference_flatten_layer_call_fn_44239T7?4
-?*
(?%
inputs?????????
? "????????????
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_44093l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
,__inference_layer_norm_1_layer_call_fn_44031_7?4
-?*
(?%
inputs?????????
? " ???????????
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_44202l#$7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
,__inference_layer_norm_2_layer_call_fn_44140_#$7?4
-?*
(?%
inputs?????????
? " ??????????:
__inference_loss_fn_0_44347?

? 
? "? :
__inference_loss_fn_1_44358?

? 
? "? :
__inference_loss_fn_2_44369?

? 
? "? :
__inference_loss_fn_3_44380#?

? 
? "? :
__inference_loss_fn_4_44391)?

? 
? "? :
__inference_loss_fn_5_444023?

? 
? "? :
__inference_loss_fn_6_44413=?

? 
? "? ?
E__inference_raw_output_layer_call_and_return_conditional_losses_44336\=>/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? }
*__inference_raw_output_layer_call_fn_44319O=>/?,
%?"
 ?
inputs?????????d
? "???????????
#__inference_signature_wrapper_43054???#$)*34=>C?@
? 
9?6
4
input_1)?&
input_1?????????  "3?0
.
output_1"?
output_1?????????