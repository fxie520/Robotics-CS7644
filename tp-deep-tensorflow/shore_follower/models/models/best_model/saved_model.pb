Ɵ
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
executor_typestring ??
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
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
cnn_model2/conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecnn_model2/conv_1/kernel
?
,cnn_model2/conv_1/kernel/Read/ReadVariableOpReadVariableOpcnn_model2/conv_1/kernel*&
_output_shapes
:*
dtype0
?
cnn_model2/conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namecnn_model2/conv_1/bias
}
*cnn_model2/conv_1/bias/Read/ReadVariableOpReadVariableOpcnn_model2/conv_1/bias*
_output_shapes
:*
dtype0
?
cnn_model2/layer_norm_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namecnn_model2/layer_norm_1/gamma
?
1cnn_model2/layer_norm_1/gamma/Read/ReadVariableOpReadVariableOpcnn_model2/layer_norm_1/gamma*
_output_shapes
:*
dtype0
?
cnn_model2/layer_norm_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namecnn_model2/layer_norm_1/beta
?
0cnn_model2/layer_norm_1/beta/Read/ReadVariableOpReadVariableOpcnn_model2/layer_norm_1/beta*
_output_shapes
:*
dtype0
?
cnn_model2/conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecnn_model2/conv_2/kernel
?
,cnn_model2/conv_2/kernel/Read/ReadVariableOpReadVariableOpcnn_model2/conv_2/kernel*&
_output_shapes
:*
dtype0
?
cnn_model2/conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namecnn_model2/conv_2/bias
}
*cnn_model2/conv_2/bias/Read/ReadVariableOpReadVariableOpcnn_model2/conv_2/bias*
_output_shapes
:*
dtype0
?
cnn_model2/layer_norm_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namecnn_model2/layer_norm_2/gamma
?
1cnn_model2/layer_norm_2/gamma/Read/ReadVariableOpReadVariableOpcnn_model2/layer_norm_2/gamma*
_output_shapes
:*
dtype0
?
cnn_model2/layer_norm_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namecnn_model2/layer_norm_2/beta
?
0cnn_model2/layer_norm_2/beta/Read/ReadVariableOpReadVariableOpcnn_model2/layer_norm_2/beta*
_output_shapes
:*
dtype0
?
cnn_model2/conv_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namecnn_model2/conv_3/kernel
?
,cnn_model2/conv_3/kernel/Read/ReadVariableOpReadVariableOpcnn_model2/conv_3/kernel*&
_output_shapes
:*
dtype0
?
cnn_model2/conv_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namecnn_model2/conv_3/bias
}
*cnn_model2/conv_3/bias/Read/ReadVariableOpReadVariableOpcnn_model2/conv_3/bias*
_output_shapes
:*
dtype0
?
cnn_model2/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_namecnn_model2/dense/kernel
?
+cnn_model2/dense/kernel/Read/ReadVariableOpReadVariableOpcnn_model2/dense/kernel*
_output_shapes
:	?d*
dtype0
?
cnn_model2/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_namecnn_model2/dense/bias
{
)cnn_model2/dense/bias/Read/ReadVariableOpReadVariableOpcnn_model2/dense/bias*
_output_shapes
:d*
dtype0
?
cnn_model2/raw_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*-
shared_namecnn_model2/raw_output/kernel
?
0cnn_model2/raw_output/kernel/Read/ReadVariableOpReadVariableOpcnn_model2/raw_output/kernel*
_output_shapes

:d*
dtype0
?
cnn_model2/raw_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namecnn_model2/raw_output/bias
?
.cnn_model2/raw_output/bias/Read/ReadVariableOpReadVariableOpcnn_model2/raw_output/bias*
_output_shapes
:*
dtype0
Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"'{?B:??B??B
\
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"?~8@?̈́?҃??

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
	variables
trainable_variables
regularization_losses
	keras_api
q
axis
	gamma
beta
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
q
"axis
	#gamma
$beta
%	variables
&trainable_variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
R
/	variables
0trainable_variables
1regularization_losses
2	keras_api
h

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
R
9	variables
:trainable_variables
;regularization_losses
<	keras_api
h

=kernel
>bias
?	variables
@trainable_variables
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
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
 
US
VARIABLE_VALUEcnn_model2/conv_1/kernel'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcnn_model2/conv_1/bias%conv1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
 
YW
VARIABLE_VALUEcnn_model2/layer_norm_1/gamma&norm1/gamma/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEcnn_model2/layer_norm_1/beta%norm1/beta/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
US
VARIABLE_VALUEcnn_model2/conv_2/kernel'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcnn_model2/conv_2/bias%conv2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
 regularization_losses
 
YW
VARIABLE_VALUEcnn_model2/layer_norm_2/gamma&norm2/gamma/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEcnn_model2/layer_norm_2/beta%norm2/beta/.ATTRIBUTES/VARIABLE_VALUE

#0
$1

#0
$1
 
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
%	variables
&trainable_variables
'regularization_losses
US
VARIABLE_VALUEcnn_model2/conv_3/kernel'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcnn_model2/conv_3/bias%conv3/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
+	variables
,trainable_variables
-regularization_losses
 
 
 
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
/	variables
0trainable_variables
1regularization_losses
US
VARIABLE_VALUEcnn_model2/dense/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcnn_model2/dense/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41

30
41
 
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
5	variables
6trainable_variables
7regularization_losses
 
 
 
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
9	variables
:trainable_variables
;regularization_losses
VT
VARIABLE_VALUEcnn_model2/raw_output/kernel$y_/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcnn_model2/raw_output/bias"y_/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

=0
>1
 
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1ConstConst_1cnn_model2/conv_1/kernelcnn_model2/conv_1/biascnn_model2/layer_norm_1/gammacnn_model2/layer_norm_1/betacnn_model2/conv_2/kernelcnn_model2/conv_2/biascnn_model2/layer_norm_2/gammacnn_model2/layer_norm_2/betacnn_model2/conv_3/kernelcnn_model2/conv_3/biascnn_model2/dense/kernelcnn_model2/dense/biascnn_model2/raw_output/kernelcnn_model2/raw_output/bias*
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
#__inference_signature_wrapper_28956
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,cnn_model2/conv_1/kernel/Read/ReadVariableOp*cnn_model2/conv_1/bias/Read/ReadVariableOp1cnn_model2/layer_norm_1/gamma/Read/ReadVariableOp0cnn_model2/layer_norm_1/beta/Read/ReadVariableOp,cnn_model2/conv_2/kernel/Read/ReadVariableOp*cnn_model2/conv_2/bias/Read/ReadVariableOp1cnn_model2/layer_norm_2/gamma/Read/ReadVariableOp0cnn_model2/layer_norm_2/beta/Read/ReadVariableOp,cnn_model2/conv_3/kernel/Read/ReadVariableOp*cnn_model2/conv_3/bias/Read/ReadVariableOp+cnn_model2/dense/kernel/Read/ReadVariableOp)cnn_model2/dense/bias/Read/ReadVariableOp0cnn_model2/raw_output/kernel/Read/ReadVariableOp.cnn_model2/raw_output/bias/Read/ReadVariableOpConst_2*
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
__inference__traced_save_29877
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecnn_model2/conv_1/kernelcnn_model2/conv_1/biascnn_model2/layer_norm_1/gammacnn_model2/layer_norm_1/betacnn_model2/conv_2/kernelcnn_model2/conv_2/biascnn_model2/layer_norm_2/gammacnn_model2/layer_norm_2/betacnn_model2/conv_3/kernelcnn_model2/conv_3/biascnn_model2/dense/kernelcnn_model2/dense/biascnn_model2/raw_output/kernelcnn_model2/raw_output/bias*
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
!__inference__traced_restore_29929??
?
?
A__inference_conv_1_layer_call_and_return_conditional_losses_29429

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:??????????
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_1/kernel/Regularizer/SquareSquareBcnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_1/kernel/Regularizer/SumSum/cnn_model2/conv_1/kernel/Regularizer/Square:y:03cnn_model2/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_1/kernel/Regularizer/mulMul3cnn_model2/conv_1/kernel/Regularizer/mul/x:output:01cnn_model2/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_29665

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
@__inference_dense_layer_call_and_return_conditional_losses_28298o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_29755V
Hcnn_model2_layer_norm_1_gamma_regularizer_square_readvariableop_resource:
identity???cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOpHcnn_model2_layer_norm_1_gamma_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_1/gamma/Regularizer/SumSum4cnn_model2/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_1/gamma/Regularizer/mulMul8cnn_model2/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
IdentityIdentity1cnn_model2/layer_norm_1/gamma/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp@^cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_2_29766]
Ccnn_model2_conv_2_kernel_regularizer_square_readvariableop_resource:
identity??:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp?
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCcnn_model2_conv_2_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_2/kernel/Regularizer/SquareSquareBcnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_2/kernel/Regularizer/SumSum/cnn_model2/conv_2/kernel/Regularizer/Square:y:03cnn_model2/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_2/kernel/Regularizer/mulMul3cnn_model2/conv_2/kernel/Regularizer/mul/x:output:01cnn_model2/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentity,cnn_model2/conv_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp;^cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_29650

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_layer_norm_2_layer_call_fn_29549

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
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_28244w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_dropout_layer_call_and_return_conditional_losses_28434

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
C
'__inference_dropout_layer_call_fn_29692

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
B__inference_dropout_layer_call_and_return_conditional_losses_28434`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
A__inference_conv_3_layer_call_and_return_conditional_losses_29639

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:??????????
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_3/kernel/Regularizer/SquareSquareBcnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_3/kernel/Regularizer/SumSum/cnn_model2/conv_3/kernel/Regularizer/Square:y:03cnn_model2/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_3/kernel/Regularizer/mulMul3cnn_model2/conv_3/kernel/Regularizer/mul/x:output:01cnn_model2/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_layer_norm_1_layer_call_fn_29444

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
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_28157w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_raw_output_layer_call_and_return_conditional_losses_28328

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:??????????
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
/cnn_model2/raw_output/kernel/Regularizer/SquareSquareFcnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d
.cnn_model2/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,cnn_model2/raw_output/kernel/Regularizer/SumSum3cnn_model2/raw_output/kernel/Regularizer/Square:y:07cnn_model2/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.cnn_model2/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,cnn_model2/raw_output/kernel/Regularizer/mulMul7cnn_model2/raw_output/kernel/Regularizer/mul/x:output:05cnn_model2/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
&__inference_conv_1_layer_call_fn_29412

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
A__inference_conv_1_layer_call_and_return_conditional_losses_28093w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
A__inference_conv_2_layer_call_and_return_conditional_losses_29534

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:??????????
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_2/kernel/Regularizer/SquareSquareBcnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_2/kernel/Regularizer/SumSum/cnn_model2/conv_2/kernel/Regularizer/Square:y:03cnn_model2/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_2/kernel/Regularizer/mulMul3cnn_model2/conv_2/kernel/Regularizer/mul/x:output:01cnn_model2/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_conv_1_layer_call_and_return_conditional_losses_28093

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:??????????
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_1/kernel/Regularizer/SquareSquareBcnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_1/kernel/Regularizer/SumSum/cnn_model2/conv_1/kernel/Regularizer/Square:y:03cnn_model2/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_1/kernel/Regularizer/mulMul3cnn_model2/conv_1/kernel/Regularizer/mul/x:output:01cnn_model2/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?n
?	
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28629

inputs	
sub_y
	truediv_y&
conv_1_28549:
conv_1_28551: 
layer_norm_1_28554: 
layer_norm_1_28556:&
conv_2_28559:
conv_2_28561: 
layer_norm_2_28564: 
layer_norm_2_28566:&
conv_3_28569:
conv_3_28571:
dense_28575:	?d
dense_28577:d"
raw_output_28581:d
raw_output_28583:
identity??:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?$layer_norm_1/StatefulPartitionedCall?$layer_norm_2/StatefulPartitionedCall?"raw_output/StatefulPartitionedCallS
subSubinputssub_y*
T0*/
_output_shapes
:?????????  `
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  ?
conv_1/StatefulPartitionedCallStatefulPartitionedCalltruediv:z:0conv_1_28549conv_1_28551*
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
A__inference_conv_1_layer_call_and_return_conditional_losses_28093?
$layer_norm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0layer_norm_1_28554layer_norm_1_28556*
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
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_28157?
conv_2/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_1/StatefulPartitionedCall:output:0conv_2_28559conv_2_28561*
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
A__inference_conv_2_layer_call_and_return_conditional_losses_28180?
$layer_norm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0layer_norm_2_28564layer_norm_2_28566*
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
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_28244?
conv_3/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_2/StatefulPartitionedCall:output:0conv_3_28569conv_3_28571*
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
A__inference_conv_3_layer_call_and_return_conditional_losses_28267?
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
B__inference_flatten_layer_call_and_return_conditional_losses_28279?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_28575dense_28577*
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
@__inference_dense_layer_call_and_return_conditional_losses_28298?
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
B__inference_dropout_layer_call_and_return_conditional_losses_28434?
"raw_output/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0raw_output_28581raw_output_28583*
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
E__inference_raw_output_layer_call_and_return_conditional_losses_28328?
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_1_28549*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_1/kernel/Regularizer/SquareSquareBcnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_1/kernel/Regularizer/SumSum/cnn_model2/conv_1/kernel/Regularizer/Square:y:03cnn_model2/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_1/kernel/Regularizer/mulMul3cnn_model2/conv_1/kernel/Regularizer/mul/x:output:01cnn_model2/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_1_28554*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_1/gamma/Regularizer/SumSum4cnn_model2/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_1/gamma/Regularizer/mulMul8cnn_model2/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_2_28559*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_2/kernel/Regularizer/SquareSquareBcnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_2/kernel/Regularizer/SumSum/cnn_model2/conv_2/kernel/Regularizer/Square:y:03cnn_model2/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_2/kernel/Regularizer/mulMul3cnn_model2/conv_2/kernel/Regularizer/mul/x:output:01cnn_model2/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_2_28564*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_2/gamma/Regularizer/SumSum4cnn_model2/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_2/gamma/Regularizer/mulMul8cnn_model2/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_3_28569*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_3/kernel/Regularizer/SquareSquareBcnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_3/kernel/Regularizer/SumSum/cnn_model2/conv_3/kernel/Regularizer/Square:y:03cnn_model2/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_3/kernel/Regularizer/mulMul3cnn_model2/conv_3/kernel/Regularizer/mul/x:output:01cnn_model2/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_28575*
_output_shapes
:	?d*
dtype0?
*cnn_model2/dense/kernel/Regularizer/SquareSquareAcnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?dz
)cnn_model2/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
'cnn_model2/dense/kernel/Regularizer/SumSum.cnn_model2/dense/kernel/Regularizer/Square:y:02cnn_model2/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)cnn_model2/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
'cnn_model2/dense/kernel/Regularizer/mulMul2cnn_model2/dense/kernel/Regularizer/mul/x:output:00cnn_model2/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpraw_output_28581*
_output_shapes

:d*
dtype0?
/cnn_model2/raw_output/kernel/Regularizer/SquareSquareFcnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d
.cnn_model2/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,cnn_model2/raw_output/kernel/Regularizer/SumSum3cnn_model2/raw_output/kernel/Regularizer/Square:y:07cnn_model2/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.cnn_model2/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,cnn_model2/raw_output/kernel/Regularizer/mulMul7cnn_model2/raw_output/kernel/Regularizer/mul/x:output:05cnn_model2/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity+raw_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp;^cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^dense/StatefulPartitionedCall%^layer_norm_1/StatefulPartitionedCall%^layer_norm_2/StatefulPartitionedCall#^raw_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp2@
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
?
C
'__inference_dropout_layer_call_fn_29687

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
B__inference_dropout_layer_call_and_return_conditional_losses_28309`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_28309

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?3
?
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_29502

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp??cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:t
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:?????????n
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0x
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_1/gamma/Regularizer/SumSum4cnn_model2/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_1/gamma/Regularizer/mulMul8cnn_model2/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^add/ReadVariableOp@^cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_raw_output_layer_call_and_return_conditional_losses_29733

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:??????????
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
/cnn_model2/raw_output/kernel/Regularizer/SquareSquareFcnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d
.cnn_model2/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,cnn_model2/raw_output/kernel/Regularizer/SumSum3cnn_model2/raw_output/kernel/Regularizer/Square:y:07cnn_model2/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.cnn_model2/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,cnn_model2/raw_output/kernel/Regularizer/mulMul7cnn_model2/raw_output/kernel/Regularizer/mul/x:output:05cnn_model2/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp?^cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_29744]
Ccnn_model2_conv_1_kernel_regularizer_square_readvariableop_resource:
identity??:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp?
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCcnn_model2_conv_1_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_1/kernel/Regularizer/SquareSquareBcnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_1/kernel/Regularizer/SumSum/cnn_model2/conv_1/kernel/Regularizer/Square:y:03cnn_model2/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_1/kernel/Regularizer/mulMul3cnn_model2/conv_1/kernel/Regularizer/mul/x:output:01cnn_model2/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentity,cnn_model2/conv_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp;^cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp
??
?
 __inference__wrapped_model_28065
input_1
cnn_model2_sub_y
cnn_model2_truediv_yJ
0cnn_model2_conv_1_conv2d_readvariableop_resource:?
1cnn_model2_conv_1_biasadd_readvariableop_resource:C
5cnn_model2_layer_norm_1_mul_4_readvariableop_resource:A
3cnn_model2_layer_norm_1_add_readvariableop_resource:J
0cnn_model2_conv_2_conv2d_readvariableop_resource:?
1cnn_model2_conv_2_biasadd_readvariableop_resource:C
5cnn_model2_layer_norm_2_mul_4_readvariableop_resource:A
3cnn_model2_layer_norm_2_add_readvariableop_resource:J
0cnn_model2_conv_3_conv2d_readvariableop_resource:?
1cnn_model2_conv_3_biasadd_readvariableop_resource:B
/cnn_model2_dense_matmul_readvariableop_resource:	?d>
0cnn_model2_dense_biasadd_readvariableop_resource:dF
4cnn_model2_raw_output_matmul_readvariableop_resource:dC
5cnn_model2_raw_output_biasadd_readvariableop_resource:
identity??(cnn_model2/conv_1/BiasAdd/ReadVariableOp?'cnn_model2/conv_1/Conv2D/ReadVariableOp?(cnn_model2/conv_2/BiasAdd/ReadVariableOp?'cnn_model2/conv_2/Conv2D/ReadVariableOp?(cnn_model2/conv_3/BiasAdd/ReadVariableOp?'cnn_model2/conv_3/Conv2D/ReadVariableOp?'cnn_model2/dense/BiasAdd/ReadVariableOp?&cnn_model2/dense/MatMul/ReadVariableOp?*cnn_model2/layer_norm_1/add/ReadVariableOp?,cnn_model2/layer_norm_1/mul_4/ReadVariableOp?*cnn_model2/layer_norm_2/add/ReadVariableOp?,cnn_model2/layer_norm_2/mul_4/ReadVariableOp?,cnn_model2/raw_output/BiasAdd/ReadVariableOp?+cnn_model2/raw_output/MatMul/ReadVariableOpj
cnn_model2/subSubinput_1cnn_model2_sub_y*
T0*/
_output_shapes
:?????????  ?
cnn_model2/truedivRealDivcnn_model2/sub:z:0cnn_model2_truediv_y*
T0*/
_output_shapes
:?????????  ?
'cnn_model2/conv_1/Conv2D/ReadVariableOpReadVariableOp0cnn_model2_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
cnn_model2/conv_1/Conv2DConv2Dcnn_model2/truediv:z:0/cnn_model2/conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
(cnn_model2/conv_1/BiasAdd/ReadVariableOpReadVariableOp1cnn_model2_conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model2/conv_1/BiasAddBiasAdd!cnn_model2/conv_1/Conv2D:output:00cnn_model2/conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}
cnn_model2/conv_1/LeakyRelu	LeakyRelu"cnn_model2/conv_1/BiasAdd:output:0*/
_output_shapes
:?????????v
cnn_model2/layer_norm_1/ShapeShape)cnn_model2/conv_1/LeakyRelu:activations:0*
T0*
_output_shapes
:u
+cnn_model2/layer_norm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-cnn_model2/layer_norm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-cnn_model2/layer_norm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%cnn_model2/layer_norm_1/strided_sliceStridedSlice&cnn_model2/layer_norm_1/Shape:output:04cnn_model2/layer_norm_1/strided_slice/stack:output:06cnn_model2/layer_norm_1/strided_slice/stack_1:output:06cnn_model2/layer_norm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
cnn_model2/layer_norm_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
cnn_model2/layer_norm_1/mulMul&cnn_model2/layer_norm_1/mul/x:output:0.cnn_model2/layer_norm_1/strided_slice:output:0*
T0*
_output_shapes
: w
-cnn_model2/layer_norm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'cnn_model2/layer_norm_1/strided_slice_1StridedSlice&cnn_model2/layer_norm_1/Shape:output:06cnn_model2/layer_norm_1/strided_slice_1/stack:output:08cnn_model2/layer_norm_1/strided_slice_1/stack_1:output:08cnn_model2/layer_norm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
cnn_model2/layer_norm_1/mul_1Mulcnn_model2/layer_norm_1/mul:z:00cnn_model2/layer_norm_1/strided_slice_1:output:0*
T0*
_output_shapes
: w
-cnn_model2/layer_norm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'cnn_model2/layer_norm_1/strided_slice_2StridedSlice&cnn_model2/layer_norm_1/Shape:output:06cnn_model2/layer_norm_1/strided_slice_2/stack:output:08cnn_model2/layer_norm_1/strided_slice_2/stack_1:output:08cnn_model2/layer_norm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
cnn_model2/layer_norm_1/mul_2Mul!cnn_model2/layer_norm_1/mul_1:z:00cnn_model2/layer_norm_1/strided_slice_2:output:0*
T0*
_output_shapes
: w
-cnn_model2/layer_norm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'cnn_model2/layer_norm_1/strided_slice_3StridedSlice&cnn_model2/layer_norm_1/Shape:output:06cnn_model2/layer_norm_1/strided_slice_3/stack:output:08cnn_model2/layer_norm_1/strided_slice_3/stack_1:output:08cnn_model2/layer_norm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
cnn_model2/layer_norm_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :?
cnn_model2/layer_norm_1/mul_3Mul(cnn_model2/layer_norm_1/mul_3/x:output:00cnn_model2/layer_norm_1/strided_slice_3:output:0*
T0*
_output_shapes
: i
'cnn_model2/layer_norm_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :i
'cnn_model2/layer_norm_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
%cnn_model2/layer_norm_1/Reshape/shapePack0cnn_model2/layer_norm_1/Reshape/shape/0:output:0!cnn_model2/layer_norm_1/mul_2:z:0!cnn_model2/layer_norm_1/mul_3:z:00cnn_model2/layer_norm_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
cnn_model2/layer_norm_1/ReshapeReshape)cnn_model2/conv_1/LeakyRelu:activations:0.cnn_model2/layer_norm_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????|
#cnn_model2/layer_norm_1/ones/packedPack!cnn_model2/layer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:g
"cnn_model2/layer_norm_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
cnn_model2/layer_norm_1/onesFill,cnn_model2/layer_norm_1/ones/packed:output:0+cnn_model2/layer_norm_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????}
$cnn_model2/layer_norm_1/zeros/packedPack!cnn_model2/layer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:h
#cnn_model2/layer_norm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
cnn_model2/layer_norm_1/zerosFill-cnn_model2/layer_norm_1/zeros/packed:output:0,cnn_model2/layer_norm_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????`
cnn_model2/layer_norm_1/ConstConst*
_output_shapes
: *
dtype0*
valueB b
cnn_model2/layer_norm_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
(cnn_model2/layer_norm_1/FusedBatchNormV3FusedBatchNormV3(cnn_model2/layer_norm_1/Reshape:output:0%cnn_model2/layer_norm_1/ones:output:0&cnn_model2/layer_norm_1/zeros:output:0&cnn_model2/layer_norm_1/Const:output:0(cnn_model2/layer_norm_1/Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
!cnn_model2/layer_norm_1/Reshape_1Reshape,cnn_model2/layer_norm_1/FusedBatchNormV3:y:0&cnn_model2/layer_norm_1/Shape:output:0*
T0*/
_output_shapes
:??????????
,cnn_model2/layer_norm_1/mul_4/ReadVariableOpReadVariableOp5cnn_model2_layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model2/layer_norm_1/mul_4Mul*cnn_model2/layer_norm_1/Reshape_1:output:04cnn_model2/layer_norm_1/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
*cnn_model2/layer_norm_1/add/ReadVariableOpReadVariableOp3cnn_model2_layer_norm_1_add_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model2/layer_norm_1/addAddV2!cnn_model2/layer_norm_1/mul_4:z:02cnn_model2/layer_norm_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
'cnn_model2/conv_2/Conv2D/ReadVariableOpReadVariableOp0cnn_model2_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
cnn_model2/conv_2/Conv2DConv2Dcnn_model2/layer_norm_1/add:z:0/cnn_model2/conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
(cnn_model2/conv_2/BiasAdd/ReadVariableOpReadVariableOp1cnn_model2_conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model2/conv_2/BiasAddBiasAdd!cnn_model2/conv_2/Conv2D:output:00cnn_model2/conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}
cnn_model2/conv_2/LeakyRelu	LeakyRelu"cnn_model2/conv_2/BiasAdd:output:0*/
_output_shapes
:?????????v
cnn_model2/layer_norm_2/ShapeShape)cnn_model2/conv_2/LeakyRelu:activations:0*
T0*
_output_shapes
:u
+cnn_model2/layer_norm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-cnn_model2/layer_norm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-cnn_model2/layer_norm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%cnn_model2/layer_norm_2/strided_sliceStridedSlice&cnn_model2/layer_norm_2/Shape:output:04cnn_model2/layer_norm_2/strided_slice/stack:output:06cnn_model2/layer_norm_2/strided_slice/stack_1:output:06cnn_model2/layer_norm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
cnn_model2/layer_norm_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
cnn_model2/layer_norm_2/mulMul&cnn_model2/layer_norm_2/mul/x:output:0.cnn_model2/layer_norm_2/strided_slice:output:0*
T0*
_output_shapes
: w
-cnn_model2/layer_norm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'cnn_model2/layer_norm_2/strided_slice_1StridedSlice&cnn_model2/layer_norm_2/Shape:output:06cnn_model2/layer_norm_2/strided_slice_1/stack:output:08cnn_model2/layer_norm_2/strided_slice_1/stack_1:output:08cnn_model2/layer_norm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
cnn_model2/layer_norm_2/mul_1Mulcnn_model2/layer_norm_2/mul:z:00cnn_model2/layer_norm_2/strided_slice_1:output:0*
T0*
_output_shapes
: w
-cnn_model2/layer_norm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'cnn_model2/layer_norm_2/strided_slice_2StridedSlice&cnn_model2/layer_norm_2/Shape:output:06cnn_model2/layer_norm_2/strided_slice_2/stack:output:08cnn_model2/layer_norm_2/strided_slice_2/stack_1:output:08cnn_model2/layer_norm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
cnn_model2/layer_norm_2/mul_2Mul!cnn_model2/layer_norm_2/mul_1:z:00cnn_model2/layer_norm_2/strided_slice_2:output:0*
T0*
_output_shapes
: w
-cnn_model2/layer_norm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/cnn_model2/layer_norm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'cnn_model2/layer_norm_2/strided_slice_3StridedSlice&cnn_model2/layer_norm_2/Shape:output:06cnn_model2/layer_norm_2/strided_slice_3/stack:output:08cnn_model2/layer_norm_2/strided_slice_3/stack_1:output:08cnn_model2/layer_norm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
cnn_model2/layer_norm_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :?
cnn_model2/layer_norm_2/mul_3Mul(cnn_model2/layer_norm_2/mul_3/x:output:00cnn_model2/layer_norm_2/strided_slice_3:output:0*
T0*
_output_shapes
: i
'cnn_model2/layer_norm_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :i
'cnn_model2/layer_norm_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
%cnn_model2/layer_norm_2/Reshape/shapePack0cnn_model2/layer_norm_2/Reshape/shape/0:output:0!cnn_model2/layer_norm_2/mul_2:z:0!cnn_model2/layer_norm_2/mul_3:z:00cnn_model2/layer_norm_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
cnn_model2/layer_norm_2/ReshapeReshape)cnn_model2/conv_2/LeakyRelu:activations:0.cnn_model2/layer_norm_2/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????|
#cnn_model2/layer_norm_2/ones/packedPack!cnn_model2/layer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:g
"cnn_model2/layer_norm_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
cnn_model2/layer_norm_2/onesFill,cnn_model2/layer_norm_2/ones/packed:output:0+cnn_model2/layer_norm_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????}
$cnn_model2/layer_norm_2/zeros/packedPack!cnn_model2/layer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:h
#cnn_model2/layer_norm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
cnn_model2/layer_norm_2/zerosFill-cnn_model2/layer_norm_2/zeros/packed:output:0,cnn_model2/layer_norm_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????`
cnn_model2/layer_norm_2/ConstConst*
_output_shapes
: *
dtype0*
valueB b
cnn_model2/layer_norm_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
(cnn_model2/layer_norm_2/FusedBatchNormV3FusedBatchNormV3(cnn_model2/layer_norm_2/Reshape:output:0%cnn_model2/layer_norm_2/ones:output:0&cnn_model2/layer_norm_2/zeros:output:0&cnn_model2/layer_norm_2/Const:output:0(cnn_model2/layer_norm_2/Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
!cnn_model2/layer_norm_2/Reshape_1Reshape,cnn_model2/layer_norm_2/FusedBatchNormV3:y:0&cnn_model2/layer_norm_2/Shape:output:0*
T0*/
_output_shapes
:??????????
,cnn_model2/layer_norm_2/mul_4/ReadVariableOpReadVariableOp5cnn_model2_layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model2/layer_norm_2/mul_4Mul*cnn_model2/layer_norm_2/Reshape_1:output:04cnn_model2/layer_norm_2/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
*cnn_model2/layer_norm_2/add/ReadVariableOpReadVariableOp3cnn_model2_layer_norm_2_add_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model2/layer_norm_2/addAddV2!cnn_model2/layer_norm_2/mul_4:z:02cnn_model2/layer_norm_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
'cnn_model2/conv_3/Conv2D/ReadVariableOpReadVariableOp0cnn_model2_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
cnn_model2/conv_3/Conv2DConv2Dcnn_model2/layer_norm_2/add:z:0/cnn_model2/conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
(cnn_model2/conv_3/BiasAdd/ReadVariableOpReadVariableOp1cnn_model2_conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model2/conv_3/BiasAddBiasAdd!cnn_model2/conv_3/Conv2D:output:00cnn_model2/conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}
cnn_model2/conv_3/LeakyRelu	LeakyRelu"cnn_model2/conv_3/BiasAdd:output:0*/
_output_shapes
:?????????i
cnn_model2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
cnn_model2/flatten/ReshapeReshape)cnn_model2/conv_3/LeakyRelu:activations:0!cnn_model2/flatten/Const:output:0*
T0*(
_output_shapes
:???????????
&cnn_model2/dense/MatMul/ReadVariableOpReadVariableOp/cnn_model2_dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype0?
cnn_model2/dense/MatMulMatMul#cnn_model2/flatten/Reshape:output:0.cnn_model2/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
'cnn_model2/dense/BiasAdd/ReadVariableOpReadVariableOp0cnn_model2_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
cnn_model2/dense/BiasAddBiasAdd!cnn_model2/dense/MatMul:product:0/cnn_model2/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????ds
cnn_model2/dense/LeakyRelu	LeakyRelu!cnn_model2/dense/BiasAdd:output:0*'
_output_shapes
:?????????d?
cnn_model2/dropout/IdentityIdentity(cnn_model2/dense/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d?
+cnn_model2/raw_output/MatMul/ReadVariableOpReadVariableOp4cnn_model2_raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
cnn_model2/raw_output/MatMulMatMul$cnn_model2/dropout/Identity:output:03cnn_model2/raw_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,cnn_model2/raw_output/BiasAdd/ReadVariableOpReadVariableOp5cnn_model2_raw_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model2/raw_output/BiasAddBiasAdd&cnn_model2/raw_output/MatMul:product:04cnn_model2/raw_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
cnn_model2/raw_output/SoftmaxSoftmax&cnn_model2/raw_output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'cnn_model2/raw_output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp)^cnn_model2/conv_1/BiasAdd/ReadVariableOp(^cnn_model2/conv_1/Conv2D/ReadVariableOp)^cnn_model2/conv_2/BiasAdd/ReadVariableOp(^cnn_model2/conv_2/Conv2D/ReadVariableOp)^cnn_model2/conv_3/BiasAdd/ReadVariableOp(^cnn_model2/conv_3/Conv2D/ReadVariableOp(^cnn_model2/dense/BiasAdd/ReadVariableOp'^cnn_model2/dense/MatMul/ReadVariableOp+^cnn_model2/layer_norm_1/add/ReadVariableOp-^cnn_model2/layer_norm_1/mul_4/ReadVariableOp+^cnn_model2/layer_norm_2/add/ReadVariableOp-^cnn_model2/layer_norm_2/mul_4/ReadVariableOp-^cnn_model2/raw_output/BiasAdd/ReadVariableOp,^cnn_model2/raw_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2T
(cnn_model2/conv_1/BiasAdd/ReadVariableOp(cnn_model2/conv_1/BiasAdd/ReadVariableOp2R
'cnn_model2/conv_1/Conv2D/ReadVariableOp'cnn_model2/conv_1/Conv2D/ReadVariableOp2T
(cnn_model2/conv_2/BiasAdd/ReadVariableOp(cnn_model2/conv_2/BiasAdd/ReadVariableOp2R
'cnn_model2/conv_2/Conv2D/ReadVariableOp'cnn_model2/conv_2/Conv2D/ReadVariableOp2T
(cnn_model2/conv_3/BiasAdd/ReadVariableOp(cnn_model2/conv_3/BiasAdd/ReadVariableOp2R
'cnn_model2/conv_3/Conv2D/ReadVariableOp'cnn_model2/conv_3/Conv2D/ReadVariableOp2R
'cnn_model2/dense/BiasAdd/ReadVariableOp'cnn_model2/dense/BiasAdd/ReadVariableOp2P
&cnn_model2/dense/MatMul/ReadVariableOp&cnn_model2/dense/MatMul/ReadVariableOp2X
*cnn_model2/layer_norm_1/add/ReadVariableOp*cnn_model2/layer_norm_1/add/ReadVariableOp2\
,cnn_model2/layer_norm_1/mul_4/ReadVariableOp,cnn_model2/layer_norm_1/mul_4/ReadVariableOp2X
*cnn_model2/layer_norm_2/add/ReadVariableOp*cnn_model2/layer_norm_2/add/ReadVariableOp2\
,cnn_model2/layer_norm_2/mul_4/ReadVariableOp,cnn_model2/layer_norm_2/mul_4/ReadVariableOp2\
,cnn_model2/raw_output/BiasAdd/ReadVariableOp,cnn_model2/raw_output/BiasAdd/ReadVariableOp2Z
+cnn_model2/raw_output/MatMul/ReadVariableOp+cnn_model2/raw_output/MatMul/ReadVariableOp:X T
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
?3
?
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_29607

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp??cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:t
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:?????????n
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0x
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_2/gamma/Regularizer/SumSum4cnn_model2/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_2/gamma/Regularizer/mulMul8cnn_model2/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^add/ReadVariableOp@^cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?3
?
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_28244

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp??cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:t
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:?????????n
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0x
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_2/gamma/Regularizer/SumSum4cnn_model2/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_2/gamma/Regularizer/mulMul8cnn_model2/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^add/ReadVariableOp@^cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
@__inference_dense_layer_call_and_return_conditional_losses_29682

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dQ
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d?
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype0?
*cnn_model2/dense/kernel/Regularizer/SquareSquareAcnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?dz
)cnn_model2/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
'cnn_model2/dense/kernel/Regularizer/SumSum.cnn_model2/dense/kernel/Regularizer/Square:y:02cnn_model2/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)cnn_model2/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
'cnn_model2/dense/kernel/Regularizer/mulMul2cnn_model2/dense/kernel/Regularizer/mul/x:output:00cnn_model2/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp:^cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2v
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_raw_output_layer_call_fn_29716

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
E__inference_raw_output_layer_call_and_return_conditional_losses_28328o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_5_29799U
Bcnn_model2_dense_kernel_regularizer_square_readvariableop_resource:	?d
identity??9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp?
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBcnn_model2_dense_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?d*
dtype0?
*cnn_model2/dense/kernel/Regularizer/SquareSquareAcnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?dz
)cnn_model2/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
'cnn_model2/dense/kernel/Regularizer/SumSum.cnn_model2/dense/kernel/Regularizer/Square:y:02cnn_model2/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)cnn_model2/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
'cnn_model2/dense/kernel/Regularizer/mulMul2cnn_model2/dense/kernel/Regularizer/mul/x:output:00cnn_model2/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentity+cnn_model2/dense/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp:^cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_6_29810Y
Gcnn_model2_raw_output_kernel_regularizer_square_readvariableop_resource:d
identity??>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpGcnn_model2_raw_output_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:d*
dtype0?
/cnn_model2/raw_output/kernel/Regularizer/SquareSquareFcnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d
.cnn_model2/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,cnn_model2/raw_output/kernel/Regularizer/SumSum3cnn_model2/raw_output/kernel/Regularizer/Square:y:07cnn_model2/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.cnn_model2/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,cnn_model2/raw_output/kernel/Regularizer/mulMul7cnn_model2/raw_output/kernel/Regularizer/mul/x:output:05cnn_model2/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentity0cnn_model2/raw_output/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp?^cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp
?
?
*__inference_cnn_model2_layer_call_fn_28993

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
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
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
?
?
@__inference_dense_layer_call_and_return_conditional_losses_28298

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dQ
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d?
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype0?
*cnn_model2/dense/kernel/Regularizer/SquareSquareAcnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?dz
)cnn_model2/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
'cnn_model2/dense/kernel/Regularizer/SumSum.cnn_model2/dense/kernel/Regularizer/Square:y:02cnn_model2/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)cnn_model2/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
'cnn_model2/dense/kernel/Regularizer/mulMul2cnn_model2/dense/kernel/Regularizer/mul/x:output:00cnn_model2/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp:^cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2v
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_cnn_model2_layer_call_fn_28701
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
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28629o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
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
?
?
__inference_loss_fn_3_29777V
Hcnn_model2_layer_norm_2_gamma_regularizer_square_readvariableop_resource:
identity???cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOpHcnn_model2_layer_norm_2_gamma_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_2/gamma/Regularizer/SumSum4cnn_model2/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_2/gamma/Regularizer/mulMul8cnn_model2/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: o
IdentityIdentity1cnn_model2/layer_norm_2/gamma/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp@^cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp
?
?
*__inference_cnn_model2_layer_call_fn_28412
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
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
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
?
C
'__inference_flatten_layer_call_fn_29644

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
B__inference_flatten_layer_call_and_return_conditional_losses_28279a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_28279

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_conv_3_layer_call_fn_29622

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
A__inference_conv_3_layer_call_and_return_conditional_losses_28267w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
E__inference_cnn_model2_layer_call_and_return_conditional_losses_29214

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
identity??:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/BiasAdd/ReadVariableOp?conv_1/Conv2D/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?conv_2/Conv2D/ReadVariableOp?conv_3/BiasAdd/ReadVariableOp?conv_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?layer_norm_1/add/ReadVariableOp?!layer_norm_1/mul_4/ReadVariableOp?layer_norm_2/add/ReadVariableOp?!layer_norm_2/mul_4/ReadVariableOp?!raw_output/BiasAdd/ReadVariableOp? raw_output/MatMul/ReadVariableOpS
subSubinputssub_y*
T0*/
_output_shapes
:?????????  `
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  ?
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_1/Conv2DConv2Dtruediv:z:0$conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
conv_1/LeakyRelu	LeakyReluconv_1/BiasAdd:output:0*/
_output_shapes
:?????????`
layer_norm_1/ShapeShapeconv_1/LeakyRelu:activations:0*
T0*
_output_shapes
:j
 layer_norm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"layer_norm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"layer_norm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_1/strided_sliceStridedSlicelayer_norm_1/Shape:output:0)layer_norm_1/strided_slice/stack:output:0+layer_norm_1/strided_slice/stack_1:output:0+layer_norm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
layer_norm_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
layer_norm_1/mulMullayer_norm_1/mul/x:output:0#layer_norm_1/strided_slice:output:0*
T0*
_output_shapes
: l
"layer_norm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_1/strided_slice_1StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_1/stack:output:0-layer_norm_1/strided_slice_1/stack_1:output:0-layer_norm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
layer_norm_1/mul_1Mullayer_norm_1/mul:z:0%layer_norm_1/strided_slice_1:output:0*
T0*
_output_shapes
: l
"layer_norm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_1/strided_slice_2StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_2/stack:output:0-layer_norm_1/strided_slice_2/stack_1:output:0-layer_norm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
layer_norm_1/mul_2Mullayer_norm_1/mul_1:z:0%layer_norm_1/strided_slice_2:output:0*
T0*
_output_shapes
: l
"layer_norm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_1/strided_slice_3StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_3/stack:output:0-layer_norm_1/strided_slice_3/stack_1:output:0-layer_norm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
layer_norm_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_norm_1/mul_3Mullayer_norm_1/mul_3/x:output:0%layer_norm_1/strided_slice_3:output:0*
T0*
_output_shapes
: ^
layer_norm_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
layer_norm_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
layer_norm_1/Reshape/shapePack%layer_norm_1/Reshape/shape/0:output:0layer_norm_1/mul_2:z:0layer_norm_1/mul_3:z:0%layer_norm_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_norm_1/ReshapeReshapeconv_1/LeakyRelu:activations:0#layer_norm_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????f
layer_norm_1/ones/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:\
layer_norm_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_norm_1/onesFill!layer_norm_1/ones/packed:output:0 layer_norm_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
layer_norm_1/zeros/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:]
layer_norm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_norm_1/zerosFill"layer_norm_1/zeros/packed:output:0!layer_norm_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
layer_norm_1/ConstConst*
_output_shapes
: *
dtype0*
valueB W
layer_norm_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
layer_norm_1/FusedBatchNormV3FusedBatchNormV3layer_norm_1/Reshape:output:0layer_norm_1/ones:output:0layer_norm_1/zeros:output:0layer_norm_1/Const:output:0layer_norm_1/Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_norm_1/Reshape_1Reshape!layer_norm_1/FusedBatchNormV3:y:0layer_norm_1/Shape:output:0*
T0*/
_output_shapes
:??????????
!layer_norm_1/mul_4/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
layer_norm_1/mul_4Mullayer_norm_1/Reshape_1:output:0)layer_norm_1/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
layer_norm_1/add/ReadVariableOpReadVariableOp(layer_norm_1_add_readvariableop_resource*
_output_shapes
:*
dtype0?
layer_norm_1/addAddV2layer_norm_1/mul_4:z:0'layer_norm_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_2/Conv2DConv2Dlayer_norm_1/add:z:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
conv_2/LeakyRelu	LeakyReluconv_2/BiasAdd:output:0*/
_output_shapes
:?????????`
layer_norm_2/ShapeShapeconv_2/LeakyRelu:activations:0*
T0*
_output_shapes
:j
 layer_norm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"layer_norm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"layer_norm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_2/strided_sliceStridedSlicelayer_norm_2/Shape:output:0)layer_norm_2/strided_slice/stack:output:0+layer_norm_2/strided_slice/stack_1:output:0+layer_norm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
layer_norm_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
layer_norm_2/mulMullayer_norm_2/mul/x:output:0#layer_norm_2/strided_slice:output:0*
T0*
_output_shapes
: l
"layer_norm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_2/strided_slice_1StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_1/stack:output:0-layer_norm_2/strided_slice_1/stack_1:output:0-layer_norm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
layer_norm_2/mul_1Mullayer_norm_2/mul:z:0%layer_norm_2/strided_slice_1:output:0*
T0*
_output_shapes
: l
"layer_norm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_2/strided_slice_2StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_2/stack:output:0-layer_norm_2/strided_slice_2/stack_1:output:0-layer_norm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
layer_norm_2/mul_2Mullayer_norm_2/mul_1:z:0%layer_norm_2/strided_slice_2:output:0*
T0*
_output_shapes
: l
"layer_norm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_2/strided_slice_3StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_3/stack:output:0-layer_norm_2/strided_slice_3/stack_1:output:0-layer_norm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
layer_norm_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_norm_2/mul_3Mullayer_norm_2/mul_3/x:output:0%layer_norm_2/strided_slice_3:output:0*
T0*
_output_shapes
: ^
layer_norm_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
layer_norm_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
layer_norm_2/Reshape/shapePack%layer_norm_2/Reshape/shape/0:output:0layer_norm_2/mul_2:z:0layer_norm_2/mul_3:z:0%layer_norm_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_norm_2/ReshapeReshapeconv_2/LeakyRelu:activations:0#layer_norm_2/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????f
layer_norm_2/ones/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:\
layer_norm_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_norm_2/onesFill!layer_norm_2/ones/packed:output:0 layer_norm_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
layer_norm_2/zeros/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:]
layer_norm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_norm_2/zerosFill"layer_norm_2/zeros/packed:output:0!layer_norm_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
layer_norm_2/ConstConst*
_output_shapes
: *
dtype0*
valueB W
layer_norm_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
layer_norm_2/FusedBatchNormV3FusedBatchNormV3layer_norm_2/Reshape:output:0layer_norm_2/ones:output:0layer_norm_2/zeros:output:0layer_norm_2/Const:output:0layer_norm_2/Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_norm_2/Reshape_1Reshape!layer_norm_2/FusedBatchNormV3:y:0layer_norm_2/Shape:output:0*
T0*/
_output_shapes
:??????????
!layer_norm_2/mul_4/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
layer_norm_2/mul_4Mullayer_norm_2/Reshape_1:output:0)layer_norm_2/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
layer_norm_2/add/ReadVariableOpReadVariableOp(layer_norm_2_add_readvariableop_resource*
_output_shapes
:*
dtype0?
layer_norm_2/addAddV2layer_norm_2/mul_4:z:0'layer_norm_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_3/Conv2DConv2Dlayer_norm_2/add:z:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
conv_3/LeakyRelu	LeakyReluconv_3/BiasAdd:output:0*/
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten/ReshapeReshapeconv_3/LeakyRelu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype0?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d]
dense/LeakyRelu	LeakyReludense/BiasAdd:output:0*'
_output_shapes
:?????????dm
dropout/IdentityIdentitydense/LeakyRelu:activations:0*
T0*'
_output_shapes
:?????????d?
 raw_output/MatMul/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
raw_output/MatMulMatMuldropout/Identity:output:0(raw_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!raw_output/BiasAdd/ReadVariableOpReadVariableOp*raw_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
raw_output/BiasAddBiasAddraw_output/MatMul:product:0)raw_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
raw_output/SoftmaxSoftmaxraw_output/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_1/kernel/Regularizer/SquareSquareBcnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_1/kernel/Regularizer/SumSum/cnn_model2/conv_1/kernel/Regularizer/Square:y:03cnn_model2/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_1/kernel/Regularizer/mulMul3cnn_model2/conv_1/kernel/Regularizer/mul/x:output:01cnn_model2/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_1/gamma/Regularizer/SumSum4cnn_model2/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_1/gamma/Regularizer/mulMul8cnn_model2/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_2/kernel/Regularizer/SquareSquareBcnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_2/kernel/Regularizer/SumSum/cnn_model2/conv_2/kernel/Regularizer/Square:y:03cnn_model2/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_2/kernel/Regularizer/mulMul3cnn_model2/conv_2/kernel/Regularizer/mul/x:output:01cnn_model2/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_2/gamma/Regularizer/SumSum4cnn_model2/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_2/gamma/Regularizer/mulMul8cnn_model2/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_3/kernel/Regularizer/SquareSquareBcnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_3/kernel/Regularizer/SumSum/cnn_model2/conv_3/kernel/Regularizer/Square:y:03cnn_model2/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_3/kernel/Regularizer/mulMul3cnn_model2/conv_3/kernel/Regularizer/mul/x:output:01cnn_model2/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype0?
*cnn_model2/dense/kernel/Regularizer/SquareSquareAcnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?dz
)cnn_model2/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
'cnn_model2/dense/kernel/Regularizer/SumSum.cnn_model2/dense/kernel/Regularizer/Square:y:02cnn_model2/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)cnn_model2/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
'cnn_model2/dense/kernel/Regularizer/mulMul2cnn_model2/dense/kernel/Regularizer/mul/x:output:00cnn_model2/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
/cnn_model2/raw_output/kernel/Regularizer/SquareSquareFcnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d
.cnn_model2/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,cnn_model2/raw_output/kernel/Regularizer/SumSum3cnn_model2/raw_output/kernel/Regularizer/Square:y:07cnn_model2/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.cnn_model2/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,cnn_model2/raw_output/kernel/Regularizer/mulMul7cnn_model2/raw_output/kernel/Regularizer/mul/x:output:05cnn_model2/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentityraw_output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp;^cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^layer_norm_1/add/ReadVariableOp"^layer_norm_1/mul_4/ReadVariableOp ^layer_norm_2/add/ReadVariableOp"^layer_norm_2/mul_4/ReadVariableOp"^raw_output/BiasAdd/ReadVariableOp!^raw_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp2>
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
?n
?

E__inference_cnn_model2_layer_call_and_return_conditional_losses_28875
input_1	
sub_y
	truediv_y&
conv_1_28795:
conv_1_28797: 
layer_norm_1_28800: 
layer_norm_1_28802:&
conv_2_28805:
conv_2_28807: 
layer_norm_2_28810: 
layer_norm_2_28812:&
conv_3_28815:
conv_3_28817:
dense_28821:	?d
dense_28823:d"
raw_output_28827:d
raw_output_28829:
identity??:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?$layer_norm_1/StatefulPartitionedCall?$layer_norm_2/StatefulPartitionedCall?"raw_output/StatefulPartitionedCallT
subSubinput_1sub_y*
T0*/
_output_shapes
:?????????  `
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  ?
conv_1/StatefulPartitionedCallStatefulPartitionedCalltruediv:z:0conv_1_28795conv_1_28797*
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
A__inference_conv_1_layer_call_and_return_conditional_losses_28093?
$layer_norm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0layer_norm_1_28800layer_norm_1_28802*
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
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_28157?
conv_2/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_1/StatefulPartitionedCall:output:0conv_2_28805conv_2_28807*
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
A__inference_conv_2_layer_call_and_return_conditional_losses_28180?
$layer_norm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0layer_norm_2_28810layer_norm_2_28812*
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
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_28244?
conv_3/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_2/StatefulPartitionedCall:output:0conv_3_28815conv_3_28817*
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
A__inference_conv_3_layer_call_and_return_conditional_losses_28267?
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
B__inference_flatten_layer_call_and_return_conditional_losses_28279?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_28821dense_28823*
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
@__inference_dense_layer_call_and_return_conditional_losses_28298?
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
B__inference_dropout_layer_call_and_return_conditional_losses_28434?
"raw_output/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0raw_output_28827raw_output_28829*
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
E__inference_raw_output_layer_call_and_return_conditional_losses_28328?
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_1_28795*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_1/kernel/Regularizer/SquareSquareBcnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_1/kernel/Regularizer/SumSum/cnn_model2/conv_1/kernel/Regularizer/Square:y:03cnn_model2/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_1/kernel/Regularizer/mulMul3cnn_model2/conv_1/kernel/Regularizer/mul/x:output:01cnn_model2/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_1_28800*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_1/gamma/Regularizer/SumSum4cnn_model2/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_1/gamma/Regularizer/mulMul8cnn_model2/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_2_28805*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_2/kernel/Regularizer/SquareSquareBcnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_2/kernel/Regularizer/SumSum/cnn_model2/conv_2/kernel/Regularizer/Square:y:03cnn_model2/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_2/kernel/Regularizer/mulMul3cnn_model2/conv_2/kernel/Regularizer/mul/x:output:01cnn_model2/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_2_28810*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_2/gamma/Regularizer/SumSum4cnn_model2/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_2/gamma/Regularizer/mulMul8cnn_model2/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_3_28815*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_3/kernel/Regularizer/SquareSquareBcnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_3/kernel/Regularizer/SumSum/cnn_model2/conv_3/kernel/Regularizer/Square:y:03cnn_model2/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_3/kernel/Regularizer/mulMul3cnn_model2/conv_3/kernel/Regularizer/mul/x:output:01cnn_model2/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_28821*
_output_shapes
:	?d*
dtype0?
*cnn_model2/dense/kernel/Regularizer/SquareSquareAcnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?dz
)cnn_model2/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
'cnn_model2/dense/kernel/Regularizer/SumSum.cnn_model2/dense/kernel/Regularizer/Square:y:02cnn_model2/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)cnn_model2/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
'cnn_model2/dense/kernel/Regularizer/mulMul2cnn_model2/dense/kernel/Regularizer/mul/x:output:00cnn_model2/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpraw_output_28827*
_output_shapes

:d*
dtype0?
/cnn_model2/raw_output/kernel/Regularizer/SquareSquareFcnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d
.cnn_model2/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,cnn_model2/raw_output/kernel/Regularizer/SumSum3cnn_model2/raw_output/kernel/Regularizer/Square:y:07cnn_model2/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.cnn_model2/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,cnn_model2/raw_output/kernel/Regularizer/mulMul7cnn_model2/raw_output/kernel/Regularizer/mul/x:output:05cnn_model2/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity+raw_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp;^cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^dense/StatefulPartitionedCall%^layer_norm_1/StatefulPartitionedCall%^layer_norm_2/StatefulPartitionedCall#^raw_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$layer_norm_1/StatefulPartitionedCall$layer_norm_1/StatefulPartitionedCall2L
$layer_norm_2/StatefulPartitionedCall$layer_norm_2/StatefulPartitionedCall2H
"raw_output/StatefulPartitionedCall"raw_output/StatefulPartitionedCall:X T
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
?3
?
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_28157

inputs+
mul_4_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp??cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?mul_4/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/xConst*
_output_shapes
: *
dtype0*
value	B :S
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
mul_1Mulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
: _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_2Mul	mul_1:z:0strided_slice_2:output:0*
T0*
_output_shapes
: _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_3Mulmul_3/x:output:0strided_slice_3:output:0*
T0*
_output_shapes
: Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
Reshape/shapePackReshape/shape/0:output:0	mul_2:z:0	mul_3:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????L
ones/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????M
zeros/packedPack	mul_2:z:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    h
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????H
ConstConst*
_output_shapes
: *
dtype0*
valueB J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:t
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*/
_output_shapes
:?????????n
mul_4/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0x
mul_4MulReshape_1:output:0mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0m
addAddV2	mul_4:z:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOpmul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_1/gamma/Regularizer/SumSum4cnn_model2/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_1/gamma/Regularizer/mulMul8cnn_model2/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^add/ReadVariableOp@^cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp^mul_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2,
mul_4/ReadVariableOpmul_4/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?n
?	
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28377

inputs	
sub_y
	truediv_y&
conv_1_28094:
conv_1_28096: 
layer_norm_1_28158: 
layer_norm_1_28160:&
conv_2_28181:
conv_2_28183: 
layer_norm_2_28245: 
layer_norm_2_28247:&
conv_3_28268:
conv_3_28270:
dense_28299:	?d
dense_28301:d"
raw_output_28329:d
raw_output_28331:
identity??:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?$layer_norm_1/StatefulPartitionedCall?$layer_norm_2/StatefulPartitionedCall?"raw_output/StatefulPartitionedCallS
subSubinputssub_y*
T0*/
_output_shapes
:?????????  `
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  ?
conv_1/StatefulPartitionedCallStatefulPartitionedCalltruediv:z:0conv_1_28094conv_1_28096*
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
A__inference_conv_1_layer_call_and_return_conditional_losses_28093?
$layer_norm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0layer_norm_1_28158layer_norm_1_28160*
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
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_28157?
conv_2/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_1/StatefulPartitionedCall:output:0conv_2_28181conv_2_28183*
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
A__inference_conv_2_layer_call_and_return_conditional_losses_28180?
$layer_norm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0layer_norm_2_28245layer_norm_2_28247*
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
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_28244?
conv_3/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_2/StatefulPartitionedCall:output:0conv_3_28268conv_3_28270*
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
A__inference_conv_3_layer_call_and_return_conditional_losses_28267?
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
B__inference_flatten_layer_call_and_return_conditional_losses_28279?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_28299dense_28301*
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
@__inference_dense_layer_call_and_return_conditional_losses_28298?
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
B__inference_dropout_layer_call_and_return_conditional_losses_28309?
"raw_output/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0raw_output_28329raw_output_28331*
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
E__inference_raw_output_layer_call_and_return_conditional_losses_28328?
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_1_28094*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_1/kernel/Regularizer/SquareSquareBcnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_1/kernel/Regularizer/SumSum/cnn_model2/conv_1/kernel/Regularizer/Square:y:03cnn_model2/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_1/kernel/Regularizer/mulMul3cnn_model2/conv_1/kernel/Regularizer/mul/x:output:01cnn_model2/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_1_28158*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_1/gamma/Regularizer/SumSum4cnn_model2/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_1/gamma/Regularizer/mulMul8cnn_model2/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_2_28181*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_2/kernel/Regularizer/SquareSquareBcnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_2/kernel/Regularizer/SumSum/cnn_model2/conv_2/kernel/Regularizer/Square:y:03cnn_model2/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_2/kernel/Regularizer/mulMul3cnn_model2/conv_2/kernel/Regularizer/mul/x:output:01cnn_model2/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_2_28245*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_2/gamma/Regularizer/SumSum4cnn_model2/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_2/gamma/Regularizer/mulMul8cnn_model2/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_3_28268*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_3/kernel/Regularizer/SquareSquareBcnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_3/kernel/Regularizer/SumSum/cnn_model2/conv_3/kernel/Regularizer/Square:y:03cnn_model2/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_3/kernel/Regularizer/mulMul3cnn_model2/conv_3/kernel/Regularizer/mul/x:output:01cnn_model2/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_28299*
_output_shapes
:	?d*
dtype0?
*cnn_model2/dense/kernel/Regularizer/SquareSquareAcnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?dz
)cnn_model2/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
'cnn_model2/dense/kernel/Regularizer/SumSum.cnn_model2/dense/kernel/Regularizer/Square:y:02cnn_model2/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)cnn_model2/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
'cnn_model2/dense/kernel/Regularizer/mulMul2cnn_model2/dense/kernel/Regularizer/mul/x:output:00cnn_model2/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpraw_output_28329*
_output_shapes

:d*
dtype0?
/cnn_model2/raw_output/kernel/Regularizer/SquareSquareFcnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d
.cnn_model2/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,cnn_model2/raw_output/kernel/Regularizer/SumSum3cnn_model2/raw_output/kernel/Regularizer/Square:y:07cnn_model2/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.cnn_model2/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,cnn_model2/raw_output/kernel/Regularizer/mulMul7cnn_model2/raw_output/kernel/Regularizer/mul/x:output:05cnn_model2/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity+raw_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp;^cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^dense/StatefulPartitionedCall%^layer_norm_1/StatefulPartitionedCall%^layer_norm_2/StatefulPartitionedCall#^raw_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp2@
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
?
?
A__inference_conv_2_layer_call_and_return_conditional_losses_28180

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:??????????
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_2/kernel/Regularizer/SquareSquareBcnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_2/kernel/Regularizer/SumSum/cnn_model2/conv_2/kernel/Regularizer/Square:y:03cnn_model2/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_2/kernel/Regularizer/mulMul3cnn_model2/conv_2/kernel/Regularizer/mul/x:output:01cnn_model2/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?'
?
__inference__traced_save_29877
file_prefix7
3savev2_cnn_model2_conv_1_kernel_read_readvariableop5
1savev2_cnn_model2_conv_1_bias_read_readvariableop<
8savev2_cnn_model2_layer_norm_1_gamma_read_readvariableop;
7savev2_cnn_model2_layer_norm_1_beta_read_readvariableop7
3savev2_cnn_model2_conv_2_kernel_read_readvariableop5
1savev2_cnn_model2_conv_2_bias_read_readvariableop<
8savev2_cnn_model2_layer_norm_2_gamma_read_readvariableop;
7savev2_cnn_model2_layer_norm_2_beta_read_readvariableop7
3savev2_cnn_model2_conv_3_kernel_read_readvariableop5
1savev2_cnn_model2_conv_3_bias_read_readvariableop6
2savev2_cnn_model2_dense_kernel_read_readvariableop4
0savev2_cnn_model2_dense_bias_read_readvariableop;
7savev2_cnn_model2_raw_output_kernel_read_readvariableop9
5savev2_cnn_model2_raw_output_bias_read_readvariableop
savev2_const_2

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB&norm1/gamma/.ATTRIBUTES/VARIABLE_VALUEB%norm1/beta/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB&norm2/gamma/.ATTRIBUTES/VARIABLE_VALUEB%norm2/beta/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB$y_/kernel/.ATTRIBUTES/VARIABLE_VALUEB"y_/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_cnn_model2_conv_1_kernel_read_readvariableop1savev2_cnn_model2_conv_1_bias_read_readvariableop8savev2_cnn_model2_layer_norm_1_gamma_read_readvariableop7savev2_cnn_model2_layer_norm_1_beta_read_readvariableop3savev2_cnn_model2_conv_2_kernel_read_readvariableop1savev2_cnn_model2_conv_2_bias_read_readvariableop8savev2_cnn_model2_layer_norm_2_gamma_read_readvariableop7savev2_cnn_model2_layer_norm_2_beta_read_readvariableop3savev2_cnn_model2_conv_3_kernel_read_readvariableop1savev2_cnn_model2_conv_3_bias_read_readvariableop2savev2_cnn_model2_dense_kernel_read_readvariableop0savev2_cnn_model2_dense_bias_read_readvariableop7savev2_cnn_model2_raw_output_kernel_read_readvariableop5savev2_cnn_model2_raw_output_bias_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

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
??
?
E__inference_cnn_model2_layer_call_and_return_conditional_losses_29397

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
identity??:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/BiasAdd/ReadVariableOp?conv_1/Conv2D/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?conv_2/Conv2D/ReadVariableOp?conv_3/BiasAdd/ReadVariableOp?conv_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?layer_norm_1/add/ReadVariableOp?!layer_norm_1/mul_4/ReadVariableOp?layer_norm_2/add/ReadVariableOp?!layer_norm_2/mul_4/ReadVariableOp?!raw_output/BiasAdd/ReadVariableOp? raw_output/MatMul/ReadVariableOpS
subSubinputssub_y*
T0*/
_output_shapes
:?????????  `
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  ?
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_1/Conv2DConv2Dtruediv:z:0$conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
conv_1/LeakyRelu	LeakyReluconv_1/BiasAdd:output:0*/
_output_shapes
:?????????`
layer_norm_1/ShapeShapeconv_1/LeakyRelu:activations:0*
T0*
_output_shapes
:j
 layer_norm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"layer_norm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"layer_norm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_1/strided_sliceStridedSlicelayer_norm_1/Shape:output:0)layer_norm_1/strided_slice/stack:output:0+layer_norm_1/strided_slice/stack_1:output:0+layer_norm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
layer_norm_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
layer_norm_1/mulMullayer_norm_1/mul/x:output:0#layer_norm_1/strided_slice:output:0*
T0*
_output_shapes
: l
"layer_norm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_1/strided_slice_1StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_1/stack:output:0-layer_norm_1/strided_slice_1/stack_1:output:0-layer_norm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
layer_norm_1/mul_1Mullayer_norm_1/mul:z:0%layer_norm_1/strided_slice_1:output:0*
T0*
_output_shapes
: l
"layer_norm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_1/strided_slice_2StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_2/stack:output:0-layer_norm_1/strided_slice_2/stack_1:output:0-layer_norm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
layer_norm_1/mul_2Mullayer_norm_1/mul_1:z:0%layer_norm_1/strided_slice_2:output:0*
T0*
_output_shapes
: l
"layer_norm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_1/strided_slice_3StridedSlicelayer_norm_1/Shape:output:0+layer_norm_1/strided_slice_3/stack:output:0-layer_norm_1/strided_slice_3/stack_1:output:0-layer_norm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
layer_norm_1/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_norm_1/mul_3Mullayer_norm_1/mul_3/x:output:0%layer_norm_1/strided_slice_3:output:0*
T0*
_output_shapes
: ^
layer_norm_1/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
layer_norm_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
layer_norm_1/Reshape/shapePack%layer_norm_1/Reshape/shape/0:output:0layer_norm_1/mul_2:z:0layer_norm_1/mul_3:z:0%layer_norm_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_norm_1/ReshapeReshapeconv_1/LeakyRelu:activations:0#layer_norm_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????f
layer_norm_1/ones/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:\
layer_norm_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_norm_1/onesFill!layer_norm_1/ones/packed:output:0 layer_norm_1/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
layer_norm_1/zeros/packedPacklayer_norm_1/mul_2:z:0*
N*
T0*
_output_shapes
:]
layer_norm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_norm_1/zerosFill"layer_norm_1/zeros/packed:output:0!layer_norm_1/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
layer_norm_1/ConstConst*
_output_shapes
: *
dtype0*
valueB W
layer_norm_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
layer_norm_1/FusedBatchNormV3FusedBatchNormV3layer_norm_1/Reshape:output:0layer_norm_1/ones:output:0layer_norm_1/zeros:output:0layer_norm_1/Const:output:0layer_norm_1/Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_norm_1/Reshape_1Reshape!layer_norm_1/FusedBatchNormV3:y:0layer_norm_1/Shape:output:0*
T0*/
_output_shapes
:??????????
!layer_norm_1/mul_4/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
layer_norm_1/mul_4Mullayer_norm_1/Reshape_1:output:0)layer_norm_1/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
layer_norm_1/add/ReadVariableOpReadVariableOp(layer_norm_1_add_readvariableop_resource*
_output_shapes
:*
dtype0?
layer_norm_1/addAddV2layer_norm_1/mul_4:z:0'layer_norm_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_2/Conv2DConv2Dlayer_norm_1/add:z:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
conv_2/LeakyRelu	LeakyReluconv_2/BiasAdd:output:0*/
_output_shapes
:?????????`
layer_norm_2/ShapeShapeconv_2/LeakyRelu:activations:0*
T0*
_output_shapes
:j
 layer_norm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"layer_norm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"layer_norm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_2/strided_sliceStridedSlicelayer_norm_2/Shape:output:0)layer_norm_2/strided_slice/stack:output:0+layer_norm_2/strided_slice/stack_1:output:0+layer_norm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
layer_norm_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :z
layer_norm_2/mulMullayer_norm_2/mul/x:output:0#layer_norm_2/strided_slice:output:0*
T0*
_output_shapes
: l
"layer_norm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_2/strided_slice_1StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_1/stack:output:0-layer_norm_2/strided_slice_1/stack_1:output:0-layer_norm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
layer_norm_2/mul_1Mullayer_norm_2/mul:z:0%layer_norm_2/strided_slice_1:output:0*
T0*
_output_shapes
: l
"layer_norm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_2/strided_slice_2StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_2/stack:output:0-layer_norm_2/strided_slice_2/stack_1:output:0-layer_norm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
layer_norm_2/mul_2Mullayer_norm_2/mul_1:z:0%layer_norm_2/strided_slice_2:output:0*
T0*
_output_shapes
: l
"layer_norm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$layer_norm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
layer_norm_2/strided_slice_3StridedSlicelayer_norm_2/Shape:output:0+layer_norm_2/strided_slice_3/stack:output:0-layer_norm_2/strided_slice_3/stack_1:output:0-layer_norm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
layer_norm_2/mul_3/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_norm_2/mul_3Mullayer_norm_2/mul_3/x:output:0%layer_norm_2/strided_slice_3:output:0*
T0*
_output_shapes
: ^
layer_norm_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :^
layer_norm_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
layer_norm_2/Reshape/shapePack%layer_norm_2/Reshape/shape/0:output:0layer_norm_2/mul_2:z:0layer_norm_2/mul_3:z:0%layer_norm_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_norm_2/ReshapeReshapeconv_2/LeakyRelu:activations:0#layer_norm_2/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????f
layer_norm_2/ones/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:\
layer_norm_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_norm_2/onesFill!layer_norm_2/ones/packed:output:0 layer_norm_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????g
layer_norm_2/zeros/packedPacklayer_norm_2/mul_2:z:0*
N*
T0*
_output_shapes
:]
layer_norm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_norm_2/zerosFill"layer_norm_2/zeros/packed:output:0!layer_norm_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????U
layer_norm_2/ConstConst*
_output_shapes
: *
dtype0*
valueB W
layer_norm_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
layer_norm_2/FusedBatchNormV3FusedBatchNormV3layer_norm_2/Reshape:output:0layer_norm_2/ones:output:0layer_norm_2/zeros:output:0layer_norm_2/Const:output:0layer_norm_2/Const_1:output:0*
T0*
U0*o
_output_shapes]
[:?????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_norm_2/Reshape_1Reshape!layer_norm_2/FusedBatchNormV3:y:0layer_norm_2/Shape:output:0*
T0*/
_output_shapes
:??????????
!layer_norm_2/mul_4/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
layer_norm_2/mul_4Mullayer_norm_2/Reshape_1:output:0)layer_norm_2/mul_4/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
layer_norm_2/add/ReadVariableOpReadVariableOp(layer_norm_2_add_readvariableop_resource*
_output_shapes
:*
dtype0?
layer_norm_2/addAddV2layer_norm_2/mul_4:z:0'layer_norm_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_3/Conv2DConv2Dlayer_norm_2/add:z:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
conv_3/LeakyRelu	LeakyReluconv_3/BiasAdd:output:0*/
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten/ReshapeReshapeconv_3/LeakyRelu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype0?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d]
dense/LeakyRelu	LeakyReludense/BiasAdd:output:0*'
_output_shapes
:?????????d?
 raw_output/MatMul/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
raw_output/MatMulMatMuldense/LeakyRelu:activations:0(raw_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!raw_output/BiasAdd/ReadVariableOpReadVariableOp*raw_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
raw_output/BiasAddBiasAddraw_output/MatMul:product:0)raw_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
raw_output/SoftmaxSoftmaxraw_output/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_1/kernel/Regularizer/SquareSquareBcnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_1/kernel/Regularizer/SumSum/cnn_model2/conv_1/kernel/Regularizer/Square:y:03cnn_model2/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_1/kernel/Regularizer/mulMul3cnn_model2/conv_1/kernel/Regularizer/mul/x:output:01cnn_model2/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_1_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_1/gamma/Regularizer/SumSum4cnn_model2/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_1/gamma/Regularizer/mulMul8cnn_model2/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_2/kernel/Regularizer/SquareSquareBcnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_2/kernel/Regularizer/SumSum/cnn_model2/conv_2/kernel/Regularizer/Square:y:03cnn_model2/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_2/kernel/Regularizer/mulMul3cnn_model2/conv_2/kernel/Regularizer/mul/x:output:01cnn_model2/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOp*layer_norm_2_mul_4_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_2/gamma/Regularizer/SumSum4cnn_model2/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_2/gamma/Regularizer/mulMul8cnn_model2/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_3/kernel/Regularizer/SquareSquareBcnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_3/kernel/Regularizer/SumSum/cnn_model2/conv_3/kernel/Regularizer/Square:y:03cnn_model2/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_3/kernel/Regularizer/mulMul3cnn_model2/conv_3/kernel/Regularizer/mul/x:output:01cnn_model2/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype0?
*cnn_model2/dense/kernel/Regularizer/SquareSquareAcnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?dz
)cnn_model2/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
'cnn_model2/dense/kernel/Regularizer/SumSum.cnn_model2/dense/kernel/Regularizer/Square:y:02cnn_model2/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)cnn_model2/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
'cnn_model2/dense/kernel/Regularizer/mulMul2cnn_model2/dense/kernel/Regularizer/mul/x:output:00cnn_model2/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)raw_output_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0?
/cnn_model2/raw_output/kernel/Regularizer/SquareSquareFcnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d
.cnn_model2/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,cnn_model2/raw_output/kernel/Regularizer/SumSum3cnn_model2/raw_output/kernel/Regularizer/Square:y:07cnn_model2/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.cnn_model2/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,cnn_model2/raw_output/kernel/Regularizer/mulMul7cnn_model2/raw_output/kernel/Regularizer/mul/x:output:05cnn_model2/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentityraw_output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp;^cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp ^layer_norm_1/add/ReadVariableOp"^layer_norm_1/mul_4/ReadVariableOp ^layer_norm_2/add/ReadVariableOp"^layer_norm_2/mul_4/ReadVariableOp"^raw_output/BiasAdd/ReadVariableOp!^raw_output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp2>
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
?
?
A__inference_conv_3_layer_call_and_return_conditional_losses_28267

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Y
	LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:??????????
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_3/kernel/Regularizer/SquareSquareBcnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_3/kernel/Regularizer/SumSum/cnn_model2/conv_3/kernel/Regularizer/Square:y:03cnn_model2/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_3/kernel/Regularizer/mulMul3cnn_model2/conv_3/kernel/Regularizer/mul/x:output:01cnn_model2/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp;^cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2x
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_dropout_layer_call_and_return_conditional_losses_29701

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?:
?	
!__inference__traced_restore_29929
file_prefixC
)assignvariableop_cnn_model2_conv_1_kernel:7
)assignvariableop_1_cnn_model2_conv_1_bias:>
0assignvariableop_2_cnn_model2_layer_norm_1_gamma:=
/assignvariableop_3_cnn_model2_layer_norm_1_beta:E
+assignvariableop_4_cnn_model2_conv_2_kernel:7
)assignvariableop_5_cnn_model2_conv_2_bias:>
0assignvariableop_6_cnn_model2_layer_norm_2_gamma:=
/assignvariableop_7_cnn_model2_layer_norm_2_beta:E
+assignvariableop_8_cnn_model2_conv_3_kernel:7
)assignvariableop_9_cnn_model2_conv_3_bias:>
+assignvariableop_10_cnn_model2_dense_kernel:	?d7
)assignvariableop_11_cnn_model2_dense_bias:dB
0assignvariableop_12_cnn_model2_raw_output_kernel:d<
.assignvariableop_13_cnn_model2_raw_output_bias:
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB&norm1/gamma/.ATTRIBUTES/VARIABLE_VALUEB%norm1/beta/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB&norm2/gamma/.ATTRIBUTES/VARIABLE_VALUEB%norm2/beta/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB$y_/kernel/.ATTRIBUTES/VARIABLE_VALUEB"y_/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp)assignvariableop_cnn_model2_conv_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp)assignvariableop_1_cnn_model2_conv_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_cnn_model2_layer_norm_1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_cnn_model2_layer_norm_1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp+assignvariableop_4_cnn_model2_conv_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp)assignvariableop_5_cnn_model2_conv_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp0assignvariableop_6_cnn_model2_layer_norm_2_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp/assignvariableop_7_cnn_model2_layer_norm_2_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp+assignvariableop_8_cnn_model2_conv_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp)assignvariableop_9_cnn_model2_conv_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_cnn_model2_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp)assignvariableop_11_cnn_model2_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp0assignvariableop_12_cnn_model2_raw_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp.assignvariableop_13_cnn_model2_raw_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
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
?
?
__inference_loss_fn_4_29788]
Ccnn_model2_conv_3_kernel_regularizer_square_readvariableop_resource:
identity??:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp?
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCcnn_model2_conv_3_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_3/kernel/Regularizer/SquareSquareBcnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_3/kernel/Regularizer/SumSum/cnn_model2/conv_3/kernel/Regularizer/Square:y:03cnn_model2/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_3/kernel/Regularizer/mulMul3cnn_model2/conv_3/kernel/Regularizer/mul/x:output:01cnn_model2/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentity,cnn_model2/conv_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp;^cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2x
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_29697

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?n
?

E__inference_cnn_model2_layer_call_and_return_conditional_losses_28788
input_1	
sub_y
	truediv_y&
conv_1_28708:
conv_1_28710: 
layer_norm_1_28713: 
layer_norm_1_28715:&
conv_2_28718:
conv_2_28720: 
layer_norm_2_28723: 
layer_norm_2_28725:&
conv_3_28728:
conv_3_28730:
dense_28734:	?d
dense_28736:d"
raw_output_28740:d
raw_output_28742:
identity??:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp?:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp?9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp??cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?$layer_norm_1/StatefulPartitionedCall?$layer_norm_2/StatefulPartitionedCall?"raw_output/StatefulPartitionedCallT
subSubinput_1sub_y*
T0*/
_output_shapes
:?????????  `
truedivRealDivsub:z:0	truediv_y*
T0*/
_output_shapes
:?????????  ?
conv_1/StatefulPartitionedCallStatefulPartitionedCalltruediv:z:0conv_1_28708conv_1_28710*
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
A__inference_conv_1_layer_call_and_return_conditional_losses_28093?
$layer_norm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0layer_norm_1_28713layer_norm_1_28715*
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
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_28157?
conv_2/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_1/StatefulPartitionedCall:output:0conv_2_28718conv_2_28720*
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
A__inference_conv_2_layer_call_and_return_conditional_losses_28180?
$layer_norm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0layer_norm_2_28723layer_norm_2_28725*
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
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_28244?
conv_3/StatefulPartitionedCallStatefulPartitionedCall-layer_norm_2/StatefulPartitionedCall:output:0conv_3_28728conv_3_28730*
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
A__inference_conv_3_layer_call_and_return_conditional_losses_28267?
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
B__inference_flatten_layer_call_and_return_conditional_losses_28279?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_28734dense_28736*
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
@__inference_dense_layer_call_and_return_conditional_losses_28298?
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
B__inference_dropout_layer_call_and_return_conditional_losses_28309?
"raw_output/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0raw_output_28740raw_output_28742*
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
E__inference_raw_output_layer_call_and_return_conditional_losses_28328?
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_1_28708*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_1/kernel/Regularizer/SquareSquareBcnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_1/kernel/Regularizer/SumSum/cnn_model2/conv_1/kernel/Regularizer/Square:y:03cnn_model2/conv_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_1/kernel/Regularizer/mulMul3cnn_model2/conv_1/kernel/Regularizer/mul/x:output:01cnn_model2/conv_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_1_28713*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_1/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_1/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_1/gamma/Regularizer/SumSum4cnn_model2/layer_norm_1/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_1/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_1/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_1/gamma/Regularizer/mulMul8cnn_model2/layer_norm_1/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_1/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_2_28718*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_2/kernel/Regularizer/SquareSquareBcnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_2/kernel/Regularizer/SumSum/cnn_model2/conv_2/kernel/Regularizer/Square:y:03cnn_model2/conv_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_2/kernel/Regularizer/mulMul3cnn_model2/conv_2/kernel/Regularizer/mul/x:output:01cnn_model2/conv_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOpReadVariableOplayer_norm_2_28723*
_output_shapes
:*
dtype0?
0cnn_model2/layer_norm_2/gamma/Regularizer/SquareSquareGcnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:y
/cnn_model2/layer_norm_2/gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
-cnn_model2/layer_norm_2/gamma/Regularizer/SumSum4cnn_model2/layer_norm_2/gamma/Regularizer/Square:y:08cnn_model2/layer_norm_2/gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: t
/cnn_model2/layer_norm_2/gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-cnn_model2/layer_norm_2/gamma/Regularizer/mulMul8cnn_model2/layer_norm_2/gamma/Regularizer/mul/x:output:06cnn_model2/layer_norm_2/gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_3_28728*&
_output_shapes
:*
dtype0?
+cnn_model2/conv_3/kernel/Regularizer/SquareSquareBcnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:?
*cnn_model2/conv_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
(cnn_model2/conv_3/kernel/Regularizer/SumSum/cnn_model2/conv_3/kernel/Regularizer/Square:y:03cnn_model2/conv_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: o
*cnn_model2/conv_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
(cnn_model2/conv_3/kernel/Regularizer/mulMul3cnn_model2/conv_3/kernel/Regularizer/mul/x:output:01cnn_model2/conv_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_28734*
_output_shapes
:	?d*
dtype0?
*cnn_model2/dense/kernel/Regularizer/SquareSquareAcnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?dz
)cnn_model2/dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
'cnn_model2/dense/kernel/Regularizer/SumSum.cnn_model2/dense/kernel/Regularizer/Square:y:02cnn_model2/dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)cnn_model2/dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
'cnn_model2/dense/kernel/Regularizer/mulMul2cnn_model2/dense/kernel/Regularizer/mul/x:output:00cnn_model2/dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpraw_output_28740*
_output_shapes

:d*
dtype0?
/cnn_model2/raw_output/kernel/Regularizer/SquareSquareFcnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d
.cnn_model2/raw_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,cnn_model2/raw_output/kernel/Regularizer/SumSum3cnn_model2/raw_output/kernel/Regularizer/Square:y:07cnn_model2/raw_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: s
.cnn_model2/raw_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,cnn_model2/raw_output/kernel/Regularizer/mulMul7cnn_model2/raw_output/kernel/Regularizer/mul/x:output:05cnn_model2/raw_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity+raw_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp;^cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp;^cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:^cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp@^cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?^cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^dense/StatefulPartitionedCall%^layer_norm_1/StatefulPartitionedCall%^layer_norm_2/StatefulPartitionedCall#^raw_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????  ::: : : : : : : : : : : : : : 2x
:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_1/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_2/kernel/Regularizer/Square/ReadVariableOp2x
:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp:cnn_model2/conv_3/kernel/Regularizer/Square/ReadVariableOp2v
9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp9cnn_model2/dense/kernel/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_1/gamma/Regularizer/Square/ReadVariableOp2?
?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp?cnn_model2/layer_norm_2/gamma/Regularizer/Square/ReadVariableOp2?
>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp>cnn_model2/raw_output/kernel/Regularizer/Square/ReadVariableOp2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$layer_norm_1/StatefulPartitionedCall$layer_norm_1/StatefulPartitionedCall2L
$layer_norm_2/StatefulPartitionedCall$layer_norm_2/StatefulPartitionedCall2H
"raw_output/StatefulPartitionedCall"raw_output/StatefulPartitionedCall:X T
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
*__inference_cnn_model2_layer_call_fn_29030

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
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28629o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
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
?
?
#__inference_signature_wrapper_28956
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
identity??StatefulPartitionedCall?
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
 __inference__wrapped_model_28065o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
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
?
?
&__inference_conv_2_layer_call_fn_29517

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
A__inference_conv_2_layer_call_and_return_conditional_losses_28180w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
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
*v&call_and_return_all_conditional_losses
w_default_save_signature"
_tf_keras_model
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
?
axis
	gamma
beta
	variables
trainable_variables
regularization_losses
	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
?
"axis
	#gamma
$beta
%	variables
&trainable_variables
'regularization_losses
(	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

=kernel
>bias
?	variables
@trainable_variables
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
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
u__call__
w_default_save_signature
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
2:02cnn_model2/conv_1/kernel
$:"2cnn_model2/conv_1/bias
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
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2cnn_model2/layer_norm_1/gamma
*:(2cnn_model2/layer_norm_1/beta
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
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
2:02cnn_model2/conv_2/kernel
$:"2cnn_model2/conv_2/bias
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
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
 regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2cnn_model2/layer_norm_2/gamma
*:(2cnn_model2/layer_norm_2/beta
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
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
%	variables
&trainable_variables
'regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2:02cnn_model2/conv_3/kernel
$:"2cnn_model2/conv_3/bias
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
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
+	variables
,trainable_variables
-regularization_losses
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
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
/	variables
0trainable_variables
1regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(	?d2cnn_model2/dense/kernel
#:!d2cnn_model2/dense/bias
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
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
5	variables
6trainable_variables
7regularization_losses
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
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
9	variables
:trainable_variables
;regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,d2cnn_model2/raw_output/kernel
(:&2cnn_model2/raw_output/bias
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
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
*__inference_cnn_model2_layer_call_fn_28412
*__inference_cnn_model2_layer_call_fn_28993
*__inference_cnn_model2_layer_call_fn_29030
*__inference_cnn_model2_layer_call_fn_28701?
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
?2?
E__inference_cnn_model2_layer_call_and_return_conditional_losses_29214
E__inference_cnn_model2_layer_call_and_return_conditional_losses_29397
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28788
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28875?
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
 __inference__wrapped_model_28065input_1"?
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
?2?
&__inference_conv_1_layer_call_fn_29412?
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
A__inference_conv_1_layer_call_and_return_conditional_losses_29429?
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
,__inference_layer_norm_1_layer_call_fn_29444?
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
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_29502?
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
&__inference_conv_2_layer_call_fn_29517?
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
A__inference_conv_2_layer_call_and_return_conditional_losses_29534?
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
,__inference_layer_norm_2_layer_call_fn_29549?
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
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_29607?
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
&__inference_conv_3_layer_call_fn_29622?
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
A__inference_conv_3_layer_call_and_return_conditional_losses_29639?
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
'__inference_flatten_layer_call_fn_29644?
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
B__inference_flatten_layer_call_and_return_conditional_losses_29650?
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
%__inference_dense_layer_call_fn_29665?
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
@__inference_dense_layer_call_and_return_conditional_losses_29682?
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
'__inference_dropout_layer_call_fn_29687
'__inference_dropout_layer_call_fn_29692?
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
B__inference_dropout_layer_call_and_return_conditional_losses_29697
B__inference_dropout_layer_call_and_return_conditional_losses_29701?
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
*__inference_raw_output_layer_call_fn_29716?
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
E__inference_raw_output_layer_call_and_return_conditional_losses_29733?
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
__inference_loss_fn_0_29744?
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
__inference_loss_fn_1_29755?
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
__inference_loss_fn_2_29766?
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
__inference_loss_fn_3_29777?
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
__inference_loss_fn_4_29788?
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
__inference_loss_fn_5_29799?
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
__inference_loss_fn_6_29810?
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
#__inference_signature_wrapper_28956input_1"?
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
 __inference__wrapped_model_28065???#$)*34=>8?5
.?+
)?&
input_1?????????  
? "3?0
.
output_1"?
output_1??????????
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28788y??#$)*34=><?9
2?/
)?&
input_1?????????  
p 
? "%?"
?
0?????????
? ?
E__inference_cnn_model2_layer_call_and_return_conditional_losses_28875y??#$)*34=><?9
2?/
)?&
input_1?????????  
p
? "%?"
?
0?????????
? ?
E__inference_cnn_model2_layer_call_and_return_conditional_losses_29214x??#$)*34=>;?8
1?.
(?%
inputs?????????  
p 
? "%?"
?
0?????????
? ?
E__inference_cnn_model2_layer_call_and_return_conditional_losses_29397x??#$)*34=>;?8
1?.
(?%
inputs?????????  
p
? "%?"
?
0?????????
? ?
*__inference_cnn_model2_layer_call_fn_28412l??#$)*34=><?9
2?/
)?&
input_1?????????  
p 
? "???????????
*__inference_cnn_model2_layer_call_fn_28701l??#$)*34=><?9
2?/
)?&
input_1?????????  
p
? "???????????
*__inference_cnn_model2_layer_call_fn_28993k??#$)*34=>;?8
1?.
(?%
inputs?????????  
p 
? "???????????
*__inference_cnn_model2_layer_call_fn_29030k??#$)*34=>;?8
1?.
(?%
inputs?????????  
p
? "???????????
A__inference_conv_1_layer_call_and_return_conditional_losses_29429l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????
? ?
&__inference_conv_1_layer_call_fn_29412_7?4
-?*
(?%
inputs?????????  
? " ???????????
A__inference_conv_2_layer_call_and_return_conditional_losses_29534l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
&__inference_conv_2_layer_call_fn_29517_7?4
-?*
(?%
inputs?????????
? " ???????????
A__inference_conv_3_layer_call_and_return_conditional_losses_29639l)*7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
&__inference_conv_3_layer_call_fn_29622_)*7?4
-?*
(?%
inputs?????????
? " ???????????
@__inference_dense_layer_call_and_return_conditional_losses_29682]340?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? y
%__inference_dense_layer_call_fn_29665P340?-
&?#
!?
inputs??????????
? "??????????d?
B__inference_dropout_layer_call_and_return_conditional_losses_29697\3?0
)?&
 ?
inputs?????????d
p 
? "%?"
?
0?????????d
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_29701\3?0
)?&
 ?
inputs?????????d
p
? "%?"
?
0?????????d
? z
'__inference_dropout_layer_call_fn_29687O3?0
)?&
 ?
inputs?????????d
p 
? "??????????dz
'__inference_dropout_layer_call_fn_29692O3?0
)?&
 ?
inputs?????????d
p
? "??????????d?
B__inference_flatten_layer_call_and_return_conditional_losses_29650a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? 
'__inference_flatten_layer_call_fn_29644T7?4
-?*
(?%
inputs?????????
? "????????????
G__inference_layer_norm_1_layer_call_and_return_conditional_losses_29502l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
,__inference_layer_norm_1_layer_call_fn_29444_7?4
-?*
(?%
inputs?????????
? " ???????????
G__inference_layer_norm_2_layer_call_and_return_conditional_losses_29607l#$7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
,__inference_layer_norm_2_layer_call_fn_29549_#$7?4
-?*
(?%
inputs?????????
? " ??????????:
__inference_loss_fn_0_29744?

? 
? "? :
__inference_loss_fn_1_29755?

? 
? "? :
__inference_loss_fn_2_29766?

? 
? "? :
__inference_loss_fn_3_29777#?

? 
? "? :
__inference_loss_fn_4_29788)?

? 
? "? :
__inference_loss_fn_5_297993?

? 
? "? :
__inference_loss_fn_6_29810=?

? 
? "? ?
E__inference_raw_output_layer_call_and_return_conditional_losses_29733\=>/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? }
*__inference_raw_output_layer_call_fn_29716O=>/?,
%?"
 ?
inputs?????????d
? "???????????
#__inference_signature_wrapper_28956???#$)*34=>C?@
? 
9?6
4
input_1)?&
input_1?????????  "3?0
.
output_1"?
output_1?????????