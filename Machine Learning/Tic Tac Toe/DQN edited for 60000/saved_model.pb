??
??
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
delete_old_dirsbool(?
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8??
x
layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*
shared_namelayer_1/kernel
q
"layer_1/kernel/Read/ReadVariableOpReadVariableOplayer_1/kernel*
_output_shapes

:	*
dtype0
p
layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer_1/bias
i
 layer_1/bias/Read/ReadVariableOpReadVariableOplayer_1/bias*
_output_shapes
:*
dtype0
x
layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namelayer_2/kernel
q
"layer_2/kernel/Read/ReadVariableOpReadVariableOplayer_2/kernel*
_output_shapes

:
*
dtype0
p
layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namelayer_2/bias
i
 layer_2/bias/Read/ReadVariableOpReadVariableOplayer_2/bias*
_output_shapes
:
*
dtype0
z
q_values/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
	* 
shared_nameq_values/kernel
s
#q_values/kernel/Read/ReadVariableOpReadVariableOpq_values/kernel*
_output_shapes

:
	*
dtype0
r
q_values/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_nameq_values/bias
k
!q_values/bias/Read/ReadVariableOpReadVariableOpq_values/bias*
_output_shapes
:	*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
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
?
layer_metrics
regularization_losses
trainable_variables
	variables

layers
non_trainable_variables
layer_regularization_losses
 metrics
 
ZX
VARIABLE_VALUElayer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 


0
1


0
1
?
!layer_metrics
regularization_losses
trainable_variables
	variables

"layers
#non_trainable_variables
$layer_regularization_losses
%metrics
ZX
VARIABLE_VALUElayer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
&layer_metrics
regularization_losses
trainable_variables
	variables

'layers
(non_trainable_variables
)layer_regularization_losses
*metrics
[Y
VARIABLE_VALUEq_values/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEq_values/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
+layer_metrics
regularization_losses
trainable_variables
	variables

,layers
-non_trainable_variables
.layer_regularization_losses
/metrics
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
 
 
 
v
serving_default_inpPlaceholder*'
_output_shapes
:?????????	*
dtype0*
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_inplayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biasq_values/kernelq_values/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_44005361
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"layer_1/kernel/Read/ReadVariableOp layer_1/bias/Read/ReadVariableOp"layer_2/kernel/Read/ReadVariableOp layer_2/bias/Read/ReadVariableOp#q_values/kernel/Read/ReadVariableOp!q_values/bias/Read/ReadVariableOpConst*
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
GPU 2J 8? **
f%R#
!__inference__traced_save_44005546
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biasq_values/kernelq_values/bias*
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
GPU 2J 8? *-
f(R&
$__inference__traced_restore_44005574??
?
?
*__inference_model_5_layer_call_fn_44005342
inp
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinpunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_5_layer_call_and_return_conditional_losses_440053272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????	

_user_specified_nameinp
?

*__inference_layer_1_layer_call_fn_44005465

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_440051792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????	::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
E__inference_model_5_layer_call_and_return_conditional_losses_44005411

inputs*
&layer_1_matmul_readvariableop_resource+
'layer_1_biasadd_readvariableop_resource*
&layer_2_matmul_readvariableop_resource+
'layer_2_biasadd_readvariableop_resource+
'q_values_matmul_readvariableop_resource,
(q_values_biasadd_readvariableop_resource
identity??layer_1/BiasAdd/ReadVariableOp?layer_1/MatMul/ReadVariableOp?layer_2/BiasAdd/ReadVariableOp?layer_2/MatMul/ReadVariableOp?q_values/BiasAdd/ReadVariableOp?q_values/MatMul/ReadVariableOp?
layer_1/MatMul/ReadVariableOpReadVariableOp&layer_1_matmul_readvariableop_resource*
_output_shapes

:	*
dtype02
layer_1/MatMul/ReadVariableOp?
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer_1/MatMul?
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
layer_1/BiasAdd/ReadVariableOp?
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer_1/BiasAddp
layer_1/ReluRelulayer_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
layer_1/Relu?
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
layer_2/MatMul/ReadVariableOp?
layer_2/MatMulMatMullayer_1/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
layer_2/MatMul?
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
layer_2/BiasAdd/ReadVariableOp?
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
layer_2/BiasAddp
layer_2/ReluRelulayer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
layer_2/Relu?
q_values/MatMul/ReadVariableOpReadVariableOp'q_values_matmul_readvariableop_resource*
_output_shapes

:
	*
dtype02 
q_values/MatMul/ReadVariableOp?
q_values/MatMulMatMullayer_2/Relu:activations:0&q_values/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
q_values/MatMul?
q_values/BiasAdd/ReadVariableOpReadVariableOp(q_values_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02!
q_values/BiasAdd/ReadVariableOp?
q_values/BiasAddBiasAddq_values/MatMul:product:0'q_values/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
q_values/BiasAdds
q_values/TanhTanhq_values/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
q_values/Tanh?
IdentityIdentityq_values/Tanh:y:0^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp ^q_values/BiasAdd/ReadVariableOp^q_values/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2B
q_values/BiasAdd/ReadVariableOpq_values/BiasAdd/ReadVariableOp2@
q_values/MatMul/ReadVariableOpq_values/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
E__inference_model_5_layer_call_and_return_conditional_losses_44005386

inputs*
&layer_1_matmul_readvariableop_resource+
'layer_1_biasadd_readvariableop_resource*
&layer_2_matmul_readvariableop_resource+
'layer_2_biasadd_readvariableop_resource+
'q_values_matmul_readvariableop_resource,
(q_values_biasadd_readvariableop_resource
identity??layer_1/BiasAdd/ReadVariableOp?layer_1/MatMul/ReadVariableOp?layer_2/BiasAdd/ReadVariableOp?layer_2/MatMul/ReadVariableOp?q_values/BiasAdd/ReadVariableOp?q_values/MatMul/ReadVariableOp?
layer_1/MatMul/ReadVariableOpReadVariableOp&layer_1_matmul_readvariableop_resource*
_output_shapes

:	*
dtype02
layer_1/MatMul/ReadVariableOp?
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer_1/MatMul?
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
layer_1/BiasAdd/ReadVariableOp?
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer_1/BiasAddp
layer_1/ReluRelulayer_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
layer_1/Relu?
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
layer_2/MatMul/ReadVariableOp?
layer_2/MatMulMatMullayer_1/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
layer_2/MatMul?
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
layer_2/BiasAdd/ReadVariableOp?
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
layer_2/BiasAddp
layer_2/ReluRelulayer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
layer_2/Relu?
q_values/MatMul/ReadVariableOpReadVariableOp'q_values_matmul_readvariableop_resource*
_output_shapes

:
	*
dtype02 
q_values/MatMul/ReadVariableOp?
q_values/MatMulMatMullayer_2/Relu:activations:0&q_values/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
q_values/MatMul?
q_values/BiasAdd/ReadVariableOpReadVariableOp(q_values_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02!
q_values/BiasAdd/ReadVariableOp?
q_values/BiasAddBiasAddq_values/MatMul:product:0'q_values/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
q_values/BiasAdds
q_values/TanhTanhq_values/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
q_values/Tanh?
IdentityIdentityq_values/Tanh:y:0^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp ^q_values/BiasAdd/ReadVariableOp^q_values/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2B
q_values/BiasAdd/ReadVariableOpq_values/BiasAdd/ReadVariableOp2@
q_values/MatMul/ReadVariableOpq_values/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
$__inference__traced_restore_44005574
file_prefix#
assignvariableop_layer_1_kernel#
assignvariableop_1_layer_1_bias%
!assignvariableop_2_layer_2_kernel#
assignvariableop_3_layer_2_bias&
"assignvariableop_4_q_values_kernel$
 assignvariableop_5_q_values_bias

identity_7??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
RestoreV2/shape_and_slices?
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

Identity?
AssignVariableOpAssignVariableOpassignvariableop_layer_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_layer_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_q_values_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_q_values_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6?

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
?
?
+__inference_q_values_layer_call_fn_44005505

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_440052332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
E__inference_model_5_layer_call_and_return_conditional_losses_44005250
inp
layer_1_44005190
layer_1_44005192
layer_2_44005217
layer_2_44005219
q_values_44005244
q_values_44005246
identity??layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall? q_values/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinplayer_1_44005190layer_1_44005192*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_440051792!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_44005217layer_2_44005219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_440052062!
layer_2/StatefulPartitionedCall?
 q_values/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0q_values_44005244q_values_44005246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_440052332"
 q_values/StatefulPartitionedCall?
IdentityIdentity)q_values/StatefulPartitionedCall:output:0 ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:L H
'
_output_shapes
:?????????	

_user_specified_nameinp
?
?
*__inference_model_5_layer_call_fn_44005445

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_5_layer_call_and_return_conditional_losses_440053272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
E__inference_layer_2_layer_call_and_return_conditional_losses_44005206

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_layer_1_layer_call_and_return_conditional_losses_44005456

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
E__inference_model_5_layer_call_and_return_conditional_losses_44005269
inp
layer_1_44005253
layer_1_44005255
layer_2_44005258
layer_2_44005260
q_values_44005263
q_values_44005265
identity??layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall? q_values/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinplayer_1_44005253layer_1_44005255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_440051792!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_44005258layer_2_44005260*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_440052062!
layer_2/StatefulPartitionedCall?
 q_values/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0q_values_44005263q_values_44005265*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_440052332"
 q_values/StatefulPartitionedCall?
IdentityIdentity)q_values/StatefulPartitionedCall:output:0 ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:L H
'
_output_shapes
:?????????	

_user_specified_nameinp
?	
?
E__inference_layer_1_layer_call_and_return_conditional_losses_44005179

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
F__inference_q_values_layer_call_and_return_conditional_losses_44005496

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
F__inference_q_values_layer_call_and_return_conditional_losses_44005233

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
E__inference_layer_2_layer_call_and_return_conditional_losses_44005476

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
!__inference__traced_save_44005546
file_prefix-
)savev2_layer_1_kernel_read_readvariableop+
'savev2_layer_1_bias_read_readvariableop-
)savev2_layer_2_kernel_read_readvariableop+
'savev2_layer_2_bias_read_readvariableop.
*savev2_q_values_kernel_read_readvariableop,
(savev2_q_values_bias_read_readvariableop
savev2_const

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_layer_1_kernel_read_readvariableop'savev2_layer_1_bias_read_readvariableop)savev2_layer_2_kernel_read_readvariableop'savev2_layer_2_bias_read_readvariableop*savev2_q_values_kernel_read_readvariableop(savev2_q_values_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	22
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*G
_input_shapes6
4: :	::
:
:
	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
	: 

_output_shapes
:	:

_output_shapes
: 
?
?
&__inference_signature_wrapper_44005361
inp
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinpunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_440051642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????	

_user_specified_nameinp
?"
?
#__inference__wrapped_model_44005164
inp2
.model_5_layer_1_matmul_readvariableop_resource3
/model_5_layer_1_biasadd_readvariableop_resource2
.model_5_layer_2_matmul_readvariableop_resource3
/model_5_layer_2_biasadd_readvariableop_resource3
/model_5_q_values_matmul_readvariableop_resource4
0model_5_q_values_biasadd_readvariableop_resource
identity??&model_5/layer_1/BiasAdd/ReadVariableOp?%model_5/layer_1/MatMul/ReadVariableOp?&model_5/layer_2/BiasAdd/ReadVariableOp?%model_5/layer_2/MatMul/ReadVariableOp?'model_5/q_values/BiasAdd/ReadVariableOp?&model_5/q_values/MatMul/ReadVariableOp?
%model_5/layer_1/MatMul/ReadVariableOpReadVariableOp.model_5_layer_1_matmul_readvariableop_resource*
_output_shapes

:	*
dtype02'
%model_5/layer_1/MatMul/ReadVariableOp?
model_5/layer_1/MatMulMatMulinp-model_5/layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_5/layer_1/MatMul?
&model_5/layer_1/BiasAdd/ReadVariableOpReadVariableOp/model_5_layer_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_5/layer_1/BiasAdd/ReadVariableOp?
model_5/layer_1/BiasAddBiasAdd model_5/layer_1/MatMul:product:0.model_5/layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_5/layer_1/BiasAdd?
model_5/layer_1/ReluRelu model_5/layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_5/layer_1/Relu?
%model_5/layer_2/MatMul/ReadVariableOpReadVariableOp.model_5_layer_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02'
%model_5/layer_2/MatMul/ReadVariableOp?
model_5/layer_2/MatMulMatMul"model_5/layer_1/Relu:activations:0-model_5/layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model_5/layer_2/MatMul?
&model_5/layer_2/BiasAdd/ReadVariableOpReadVariableOp/model_5_layer_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&model_5/layer_2/BiasAdd/ReadVariableOp?
model_5/layer_2/BiasAddBiasAdd model_5/layer_2/MatMul:product:0.model_5/layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model_5/layer_2/BiasAdd?
model_5/layer_2/ReluRelu model_5/layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
model_5/layer_2/Relu?
&model_5/q_values/MatMul/ReadVariableOpReadVariableOp/model_5_q_values_matmul_readvariableop_resource*
_output_shapes

:
	*
dtype02(
&model_5/q_values/MatMul/ReadVariableOp?
model_5/q_values/MatMulMatMul"model_5/layer_2/Relu:activations:0.model_5/q_values/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
model_5/q_values/MatMul?
'model_5/q_values/BiasAdd/ReadVariableOpReadVariableOp0model_5_q_values_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02)
'model_5/q_values/BiasAdd/ReadVariableOp?
model_5/q_values/BiasAddBiasAdd!model_5/q_values/MatMul:product:0/model_5/q_values/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
model_5/q_values/BiasAdd?
model_5/q_values/TanhTanh!model_5/q_values/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
model_5/q_values/Tanh?
IdentityIdentitymodel_5/q_values/Tanh:y:0'^model_5/layer_1/BiasAdd/ReadVariableOp&^model_5/layer_1/MatMul/ReadVariableOp'^model_5/layer_2/BiasAdd/ReadVariableOp&^model_5/layer_2/MatMul/ReadVariableOp(^model_5/q_values/BiasAdd/ReadVariableOp'^model_5/q_values/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::2P
&model_5/layer_1/BiasAdd/ReadVariableOp&model_5/layer_1/BiasAdd/ReadVariableOp2N
%model_5/layer_1/MatMul/ReadVariableOp%model_5/layer_1/MatMul/ReadVariableOp2P
&model_5/layer_2/BiasAdd/ReadVariableOp&model_5/layer_2/BiasAdd/ReadVariableOp2N
%model_5/layer_2/MatMul/ReadVariableOp%model_5/layer_2/MatMul/ReadVariableOp2R
'model_5/q_values/BiasAdd/ReadVariableOp'model_5/q_values/BiasAdd/ReadVariableOp2P
&model_5/q_values/MatMul/ReadVariableOp&model_5/q_values/MatMul/ReadVariableOp:L H
'
_output_shapes
:?????????	

_user_specified_nameinp
?
?
E__inference_model_5_layer_call_and_return_conditional_losses_44005327

inputs
layer_1_44005311
layer_1_44005313
layer_2_44005316
layer_2_44005318
q_values_44005321
q_values_44005323
identity??layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall? q_values/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_44005311layer_1_44005313*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_440051792!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_44005316layer_2_44005318*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_440052062!
layer_2/StatefulPartitionedCall?
 q_values/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0q_values_44005321q_values_44005323*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_440052332"
 q_values/StatefulPartitionedCall?
IdentityIdentity)q_values/StatefulPartitionedCall:output:0 ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
*__inference_model_5_layer_call_fn_44005428

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_5_layer_call_and_return_conditional_losses_440052912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
E__inference_model_5_layer_call_and_return_conditional_losses_44005291

inputs
layer_1_44005275
layer_1_44005277
layer_2_44005280
layer_2_44005282
q_values_44005285
q_values_44005287
identity??layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall? q_values/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_44005275layer_1_44005277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_440051792!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_44005280layer_2_44005282*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_440052062!
layer_2/StatefulPartitionedCall?
 q_values/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0q_values_44005285q_values_44005287*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_q_values_layer_call_and_return_conditional_losses_440052332"
 q_values/StatefulPartitionedCall?
IdentityIdentity)q_values/StatefulPartitionedCall:output:0 ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?

*__inference_layer_2_layer_call_fn_44005485

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_440052062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_model_5_layer_call_fn_44005306
inp
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinpunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_5_layer_call_and_return_conditional_losses_440052912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????	::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????	

_user_specified_nameinp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
3
inp,
serving_default_inp:0?????????	<
q_values0
StatefulPartitionedCall:0?????????	tensorflow/serving/predict:?{
?#
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
2_default_save_signature"? 
_tf_keras_network? {"class_name": "Functional", "name": "model_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "inp"}, "name": "inp", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "layer_1", "trainable": true, "dtype": "float32", "units": 11, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "layer_1", "inbound_nodes": [[["inp", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "layer_2", "inbound_nodes": [[["layer_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "q_values", "trainable": true, "dtype": "float32", "units": 9, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "q_values", "inbound_nodes": [[["layer_2", 0, 0, {}]]]}], "input_layers": [["inp", 0, 0]], "output_layers": [["q_values", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 9]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "inp"}, "name": "inp", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "layer_1", "trainable": true, "dtype": "float32", "units": 11, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "layer_1", "inbound_nodes": [[["inp", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "layer_2", "inbound_nodes": [[["layer_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "q_values", "trainable": true, "dtype": "float32", "units": 9, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "q_values", "inbound_nodes": [[["layer_2", 0, 0, {}]]]}], "input_layers": [["inp", 0, 0]], "output_layers": [["q_values", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "inp", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "inp"}}
?


kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
3__call__
*4&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "layer_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_1", "trainable": true, "dtype": "float32", "units": 11, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
5__call__
*6&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "layer_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11]}}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
7__call__
*8&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "q_values", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "q_values", "trainable": true, "dtype": "float32", "units": 9, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
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
?
layer_metrics
regularization_losses
trainable_variables
	variables

layers
non_trainable_variables
layer_regularization_losses
 metrics
0__call__
2_default_save_signature
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
,
9serving_default"
signature_map
 :	2layer_1/kernel
:2layer_1/bias
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
?
!layer_metrics
regularization_losses
trainable_variables
	variables

"layers
#non_trainable_variables
$layer_regularization_losses
%metrics
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
 :
2layer_2/kernel
:
2layer_2/bias
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
?
&layer_metrics
regularization_losses
trainable_variables
	variables

'layers
(non_trainable_variables
)layer_regularization_losses
*metrics
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
!:
	2q_values/kernel
:	2q_values/bias
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
?
+layer_metrics
regularization_losses
trainable_variables
	variables

,layers
-non_trainable_variables
.layer_regularization_losses
/metrics
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
*__inference_model_5_layer_call_fn_44005342
*__inference_model_5_layer_call_fn_44005306
*__inference_model_5_layer_call_fn_44005445
*__inference_model_5_layer_call_fn_44005428?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_model_5_layer_call_and_return_conditional_losses_44005411
E__inference_model_5_layer_call_and_return_conditional_losses_44005269
E__inference_model_5_layer_call_and_return_conditional_losses_44005386
E__inference_model_5_layer_call_and_return_conditional_losses_44005250?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
#__inference__wrapped_model_44005164?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *"?
?
inp?????????	
?2?
*__inference_layer_1_layer_call_fn_44005465?
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
E__inference_layer_1_layer_call_and_return_conditional_losses_44005456?
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
*__inference_layer_2_layer_call_fn_44005485?
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
E__inference_layer_2_layer_call_and_return_conditional_losses_44005476?
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
+__inference_q_values_layer_call_fn_44005505?
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
F__inference_q_values_layer_call_and_return_conditional_losses_44005496?
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
?B?
&__inference_signature_wrapper_44005361inp"?
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
 ?
#__inference__wrapped_model_44005164k
,?)
"?
?
inp?????????	
? "3?0
.
q_values"?
q_values?????????	?
E__inference_layer_1_layer_call_and_return_conditional_losses_44005456\
/?,
%?"
 ?
inputs?????????	
? "%?"
?
0?????????
? }
*__inference_layer_1_layer_call_fn_44005465O
/?,
%?"
 ?
inputs?????????	
? "???????????
E__inference_layer_2_layer_call_and_return_conditional_losses_44005476\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????

? }
*__inference_layer_2_layer_call_fn_44005485O/?,
%?"
 ?
inputs?????????
? "??????????
?
E__inference_model_5_layer_call_and_return_conditional_losses_44005250e
4?1
*?'
?
inp?????????	
p

 
? "%?"
?
0?????????	
? ?
E__inference_model_5_layer_call_and_return_conditional_losses_44005269e
4?1
*?'
?
inp?????????	
p 

 
? "%?"
?
0?????????	
? ?
E__inference_model_5_layer_call_and_return_conditional_losses_44005386h
7?4
-?*
 ?
inputs?????????	
p

 
? "%?"
?
0?????????	
? ?
E__inference_model_5_layer_call_and_return_conditional_losses_44005411h
7?4
-?*
 ?
inputs?????????	
p 

 
? "%?"
?
0?????????	
? ?
*__inference_model_5_layer_call_fn_44005306X
4?1
*?'
?
inp?????????	
p

 
? "??????????	?
*__inference_model_5_layer_call_fn_44005342X
4?1
*?'
?
inp?????????	
p 

 
? "??????????	?
*__inference_model_5_layer_call_fn_44005428[
7?4
-?*
 ?
inputs?????????	
p

 
? "??????????	?
*__inference_model_5_layer_call_fn_44005445[
7?4
-?*
 ?
inputs?????????	
p 

 
? "??????????	?
F__inference_q_values_layer_call_and_return_conditional_losses_44005496\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????	
? ~
+__inference_q_values_layer_call_fn_44005505O/?,
%?"
 ?
inputs?????????

? "??????????	?
&__inference_signature_wrapper_44005361r
3?0
? 
)?&
$
inp?
inp?????????	"3?0
.
q_values"?
q_values?????????	