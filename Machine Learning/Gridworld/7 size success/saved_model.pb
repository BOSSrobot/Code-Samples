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
:1=*
shared_namelayer_1/kernel
q
"layer_1/kernel/Read/ReadVariableOpReadVariableOplayer_1/kernel*
_output_shapes

:1=*
dtype0
p
layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:=*
shared_namelayer_1/bias
i
 layer_1/bias/Read/ReadVariableOpReadVariableOplayer_1/bias*
_output_shapes
:=*
dtype0
x
layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:=5*
shared_namelayer_2/kernel
q
"layer_2/kernel/Read/ReadVariableOpReadVariableOplayer_2/kernel*
_output_shapes

:=5*
dtype0
p
layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:5*
shared_namelayer_2/bias
i
 layer_2/bias/Read/ReadVariableOpReadVariableOplayer_2/bias*
_output_shapes
:5*
dtype0
z
q_values/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:5* 
shared_nameq_values/kernel
s
#q_values/kernel/Read/ReadVariableOpReadVariableOpq_values/kernel*
_output_shapes

:5*
dtype0
r
q_values/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameq_values/bias
k
!q_values/bias/Read/ReadVariableOpReadVariableOpq_values/bias*
_output_shapes
:*
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
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
 
h


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
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
 
?
non_trainable_variables
	variables
trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
regularization_losses
 
ZX
VARIABLE_VALUElayer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1


0
1
 
?
!non_trainable_variables
trainable_variables

"layers
	variables
#metrics
$layer_regularization_losses
%layer_metrics
regularization_losses
ZX
VARIABLE_VALUElayer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
&non_trainable_variables
trainable_variables

'layers
	variables
(metrics
)layer_regularization_losses
*layer_metrics
regularization_losses
[Y
VARIABLE_VALUEq_values/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEq_values/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
+non_trainable_variables
trainable_variables

,layers
	variables
-metrics
.layer_regularization_losses
/layer_metrics
regularization_losses
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
:?????????1*
dtype0*
shape:?????????1
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_inplayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biasq_values/kernelq_values/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_5668374
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_5668559
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_5668587??
?
~
)__inference_layer_2_layer_call_fn_5668498

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
:?????????5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_2_layer_call_and_return_conditional_losses_56682192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????52

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????=::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?	
?
D__inference_layer_1_layer_call_and_return_conditional_losses_5668469

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:1=*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:=*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????=2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????=2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????1::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
E__inference_model_22_layer_call_and_return_conditional_losses_5668304

inputs
layer_1_5668288
layer_1_5668290
layer_2_5668293
layer_2_5668295
q_values_5668298
q_values_5668300
identity??layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall? q_values/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_5668288layer_1_5668290*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_1_layer_call_and_return_conditional_losses_56681922!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_5668293layer_2_5668295*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_2_layer_call_and_return_conditional_losses_56682192!
layer_2/StatefulPartitionedCall?
 q_values/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0q_values_5668298q_values_5668300*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_q_values_layer_call_and_return_conditional_losses_56682462"
 q_values/StatefulPartitionedCall?
IdentityIdentity)q_values/StatefulPartitionedCall:output:0 ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:O K
'
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_5668374
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
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_56681772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????1

_user_specified_nameinp
?
?
*__inference_model_22_layer_call_fn_5668441

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
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_22_layer_call_and_return_conditional_losses_56683042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????1
 
_user_specified_nameinputs
?

*__inference_q_values_layer_call_fn_5668518

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
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_q_values_layer_call_and_return_conditional_losses_56682462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????5::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????5
 
_user_specified_nameinputs
?	
?
D__inference_layer_2_layer_call_and_return_conditional_losses_5668219

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:=5*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????52
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????52

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????=::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?
?
E__inference_model_22_layer_call_and_return_conditional_losses_5668399

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

:1=*
dtype02
layer_1/MatMul/ReadVariableOp?
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2
layer_1/MatMul?
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes
:=*
dtype02 
layer_1/BiasAdd/ReadVariableOp?
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2
layer_1/BiasAddp
layer_1/ReluRelulayer_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????=2
layer_1/Relu?
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource*
_output_shapes

:=5*
dtype02
layer_2/MatMul/ReadVariableOp?
layer_2/MatMulMatMullayer_1/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52
layer_2/MatMul?
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype02 
layer_2/BiasAdd/ReadVariableOp?
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52
layer_2/BiasAddp
layer_2/ReluRelulayer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????52
layer_2/Relu?
q_values/MatMul/ReadVariableOpReadVariableOp'q_values_matmul_readvariableop_resource*
_output_shapes

:5*
dtype02 
q_values/MatMul/ReadVariableOp?
q_values/MatMulMatMullayer_2/Relu:activations:0&q_values/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
q_values/MatMul?
q_values/BiasAdd/ReadVariableOpReadVariableOp(q_values_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
q_values/BiasAdd/ReadVariableOp?
q_values/BiasAddBiasAddq_values/MatMul:product:0'q_values/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
q_values/BiasAdds
q_values/TanhTanhq_values/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
q_values/Tanh?
IdentityIdentityq_values/Tanh:y:0^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp ^q_values/BiasAdd/ReadVariableOp^q_values/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2B
q_values/BiasAdd/ReadVariableOpq_values/BiasAdd/ReadVariableOp2@
q_values/MatMul/ReadVariableOpq_values/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
*__inference_model_22_layer_call_fn_5668458

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
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_22_layer_call_and_return_conditional_losses_56683402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
*__inference_model_22_layer_call_fn_5668319
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
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_22_layer_call_and_return_conditional_losses_56683042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????1

_user_specified_nameinp
?"
?
"__inference__wrapped_model_5668177
inp3
/model_22_layer_1_matmul_readvariableop_resource4
0model_22_layer_1_biasadd_readvariableop_resource3
/model_22_layer_2_matmul_readvariableop_resource4
0model_22_layer_2_biasadd_readvariableop_resource4
0model_22_q_values_matmul_readvariableop_resource5
1model_22_q_values_biasadd_readvariableop_resource
identity??'model_22/layer_1/BiasAdd/ReadVariableOp?&model_22/layer_1/MatMul/ReadVariableOp?'model_22/layer_2/BiasAdd/ReadVariableOp?&model_22/layer_2/MatMul/ReadVariableOp?(model_22/q_values/BiasAdd/ReadVariableOp?'model_22/q_values/MatMul/ReadVariableOp?
&model_22/layer_1/MatMul/ReadVariableOpReadVariableOp/model_22_layer_1_matmul_readvariableop_resource*
_output_shapes

:1=*
dtype02(
&model_22/layer_1/MatMul/ReadVariableOp?
model_22/layer_1/MatMulMatMulinp.model_22/layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2
model_22/layer_1/MatMul?
'model_22/layer_1/BiasAdd/ReadVariableOpReadVariableOp0model_22_layer_1_biasadd_readvariableop_resource*
_output_shapes
:=*
dtype02)
'model_22/layer_1/BiasAdd/ReadVariableOp?
model_22/layer_1/BiasAddBiasAdd!model_22/layer_1/MatMul:product:0/model_22/layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2
model_22/layer_1/BiasAdd?
model_22/layer_1/ReluRelu!model_22/layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????=2
model_22/layer_1/Relu?
&model_22/layer_2/MatMul/ReadVariableOpReadVariableOp/model_22_layer_2_matmul_readvariableop_resource*
_output_shapes

:=5*
dtype02(
&model_22/layer_2/MatMul/ReadVariableOp?
model_22/layer_2/MatMulMatMul#model_22/layer_1/Relu:activations:0.model_22/layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52
model_22/layer_2/MatMul?
'model_22/layer_2/BiasAdd/ReadVariableOpReadVariableOp0model_22_layer_2_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype02)
'model_22/layer_2/BiasAdd/ReadVariableOp?
model_22/layer_2/BiasAddBiasAdd!model_22/layer_2/MatMul:product:0/model_22/layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52
model_22/layer_2/BiasAdd?
model_22/layer_2/ReluRelu!model_22/layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????52
model_22/layer_2/Relu?
'model_22/q_values/MatMul/ReadVariableOpReadVariableOp0model_22_q_values_matmul_readvariableop_resource*
_output_shapes

:5*
dtype02)
'model_22/q_values/MatMul/ReadVariableOp?
model_22/q_values/MatMulMatMul#model_22/layer_2/Relu:activations:0/model_22/q_values/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_22/q_values/MatMul?
(model_22/q_values/BiasAdd/ReadVariableOpReadVariableOp1model_22_q_values_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_22/q_values/BiasAdd/ReadVariableOp?
model_22/q_values/BiasAddBiasAdd"model_22/q_values/MatMul:product:00model_22/q_values/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_22/q_values/BiasAdd?
model_22/q_values/TanhTanh"model_22/q_values/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_22/q_values/Tanh?
IdentityIdentitymodel_22/q_values/Tanh:y:0(^model_22/layer_1/BiasAdd/ReadVariableOp'^model_22/layer_1/MatMul/ReadVariableOp(^model_22/layer_2/BiasAdd/ReadVariableOp'^model_22/layer_2/MatMul/ReadVariableOp)^model_22/q_values/BiasAdd/ReadVariableOp(^model_22/q_values/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::2R
'model_22/layer_1/BiasAdd/ReadVariableOp'model_22/layer_1/BiasAdd/ReadVariableOp2P
&model_22/layer_1/MatMul/ReadVariableOp&model_22/layer_1/MatMul/ReadVariableOp2R
'model_22/layer_2/BiasAdd/ReadVariableOp'model_22/layer_2/BiasAdd/ReadVariableOp2P
&model_22/layer_2/MatMul/ReadVariableOp&model_22/layer_2/MatMul/ReadVariableOp2T
(model_22/q_values/BiasAdd/ReadVariableOp(model_22/q_values/BiasAdd/ReadVariableOp2R
'model_22/q_values/MatMul/ReadVariableOp'model_22/q_values/MatMul/ReadVariableOp:L H
'
_output_shapes
:?????????1

_user_specified_nameinp
?
?
E__inference_model_22_layer_call_and_return_conditional_losses_5668424

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

:1=*
dtype02
layer_1/MatMul/ReadVariableOp?
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2
layer_1/MatMul?
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes
:=*
dtype02 
layer_1/BiasAdd/ReadVariableOp?
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2
layer_1/BiasAddp
layer_1/ReluRelulayer_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????=2
layer_1/Relu?
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource*
_output_shapes

:=5*
dtype02
layer_2/MatMul/ReadVariableOp?
layer_2/MatMulMatMullayer_1/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52
layer_2/MatMul?
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes
:5*
dtype02 
layer_2/BiasAdd/ReadVariableOp?
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52
layer_2/BiasAddp
layer_2/ReluRelulayer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????52
layer_2/Relu?
q_values/MatMul/ReadVariableOpReadVariableOp'q_values_matmul_readvariableop_resource*
_output_shapes

:5*
dtype02 
q_values/MatMul/ReadVariableOp?
q_values/MatMulMatMullayer_2/Relu:activations:0&q_values/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
q_values/MatMul?
q_values/BiasAdd/ReadVariableOpReadVariableOp(q_values_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
q_values/BiasAdd/ReadVariableOp?
q_values/BiasAddBiasAddq_values/MatMul:product:0'q_values/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
q_values/BiasAdds
q_values/TanhTanhq_values/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
q_values/Tanh?
IdentityIdentityq_values/Tanh:y:0^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp ^q_values/BiasAdd/ReadVariableOp^q_values/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2B
q_values/BiasAdd/ReadVariableOpq_values/BiasAdd/ReadVariableOp2@
q_values/MatMul/ReadVariableOpq_values/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
#__inference__traced_restore_5668587
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
~
)__inference_layer_1_layer_call_fn_5668478

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
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_1_layer_call_and_return_conditional_losses_56681922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????=2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????1::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
 __inference__traced_save_5668559
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
4: :1=:=:=5:5:5:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:1=: 

_output_shapes
:=:$ 

_output_shapes

:=5: 

_output_shapes
:5:$ 

_output_shapes

:5: 

_output_shapes
::

_output_shapes
: 
?
?
E__inference_model_22_layer_call_and_return_conditional_losses_5668263
inp
layer_1_5668203
layer_1_5668205
layer_2_5668230
layer_2_5668232
q_values_5668257
q_values_5668259
identity??layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall? q_values/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinplayer_1_5668203layer_1_5668205*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_1_layer_call_and_return_conditional_losses_56681922!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_5668230layer_2_5668232*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_2_layer_call_and_return_conditional_losses_56682192!
layer_2/StatefulPartitionedCall?
 q_values/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0q_values_5668257q_values_5668259*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_q_values_layer_call_and_return_conditional_losses_56682462"
 q_values/StatefulPartitionedCall?
IdentityIdentity)q_values/StatefulPartitionedCall:output:0 ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:L H
'
_output_shapes
:?????????1

_user_specified_nameinp
?	
?
D__inference_layer_2_layer_call_and_return_conditional_losses_5668489

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:=5*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:5*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????52	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????52
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????52

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????=::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?	
?
D__inference_layer_1_layer_call_and_return_conditional_losses_5668192

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:1=*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:=*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????=2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????=2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????1::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
E__inference_model_22_layer_call_and_return_conditional_losses_5668340

inputs
layer_1_5668324
layer_1_5668326
layer_2_5668329
layer_2_5668331
q_values_5668334
q_values_5668336
identity??layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall? q_values/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_5668324layer_1_5668326*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_1_layer_call_and_return_conditional_losses_56681922!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_5668329layer_2_5668331*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_2_layer_call_and_return_conditional_losses_56682192!
layer_2/StatefulPartitionedCall?
 q_values/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0q_values_5668334q_values_5668336*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_q_values_layer_call_and_return_conditional_losses_56682462"
 q_values/StatefulPartitionedCall?
IdentityIdentity)q_values/StatefulPartitionedCall:output:0 ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:O K
'
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
*__inference_model_22_layer_call_fn_5668355
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
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_22_layer_call_and_return_conditional_losses_56683402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????1

_user_specified_nameinp
?
?
E__inference_model_22_layer_call_and_return_conditional_losses_5668282
inp
layer_1_5668266
layer_1_5668268
layer_2_5668271
layer_2_5668273
q_values_5668276
q_values_5668278
identity??layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall? q_values/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinplayer_1_5668266layer_1_5668268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_1_layer_call_and_return_conditional_losses_56681922!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_5668271layer_2_5668273*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????5*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_layer_2_layer_call_and_return_conditional_losses_56682192!
layer_2/StatefulPartitionedCall?
 q_values/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0q_values_5668276q_values_5668278*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_q_values_layer_call_and_return_conditional_losses_56682462"
 q_values/StatefulPartitionedCall?
IdentityIdentity)q_values/StatefulPartitionedCall:output:0 ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall!^q_values/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????1::::::2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2D
 q_values/StatefulPartitionedCall q_values/StatefulPartitionedCall:L H
'
_output_shapes
:?????????1

_user_specified_nameinp
?	
?
E__inference_q_values_layer_call_and_return_conditional_losses_5668246

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:5*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????5::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????5
 
_user_specified_nameinputs
?	
?
E__inference_q_values_layer_call_and_return_conditional_losses_5668509

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:5*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????5::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????5
 
_user_specified_nameinputs"?L
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
serving_default_inp:0?????????1<
q_values0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?{
?#
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
0__call__
1_default_save_signature
*2&call_and_return_all_conditional_losses"? 
_tf_keras_network? {"class_name": "Functional", "name": "model_22", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 49]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "inp"}, "name": "inp", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "layer_1", "trainable": true, "dtype": "float32", "units": 61, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "layer_1", "inbound_nodes": [[["inp", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer_2", "trainable": true, "dtype": "float32", "units": 53, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "layer_2", "inbound_nodes": [[["layer_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "q_values", "trainable": true, "dtype": "float32", "units": 4, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "q_values", "inbound_nodes": [[["layer_2", 0, 0, {}]]]}], "input_layers": [["inp", 0, 0]], "output_layers": [["q_values", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 49]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 49]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 49]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "inp"}, "name": "inp", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "layer_1", "trainable": true, "dtype": "float32", "units": 61, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "layer_1", "inbound_nodes": [[["inp", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer_2", "trainable": true, "dtype": "float32", "units": 53, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "layer_2", "inbound_nodes": [[["layer_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "q_values", "trainable": true, "dtype": "float32", "units": 4, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "q_values", "inbound_nodes": [[["layer_2", 0, 0, {}]]]}], "input_layers": [["inp", 0, 0]], "output_layers": [["q_values", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "inp", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 49]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 49]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "inp"}}
?


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
3__call__
*4&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "layer_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_1", "trainable": true, "dtype": "float32", "units": 61, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 49}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 49]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
5__call__
*6&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "layer_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_2", "trainable": true, "dtype": "float32", "units": 53, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 61}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 61]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
7__call__
*8&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "q_values", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "q_values", "trainable": true, "dtype": "float32", "units": 4, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 53}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 53]}}
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
 "
trackable_list_wrapper
?
non_trainable_variables
	variables
trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
regularization_losses
0__call__
1_default_save_signature
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
,
9serving_default"
signature_map
 :1=2layer_1/kernel
:=2layer_1/bias
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
 "
trackable_list_wrapper
?
!non_trainable_variables
trainable_variables

"layers
	variables
#metrics
$layer_regularization_losses
%layer_metrics
regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
 :=52layer_2/kernel
:52layer_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
&non_trainable_variables
trainable_variables

'layers
	variables
(metrics
)layer_regularization_losses
*layer_metrics
regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
!:52q_values/kernel
:2q_values/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
+non_trainable_variables
trainable_variables

,layers
	variables
-metrics
.layer_regularization_losses
/layer_metrics
regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
 "
trackable_dict_wrapper
?2?
*__inference_model_22_layer_call_fn_5668319
*__inference_model_22_layer_call_fn_5668441
*__inference_model_22_layer_call_fn_5668458
*__inference_model_22_layer_call_fn_5668355?
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
"__inference__wrapped_model_5668177?
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
inp?????????1
?2?
E__inference_model_22_layer_call_and_return_conditional_losses_5668424
E__inference_model_22_layer_call_and_return_conditional_losses_5668282
E__inference_model_22_layer_call_and_return_conditional_losses_5668399
E__inference_model_22_layer_call_and_return_conditional_losses_5668263?
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
)__inference_layer_1_layer_call_fn_5668478?
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
D__inference_layer_1_layer_call_and_return_conditional_losses_5668469?
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
)__inference_layer_2_layer_call_fn_5668498?
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
D__inference_layer_2_layer_call_and_return_conditional_losses_5668489?
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
*__inference_q_values_layer_call_fn_5668518?
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
E__inference_q_values_layer_call_and_return_conditional_losses_5668509?
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
%__inference_signature_wrapper_5668374inp"?
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
"__inference__wrapped_model_5668177k
,?)
"?
?
inp?????????1
? "3?0
.
q_values"?
q_values??????????
D__inference_layer_1_layer_call_and_return_conditional_losses_5668469\
/?,
%?"
 ?
inputs?????????1
? "%?"
?
0?????????=
? |
)__inference_layer_1_layer_call_fn_5668478O
/?,
%?"
 ?
inputs?????????1
? "??????????=?
D__inference_layer_2_layer_call_and_return_conditional_losses_5668489\/?,
%?"
 ?
inputs?????????=
? "%?"
?
0?????????5
? |
)__inference_layer_2_layer_call_fn_5668498O/?,
%?"
 ?
inputs?????????=
? "??????????5?
E__inference_model_22_layer_call_and_return_conditional_losses_5668263e
4?1
*?'
?
inp?????????1
p

 
? "%?"
?
0?????????
? ?
E__inference_model_22_layer_call_and_return_conditional_losses_5668282e
4?1
*?'
?
inp?????????1
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_22_layer_call_and_return_conditional_losses_5668399h
7?4
-?*
 ?
inputs?????????1
p

 
? "%?"
?
0?????????
? ?
E__inference_model_22_layer_call_and_return_conditional_losses_5668424h
7?4
-?*
 ?
inputs?????????1
p 

 
? "%?"
?
0?????????
? ?
*__inference_model_22_layer_call_fn_5668319X
4?1
*?'
?
inp?????????1
p

 
? "???????????
*__inference_model_22_layer_call_fn_5668355X
4?1
*?'
?
inp?????????1
p 

 
? "???????????
*__inference_model_22_layer_call_fn_5668441[
7?4
-?*
 ?
inputs?????????1
p

 
? "???????????
*__inference_model_22_layer_call_fn_5668458[
7?4
-?*
 ?
inputs?????????1
p 

 
? "???????????
E__inference_q_values_layer_call_and_return_conditional_losses_5668509\/?,
%?"
 ?
inputs?????????5
? "%?"
?
0?????????
? }
*__inference_q_values_layer_call_fn_5668518O/?,
%?"
 ?
inputs?????????5
? "???????????
%__inference_signature_wrapper_5668374r
3?0
? 
)?&
$
inp?
inp?????????1"3?0
.
q_values"?
q_values?????????