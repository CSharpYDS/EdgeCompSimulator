��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	&�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	&�*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�[*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	�[*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:[*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:[*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
 
h


kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
 
*

0
1
2
3
4
5
*

0
1
2
3
4
5
�
regularization_losses
trainable_variables
metrics
non_trainable_variables
layer_regularization_losses
layer_metrics

 layers
	variables
 
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 


0
1


0
1
�
regularization_losses
trainable_variables
!metrics
"non_trainable_variables
#layer_regularization_losses
$layer_metrics

%layers
	variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
regularization_losses
trainable_variables
&metrics
'non_trainable_variables
(layer_regularization_losses
)layer_metrics

*layers
	variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
regularization_losses
trainable_variables
+metrics
,non_trainable_variables
-layer_regularization_losses
.layer_metrics

/layers
	variables
 
 
 
 

0
1
2
3
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
z
serving_default_input_1Placeholder*'
_output_shapes
:���������&*
dtype0*
shape:���������&
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1367349
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpConst*
Tin

2*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1367516
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
	2*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1367544��
�
�
)__inference_model_2_layer_call_fn_1367312
input_1
dense_kernel

dense_bias
dense_1_kernel
dense_1_bias
dense_2_kernel
dense_2_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1dense_kernel
dense_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_13673032
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������&
!
_user_specified_name	input_1
�

�
D__inference_dense_2_layer_call_and_return_conditional_losses_1367261

inputs(
$matmul_readvariableop_dense_2_kernel'
#biasadd_readvariableop_dense_2_bias
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_2_kernel*
_output_shapes
:	�[*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2
MatMul�
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_2_bias*
_output_shapes
:[*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������[2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_model_2_layer_call_fn_1367421

inputs
dense_kernel

dense_bias
dense_1_kernel
dense_1_bias
dense_2_kernel
dense_2_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_13673272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������&
 
_user_specified_nameinputs
�
�
D__inference_model_2_layer_call_and_return_conditional_losses_1367327

inputs
dense_dense_kernel
dense_dense_bias
dense_1_dense_1_kernel
dense_1_dense_1_bias
dense_2_dense_2_kernel
dense_2_dense_2_bias
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_13672152
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_13672382!
dense_1/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_13672612!
dense_2/StatefulPartitionedCall�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:���������&
 
_user_specified_nameinputs
�	
�
B__inference_dense_layer_call_and_return_conditional_losses_1367215

inputs&
"matmul_readvariableop_dense_kernel%
!biasadd_readvariableop_dense_bias
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_dense_kernel*
_output_shapes
:	&�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_dense_bias*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������&
 
_user_specified_nameinputs
�
�
)__inference_model_2_layer_call_fn_1367410

inputs
dense_kernel

dense_bias
dense_1_kernel
dense_1_bias
dense_2_kernel
dense_2_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_13673032
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������&
 
_user_specified_nameinputs
�
�
D__inference_model_2_layer_call_and_return_conditional_losses_1367287
input_1
dense_dense_kernel
dense_dense_bias
dense_1_dense_1_kernel
dense_1_dense_1_bias
dense_2_dense_2_kernel
dense_2_dense_2_bias
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_13672152
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_13672382!
dense_1/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_13672612!
dense_2/StatefulPartitionedCall�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:P L
'
_output_shapes
:���������&
!
_user_specified_name	input_1
�

�
D__inference_dense_1_layer_call_and_return_conditional_losses_1367238

inputs(
$matmul_readvariableop_dense_1_kernel'
#biasadd_readvariableop_dense_1_bias
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_1_kernel* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_1_bias*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_2_layer_call_fn_1367475

inputs
dense_2_kernel
dense_2_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_kerneldense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_13672612
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_1367349
input_1
dense_kernel

dense_bias
dense_1_kernel
dense_1_bias
dense_2_kernel
dense_2_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1dense_kernel
dense_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_13672002
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������&
!
_user_specified_name	input_1
�
�
D__inference_model_2_layer_call_and_return_conditional_losses_1367374

inputs,
(dense_matmul_readvariableop_dense_kernel+
'dense_biasadd_readvariableop_dense_bias0
,dense_1_matmul_readvariableop_dense_1_kernel/
+dense_1_biasadd_readvariableop_dense_1_bias0
,dense_2_matmul_readvariableop_dense_2_kernel/
+dense_2_biasadd_readvariableop_dense_2_bias
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
dense/MatMul/ReadVariableOpReadVariableOp(dense_matmul_readvariableop_dense_kernel*
_output_shapes
:	&�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp'dense_biasadd_readvariableop_dense_bias*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2

dense/Relu�
dense_1/MatMul/ReadVariableOpReadVariableOp,dense_1_matmul_readvariableop_dense_1_kernel* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp+dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_1/Relu�
dense_2/MatMul/ReadVariableOpReadVariableOp,dense_2_matmul_readvariableop_dense_2_kernel*
_output_shapes
:	�[*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp+dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:[*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������[2
dense_2/Softmax�
IdentityIdentitydense_2/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������&
 
_user_specified_nameinputs
�
�
'__inference_dense_layer_call_fn_1367439

inputs
dense_kernel

dense_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_kernel
dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_13672152
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������&
 
_user_specified_nameinputs
�

�
D__inference_dense_1_layer_call_and_return_conditional_losses_1367450

inputs(
$matmul_readvariableop_dense_1_kernel'
#biasadd_readvariableop_dense_1_bias
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_1_kernel* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_1_bias*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_model_2_layer_call_and_return_conditional_losses_1367303

inputs
dense_dense_kernel
dense_dense_bias
dense_1_dense_1_kernel
dense_1_dense_1_bias
dense_2_dense_2_kernel
dense_2_dense_2_bias
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_13672152
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_13672382!
dense_1/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_13672612!
dense_2/StatefulPartitionedCall�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:���������&
 
_user_specified_nameinputs
�

�
D__inference_dense_2_layer_call_and_return_conditional_losses_1367468

inputs(
$matmul_readvariableop_dense_2_kernel'
#biasadd_readvariableop_dense_2_bias
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_2_kernel*
_output_shapes
:	�[*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2
MatMul�
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_2_bias*
_output_shapes
:[*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������[2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�"
�
"__inference__wrapped_model_1367200
input_14
0model_2_dense_matmul_readvariableop_dense_kernel3
/model_2_dense_biasadd_readvariableop_dense_bias8
4model_2_dense_1_matmul_readvariableop_dense_1_kernel7
3model_2_dense_1_biasadd_readvariableop_dense_1_bias8
4model_2_dense_2_matmul_readvariableop_dense_2_kernel7
3model_2_dense_2_biasadd_readvariableop_dense_2_bias
identity��$model_2/dense/BiasAdd/ReadVariableOp�#model_2/dense/MatMul/ReadVariableOp�&model_2/dense_1/BiasAdd/ReadVariableOp�%model_2/dense_1/MatMul/ReadVariableOp�&model_2/dense_2/BiasAdd/ReadVariableOp�%model_2/dense_2/MatMul/ReadVariableOp�
#model_2/dense/MatMul/ReadVariableOpReadVariableOp0model_2_dense_matmul_readvariableop_dense_kernel*
_output_shapes
:	&�*
dtype02%
#model_2/dense/MatMul/ReadVariableOp�
model_2/dense/MatMulMatMulinput_1+model_2/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_2/dense/MatMul�
$model_2/dense/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_biasadd_readvariableop_dense_bias*
_output_shapes	
:�*
dtype02&
$model_2/dense/BiasAdd/ReadVariableOp�
model_2/dense/BiasAddBiasAddmodel_2/dense/MatMul:product:0,model_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_2/dense/BiasAdd�
model_2/dense/ReluRelumodel_2/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
model_2/dense/Relu�
%model_2/dense_1/MatMul/ReadVariableOpReadVariableOp4model_2_dense_1_matmul_readvariableop_dense_1_kernel* 
_output_shapes
:
��*
dtype02'
%model_2/dense_1/MatMul/ReadVariableOp�
model_2/dense_1/MatMulMatMul model_2/dense/Relu:activations:0-model_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_2/dense_1/MatMul�
&model_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp3model_2_dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes	
:�*
dtype02(
&model_2/dense_1/BiasAdd/ReadVariableOp�
model_2/dense_1/BiasAddBiasAdd model_2/dense_1/MatMul:product:0.model_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_2/dense_1/BiasAdd�
model_2/dense_1/ReluRelu model_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
model_2/dense_1/Relu�
%model_2/dense_2/MatMul/ReadVariableOpReadVariableOp4model_2_dense_2_matmul_readvariableop_dense_2_kernel*
_output_shapes
:	�[*
dtype02'
%model_2/dense_2/MatMul/ReadVariableOp�
model_2/dense_2/MatMulMatMul"model_2/dense_1/Relu:activations:0-model_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2
model_2/dense_2/MatMul�
&model_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp3model_2_dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:[*
dtype02(
&model_2/dense_2/BiasAdd/ReadVariableOp�
model_2/dense_2/BiasAddBiasAdd model_2/dense_2/MatMul:product:0.model_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2
model_2/dense_2/BiasAdd�
model_2/dense_2/SoftmaxSoftmax model_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������[2
model_2/dense_2/Softmax�
IdentityIdentity!model_2/dense_2/Softmax:softmax:0%^model_2/dense/BiasAdd/ReadVariableOp$^model_2/dense/MatMul/ReadVariableOp'^model_2/dense_1/BiasAdd/ReadVariableOp&^model_2/dense_1/MatMul/ReadVariableOp'^model_2/dense_2/BiasAdd/ReadVariableOp&^model_2/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::2L
$model_2/dense/BiasAdd/ReadVariableOp$model_2/dense/BiasAdd/ReadVariableOp2J
#model_2/dense/MatMul/ReadVariableOp#model_2/dense/MatMul/ReadVariableOp2P
&model_2/dense_1/BiasAdd/ReadVariableOp&model_2/dense_1/BiasAdd/ReadVariableOp2N
%model_2/dense_1/MatMul/ReadVariableOp%model_2/dense_1/MatMul/ReadVariableOp2P
&model_2/dense_2/BiasAdd/ReadVariableOp&model_2/dense_2/BiasAdd/ReadVariableOp2N
%model_2/dense_2/MatMul/ReadVariableOp%model_2/dense_2/MatMul/ReadVariableOp:P L
'
_output_shapes
:���������&
!
_user_specified_name	input_1
�
�
D__inference_model_2_layer_call_and_return_conditional_losses_1367399

inputs,
(dense_matmul_readvariableop_dense_kernel+
'dense_biasadd_readvariableop_dense_bias0
,dense_1_matmul_readvariableop_dense_1_kernel/
+dense_1_biasadd_readvariableop_dense_1_bias0
,dense_2_matmul_readvariableop_dense_2_kernel/
+dense_2_biasadd_readvariableop_dense_2_bias
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
dense/MatMul/ReadVariableOpReadVariableOp(dense_matmul_readvariableop_dense_kernel*
_output_shapes
:	&�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp'dense_biasadd_readvariableop_dense_bias*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������2

dense/Relu�
dense_1/MatMul/ReadVariableOpReadVariableOp,dense_1_matmul_readvariableop_dense_1_kernel* 
_output_shapes
:
��*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp+dense_1_biasadd_readvariableop_dense_1_bias*
_output_shapes	
:�*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_1/Relu�
dense_2/MatMul/ReadVariableOpReadVariableOp,dense_2_matmul_readvariableop_dense_2_kernel*
_output_shapes
:	�[*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp+dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:[*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������[2
dense_2/Softmax�
IdentityIdentitydense_2/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������&
 
_user_specified_nameinputs
�
�
#__inference__traced_restore_1367544
file_prefix!
assignvariableop_dense_kernel!
assignvariableop_1_dense_bias%
!assignvariableop_2_dense_1_kernel#
assignvariableop_3_dense_1_bias%
!assignvariableop_4_dense_2_kernel#
assignvariableop_5_dense_2_bias

identity_7��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6�

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes
: 2

Identity_7"!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
)__inference_dense_1_layer_call_fn_1367457

inputs
dense_1_kernel
dense_1_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_kerneldense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_13672382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_model_2_layer_call_and_return_conditional_losses_1367274
input_1
dense_dense_kernel
dense_dense_bias
dense_1_dense_1_kernel
dense_1_dense_1_bias
dense_2_dense_2_kernel
dense_2_dense_2_bias
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_dense_kerneldense_dense_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_13672152
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_dense_1_kerneldense_1_dense_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_13672382!
dense_1/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_13672612!
dense_2/StatefulPartitionedCall�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:P L
'
_output_shapes
:���������&
!
_user_specified_name	input_1
�	
�
B__inference_dense_layer_call_and_return_conditional_losses_1367432

inputs&
"matmul_readvariableop_dense_kernel%
!biasadd_readvariableop_dense_bias
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp"matmul_readvariableop_dense_kernel*
_output_shapes
:	&�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOp!biasadd_readvariableop_dense_bias*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������&::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������&
 
_user_specified_nameinputs
�
�
 __inference__traced_save_1367516
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	22
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*M
_input_shapes<
:: :	&�:�:
��:�:	�[:[: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	&�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�[: 

_output_shapes
:[:

_output_shapes
: 
�
�
)__inference_model_2_layer_call_fn_1367336
input_1
dense_kernel

dense_bias
dense_1_kernel
dense_1_bias
dense_2_kernel
dense_2_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1dense_kernel
dense_biasdense_1_kerneldense_1_biasdense_2_kerneldense_2_bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������[*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_13673272
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������[2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������&::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������&
!
_user_specified_name	input_1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������&;
dense_20
StatefulPartitionedCall:0���������[tensorflow/serving/predict:�{
�#
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
0__call__
*1&call_and_return_all_conditional_losses
2_default_save_signature"� 
_tf_keras_network� {"class_name": "Functional", "name": "model_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 38]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 91, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_2", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 38]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 38]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 38]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 91, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_2", 0, 0]]}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 38]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 38]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
�


kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*3&call_and_return_all_conditional_losses
4__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 38}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 38]}}
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*5&call_and_return_all_conditional_losses
6__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*7&call_and_return_all_conditional_losses
8__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 91, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
 "
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
�
regularization_losses
trainable_variables
metrics
non_trainable_variables
layer_regularization_losses
layer_metrics

 layers
	variables
0__call__
2_default_save_signature
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
,
9serving_default"
signature_map
:	&�2dense/kernel
:�2
dense/bias
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
�
regularization_losses
trainable_variables
!metrics
"non_trainable_variables
#layer_regularization_losses
$layer_metrics

%layers
	variables
4__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
": 
��2dense_1/kernel
:�2dense_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
regularization_losses
trainable_variables
&metrics
'non_trainable_variables
(layer_regularization_losses
)layer_metrics

*layers
	variables
6__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
!:	�[2dense_2/kernel
:[2dense_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
regularization_losses
trainable_variables
+metrics
,non_trainable_variables
-layer_regularization_losses
.layer_metrics

/layers
	variables
8__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
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
�2�
)__inference_model_2_layer_call_fn_1367410
)__inference_model_2_layer_call_fn_1367421
)__inference_model_2_layer_call_fn_1367336
)__inference_model_2_layer_call_fn_1367312�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_model_2_layer_call_and_return_conditional_losses_1367399
D__inference_model_2_layer_call_and_return_conditional_losses_1367287
D__inference_model_2_layer_call_and_return_conditional_losses_1367374
D__inference_model_2_layer_call_and_return_conditional_losses_1367274�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference__wrapped_model_1367200�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *&�#
!�
input_1���������&
�2�
B__inference_dense_layer_call_and_return_conditional_losses_1367432�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_dense_layer_call_fn_1367439�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_1_layer_call_and_return_conditional_losses_1367450�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_1_layer_call_fn_1367457�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_2_layer_call_and_return_conditional_losses_1367468�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_2_layer_call_fn_1367475�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_1367349input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
"__inference__wrapped_model_1367200m
0�-
&�#
!�
input_1���������&
� "1�.
,
dense_2!�
dense_2���������[�
D__inference_dense_1_layer_call_and_return_conditional_losses_1367450^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_1_layer_call_fn_1367457Q0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_2_layer_call_and_return_conditional_losses_1367468]0�-
&�#
!�
inputs����������
� "%�"
�
0���������[
� }
)__inference_dense_2_layer_call_fn_1367475P0�-
&�#
!�
inputs����������
� "����������[�
B__inference_dense_layer_call_and_return_conditional_losses_1367432]
/�,
%�"
 �
inputs���������&
� "&�#
�
0����������
� {
'__inference_dense_layer_call_fn_1367439P
/�,
%�"
 �
inputs���������&
� "������������
D__inference_model_2_layer_call_and_return_conditional_losses_1367274i
8�5
.�+
!�
input_1���������&
p

 
� "%�"
�
0���������[
� �
D__inference_model_2_layer_call_and_return_conditional_losses_1367287i
8�5
.�+
!�
input_1���������&
p 

 
� "%�"
�
0���������[
� �
D__inference_model_2_layer_call_and_return_conditional_losses_1367374h
7�4
-�*
 �
inputs���������&
p

 
� "%�"
�
0���������[
� �
D__inference_model_2_layer_call_and_return_conditional_losses_1367399h
7�4
-�*
 �
inputs���������&
p 

 
� "%�"
�
0���������[
� �
)__inference_model_2_layer_call_fn_1367312\
8�5
.�+
!�
input_1���������&
p

 
� "����������[�
)__inference_model_2_layer_call_fn_1367336\
8�5
.�+
!�
input_1���������&
p 

 
� "����������[�
)__inference_model_2_layer_call_fn_1367410[
7�4
-�*
 �
inputs���������&
p

 
� "����������[�
)__inference_model_2_layer_call_fn_1367421[
7�4
-�*
 �
inputs���������&
p 

 
� "����������[�
%__inference_signature_wrapper_1367349x
;�8
� 
1�.
,
input_1!�
input_1���������&"1�.
,
dense_2!�
dense_2���������[