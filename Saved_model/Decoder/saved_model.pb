Ñ÷
ô
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
delete_old_dirsbool(
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
dtypetype
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
<
Selu
features"T
activations"T"
Ttype:
2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018éì

Decoder_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameDecoder_output/bias
x
'Decoder_output/bias/Read/ReadVariableOpReadVariableOpDecoder_output/bias*
_output_shapes	
:*
dtype0

Decoder_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameDecoder_output/kernel

)Decoder_output/kernel/Read/ReadVariableOpReadVariableOpDecoder_output/kernel* 
_output_shapes
:
*
dtype0

Hidden_layer_2_d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameHidden_layer_2_d/bias
|
)Hidden_layer_2_d/bias/Read/ReadVariableOpReadVariableOpHidden_layer_2_d/bias*
_output_shapes	
:*
dtype0

Hidden_layer_2_d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*(
shared_nameHidden_layer_2_d/kernel

+Hidden_layer_2_d/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_2_d/kernel*
_output_shapes
:	d*
dtype0

Hidden_layer_1_d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameHidden_layer_1_d/bias
{
)Hidden_layer_1_d/bias/Read/ReadVariableOpReadVariableOpHidden_layer_1_d/bias*
_output_shapes
:d*
dtype0

Hidden_layer_1_d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*d*(
shared_nameHidden_layer_1_d/kernel

+Hidden_layer_1_d/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_1_d/kernel*
_output_shapes

:*d*
dtype0

NoOpNoOp
ý
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¸
value®B« B¤
Ì
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*

&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 
.
0
1
2
3
$4
%5*
.
0
1
2
3
$4
%5*
* 
°
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
1trace_0
2trace_1
3trace_2
4trace_3* 
6
5trace_0
6trace_1
7trace_2
8trace_3* 
* 

9serving_default* 

0
1*

0
1*
* 

:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

?trace_0* 

@trace_0* 
ga
VARIABLE_VALUEHidden_layer_1_d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEHidden_layer_1_d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ftrace_0* 

Gtrace_0* 
ga
VARIABLE_VALUEHidden_layer_2_d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEHidden_layer_2_d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 

Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

Mtrace_0* 

Ntrace_0* 
e_
VARIABLE_VALUEDecoder_output/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEDecoder_output/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

Ttrace_0* 

Utrace_0* 
* 
'
0
1
2
3
4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

serving_default_Decoder_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ*
Õ
StatefulPartitionedCallStatefulPartitionedCallserving_default_Decoder_inputHidden_layer_1_d/kernelHidden_layer_1_d/biasHidden_layer_2_d/kernelHidden_layer_2_d/biasDecoder_output/kernelDecoder_output/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_6663452
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¦
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+Hidden_layer_1_d/kernel/Read/ReadVariableOp)Hidden_layer_1_d/bias/Read/ReadVariableOp+Hidden_layer_2_d/kernel/Read/ReadVariableOp)Hidden_layer_2_d/bias/Read/ReadVariableOp)Decoder_output/kernel/Read/ReadVariableOp'Decoder_output/bias/Read/ReadVariableOpConst*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_6663673
©
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_layer_1_d/kernelHidden_layer_1_d/biasHidden_layer_2_d/kernelHidden_layer_2_d/biasDecoder_output/kernelDecoder_output/bias*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_6663701µ
Ø
¡
2__inference_Hidden_layer_2_d_layer_call_fn_6663583

inputs
unknown:	d
	unknown_0:	
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663232p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
*
â
D__inference_Decoder_layer_call_and_return_conditional_losses_6663554

inputsA
/hidden_layer_1_d_matmul_readvariableop_resource:*d>
0hidden_layer_1_d_biasadd_readvariableop_resource:dB
/hidden_layer_2_d_matmul_readvariableop_resource:	d?
0hidden_layer_2_d_biasadd_readvariableop_resource:	A
-decoder_output_matmul_readvariableop_resource:
=
.decoder_output_biasadd_readvariableop_resource:	
identity¢%Decoder_output/BiasAdd/ReadVariableOp¢$Decoder_output/MatMul/ReadVariableOp¢'Hidden_layer_1_d/BiasAdd/ReadVariableOp¢&Hidden_layer_1_d/MatMul/ReadVariableOp¢'Hidden_layer_2_d/BiasAdd/ReadVariableOp¢&Hidden_layer_2_d/MatMul/ReadVariableOp
&Hidden_layer_1_d/MatMul/ReadVariableOpReadVariableOp/hidden_layer_1_d_matmul_readvariableop_resource*
_output_shapes

:*d*
dtype0
Hidden_layer_1_d/MatMulMatMulinputs.Hidden_layer_1_d/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
'Hidden_layer_1_d/BiasAdd/ReadVariableOpReadVariableOp0hidden_layer_1_d_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0©
Hidden_layer_1_d/BiasAddBiasAdd!Hidden_layer_1_d/MatMul:product:0/Hidden_layer_1_d/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
Hidden_layer_1_d/SeluSelu!Hidden_layer_1_d/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
&Hidden_layer_2_d/MatMul/ReadVariableOpReadVariableOp/hidden_layer_2_d_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0©
Hidden_layer_2_d/MatMulMatMul#Hidden_layer_1_d/Selu:activations:0.Hidden_layer_2_d/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'Hidden_layer_2_d/BiasAdd/ReadVariableOpReadVariableOp0hidden_layer_2_d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ª
Hidden_layer_2_d/BiasAddBiasAdd!Hidden_layer_2_d/MatMul:product:0/Hidden_layer_2_d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
Hidden_layer_2_d/SeluSelu!Hidden_layer_2_d/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$Decoder_output/MatMul/ReadVariableOpReadVariableOp-decoder_output_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¥
Decoder_output/MatMulMatMul#Hidden_layer_2_d/Selu:activations:0,Decoder_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%Decoder_output/BiasAdd/ReadVariableOpReadVariableOp.decoder_output_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Decoder_output/BiasAddBiasAddDecoder_output/MatMul:product:0-Decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
Decoder_output/SigmoidSigmoidDecoder_output/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
Reshape_layer/ShapeShapeDecoder_output/Sigmoid:y:0*
T0*
_output_shapes
:k
!Reshape_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Reshape_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Reshape_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Reshape_layer/strided_sliceStridedSliceReshape_layer/Shape:output:0*Reshape_layer/strided_slice/stack:output:0,Reshape_layer/strided_slice/stack_1:output:0,Reshape_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
Reshape_layer/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :_
Reshape_layer/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Ç
Reshape_layer/Reshape/shapePack$Reshape_layer/strided_slice:output:0&Reshape_layer/Reshape/shape/1:output:0&Reshape_layer/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
Reshape_layer/ReshapeReshapeDecoder_output/Sigmoid:y:0$Reshape_layer/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentityReshape_layer/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
NoOpNoOp&^Decoder_output/BiasAdd/ReadVariableOp%^Decoder_output/MatMul/ReadVariableOp(^Hidden_layer_1_d/BiasAdd/ReadVariableOp'^Hidden_layer_1_d/MatMul/ReadVariableOp(^Hidden_layer_2_d/BiasAdd/ReadVariableOp'^Hidden_layer_2_d/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 2N
%Decoder_output/BiasAdd/ReadVariableOp%Decoder_output/BiasAdd/ReadVariableOp2L
$Decoder_output/MatMul/ReadVariableOp$Decoder_output/MatMul/ReadVariableOp2R
'Hidden_layer_1_d/BiasAdd/ReadVariableOp'Hidden_layer_1_d/BiasAdd/ReadVariableOp2P
&Hidden_layer_1_d/MatMul/ReadVariableOp&Hidden_layer_1_d/MatMul/ReadVariableOp2R
'Hidden_layer_2_d/BiasAdd/ReadVariableOp'Hidden_layer_2_d/BiasAdd/ReadVariableOp2P
&Hidden_layer_2_d/MatMul/ReadVariableOp&Hidden_layer_2_d/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
÷

)__inference_Decoder_layer_call_fn_6663486

inputs
unknown:*d
	unknown_0:d
	unknown_1:	d
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_6663361s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
æ

%__inference_signature_wrapper_6663452
decoder_input
unknown:*d
	unknown_0:d
	unknown_1:	d
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_6663197s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
'
_user_specified_nameDecoder_input
Þ

f
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663268

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬


M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663594

inputs1
matmul_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
÷

)__inference_Decoder_layer_call_fn_6663469

inputs
unknown:*d
	unknown_0:d
	unknown_1:	d
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_6663271s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
×
 
0__inference_Decoder_output_layer_call_fn_6663603

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663249p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

)__inference_Decoder_layer_call_fn_6663393
decoder_input
unknown:*d
	unknown_0:d
	unknown_1:	d
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_6663361s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
'
_user_specified_nameDecoder_input
*
â
D__inference_Decoder_layer_call_and_return_conditional_losses_6663520

inputsA
/hidden_layer_1_d_matmul_readvariableop_resource:*d>
0hidden_layer_1_d_biasadd_readvariableop_resource:dB
/hidden_layer_2_d_matmul_readvariableop_resource:	d?
0hidden_layer_2_d_biasadd_readvariableop_resource:	A
-decoder_output_matmul_readvariableop_resource:
=
.decoder_output_biasadd_readvariableop_resource:	
identity¢%Decoder_output/BiasAdd/ReadVariableOp¢$Decoder_output/MatMul/ReadVariableOp¢'Hidden_layer_1_d/BiasAdd/ReadVariableOp¢&Hidden_layer_1_d/MatMul/ReadVariableOp¢'Hidden_layer_2_d/BiasAdd/ReadVariableOp¢&Hidden_layer_2_d/MatMul/ReadVariableOp
&Hidden_layer_1_d/MatMul/ReadVariableOpReadVariableOp/hidden_layer_1_d_matmul_readvariableop_resource*
_output_shapes

:*d*
dtype0
Hidden_layer_1_d/MatMulMatMulinputs.Hidden_layer_1_d/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
'Hidden_layer_1_d/BiasAdd/ReadVariableOpReadVariableOp0hidden_layer_1_d_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0©
Hidden_layer_1_d/BiasAddBiasAdd!Hidden_layer_1_d/MatMul:product:0/Hidden_layer_1_d/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
Hidden_layer_1_d/SeluSelu!Hidden_layer_1_d/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
&Hidden_layer_2_d/MatMul/ReadVariableOpReadVariableOp/hidden_layer_2_d_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0©
Hidden_layer_2_d/MatMulMatMul#Hidden_layer_1_d/Selu:activations:0.Hidden_layer_2_d/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'Hidden_layer_2_d/BiasAdd/ReadVariableOpReadVariableOp0hidden_layer_2_d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ª
Hidden_layer_2_d/BiasAddBiasAdd!Hidden_layer_2_d/MatMul:product:0/Hidden_layer_2_d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
Hidden_layer_2_d/SeluSelu!Hidden_layer_2_d/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$Decoder_output/MatMul/ReadVariableOpReadVariableOp-decoder_output_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¥
Decoder_output/MatMulMatMul#Hidden_layer_2_d/Selu:activations:0,Decoder_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%Decoder_output/BiasAdd/ReadVariableOpReadVariableOp.decoder_output_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Decoder_output/BiasAddBiasAddDecoder_output/MatMul:product:0-Decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
Decoder_output/SigmoidSigmoidDecoder_output/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
Reshape_layer/ShapeShapeDecoder_output/Sigmoid:y:0*
T0*
_output_shapes
:k
!Reshape_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#Reshape_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#Reshape_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Reshape_layer/strided_sliceStridedSliceReshape_layer/Shape:output:0*Reshape_layer/strided_slice/stack:output:0,Reshape_layer/strided_slice/stack_1:output:0,Reshape_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
Reshape_layer/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :_
Reshape_layer/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Ç
Reshape_layer/Reshape/shapePack$Reshape_layer/strided_slice:output:0&Reshape_layer/Reshape/shape/1:output:0&Reshape_layer/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
Reshape_layer/ReshapeReshapeDecoder_output/Sigmoid:y:0$Reshape_layer/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentityReshape_layer/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
NoOpNoOp&^Decoder_output/BiasAdd/ReadVariableOp%^Decoder_output/MatMul/ReadVariableOp(^Hidden_layer_1_d/BiasAdd/ReadVariableOp'^Hidden_layer_1_d/MatMul/ReadVariableOp(^Hidden_layer_2_d/BiasAdd/ReadVariableOp'^Hidden_layer_2_d/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 2N
%Decoder_output/BiasAdd/ReadVariableOp%Decoder_output/BiasAdd/ReadVariableOp2L
$Decoder_output/MatMul/ReadVariableOp$Decoder_output/MatMul/ReadVariableOp2R
'Hidden_layer_1_d/BiasAdd/ReadVariableOp'Hidden_layer_1_d/BiasAdd/ReadVariableOp2P
&Hidden_layer_1_d/MatMul/ReadVariableOp&Hidden_layer_1_d/MatMul/ReadVariableOp2R
'Hidden_layer_2_d/BiasAdd/ReadVariableOp'Hidden_layer_2_d/BiasAdd/ReadVariableOp2P
&Hidden_layer_2_d/MatMul/ReadVariableOp&Hidden_layer_2_d/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
	

)__inference_Decoder_layer_call_fn_6663286
decoder_input
unknown:*d
	unknown_0:d
	unknown_1:	d
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldecoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_6663271s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
'
_user_specified_nameDecoder_input
¤

þ
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663215

inputs0
matmul_readvariableop_resource:*d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentitySelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
õ
³
 __inference__traced_save_6663673
file_prefix6
2savev2_hidden_layer_1_d_kernel_read_readvariableop4
0savev2_hidden_layer_1_d_bias_read_readvariableop6
2savev2_hidden_layer_2_d_kernel_read_readvariableop4
0savev2_hidden_layer_2_d_bias_read_readvariableop4
0savev2_decoder_output_kernel_read_readvariableop2
.savev2_decoder_output_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ô
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ý
valueóBðB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH{
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B ä
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_hidden_layer_1_d_kernel_read_readvariableop0savev2_hidden_layer_1_d_bias_read_readvariableop2savev2_hidden_layer_2_d_kernel_read_readvariableop0savev2_hidden_layer_2_d_bias_read_readvariableop0savev2_decoder_output_kernel_read_readvariableop.savev2_decoder_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*L
_input_shapes;
9: :*d:d:	d::
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:*d: 

_output_shapes
:d:%!

_output_shapes
:	d:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::

_output_shapes
: 

æ
D__inference_Decoder_layer_call_and_return_conditional_losses_6663413
decoder_input*
hidden_layer_1_d_6663396:*d&
hidden_layer_1_d_6663398:d+
hidden_layer_2_d_6663401:	d'
hidden_layer_2_d_6663403:	*
decoder_output_6663406:
%
decoder_output_6663408:	
identity¢&Decoder_output/StatefulPartitionedCall¢(Hidden_layer_1_d/StatefulPartitionedCall¢(Hidden_layer_2_d/StatefulPartitionedCall
(Hidden_layer_1_d/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputhidden_layer_1_d_6663396hidden_layer_1_d_6663398*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663215¿
(Hidden_layer_2_d/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_1_d/StatefulPartitionedCall:output:0hidden_layer_2_d_6663401hidden_layer_2_d_6663403*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663232·
&Decoder_output/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_2_d/StatefulPartitionedCall:output:0decoder_output_6663406decoder_output_6663408*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663249ð
Reshape_layer/PartitionedCallPartitionedCall/Decoder_output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663268y
IdentityIdentity&Reshape_layer/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
NoOpNoOp'^Decoder_output/StatefulPartitionedCall)^Hidden_layer_1_d/StatefulPartitionedCall)^Hidden_layer_2_d/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 2P
&Decoder_output/StatefulPartitionedCall&Decoder_output/StatefulPartitionedCall2T
(Hidden_layer_1_d/StatefulPartitionedCall(Hidden_layer_1_d/StatefulPartitionedCall2T
(Hidden_layer_2_d/StatefulPartitionedCall(Hidden_layer_2_d/StatefulPartitionedCall:V R
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
'
_user_specified_nameDecoder_input
Þ

f
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663632

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
¦
#__inference__traced_restore_6663701
file_prefix:
(assignvariableop_hidden_layer_1_d_kernel:*d6
(assignvariableop_1_hidden_layer_1_d_bias:d=
*assignvariableop_2_hidden_layer_2_d_kernel:	d7
(assignvariableop_3_hidden_layer_2_d_bias:	<
(assignvariableop_4_decoder_output_kernel:
5
&assignvariableop_5_decoder_output_bias:	

identity_7¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5×
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ý
valueóBðB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH~
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B Á
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp(assignvariableop_hidden_layer_1_d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp(assignvariableop_1_hidden_layer_1_d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp*assignvariableop_2_hidden_layer_2_d_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp(assignvariableop_3_hidden_layer_2_d_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp(assignvariableop_4_decoder_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp&assignvariableop_5_decoder_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ö

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_7IdentityIdentity_6:output:0^NoOp_1*
T0*
_output_shapes
: Ä
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*"
_acd_function_control_output(*
_output_shapes
 "!

identity_7Identity_7:output:0*!
_input_shapes
: : : : : : : 2$
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
­

ÿ
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663249

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬


M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663232

inputs1
matmul_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¤

þ
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663574

inputs0
matmul_readvariableop_resource:*d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentitySelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
¦/
§
"__inference__wrapped_model_6663197
decoder_inputI
7decoder_hidden_layer_1_d_matmul_readvariableop_resource:*dF
8decoder_hidden_layer_1_d_biasadd_readvariableop_resource:dJ
7decoder_hidden_layer_2_d_matmul_readvariableop_resource:	dG
8decoder_hidden_layer_2_d_biasadd_readvariableop_resource:	I
5decoder_decoder_output_matmul_readvariableop_resource:
E
6decoder_decoder_output_biasadd_readvariableop_resource:	
identity¢-Decoder/Decoder_output/BiasAdd/ReadVariableOp¢,Decoder/Decoder_output/MatMul/ReadVariableOp¢/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp¢.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp¢/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp¢.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp¦
.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOpReadVariableOp7decoder_hidden_layer_1_d_matmul_readvariableop_resource*
_output_shapes

:*d*
dtype0¢
Decoder/Hidden_layer_1_d/MatMulMatMuldecoder_input6Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¤
/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOpReadVariableOp8decoder_hidden_layer_1_d_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Á
 Decoder/Hidden_layer_1_d/BiasAddBiasAdd)Decoder/Hidden_layer_1_d/MatMul:product:07Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Decoder/Hidden_layer_1_d/SeluSelu)Decoder/Hidden_layer_1_d/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd§
.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOpReadVariableOp7decoder_hidden_layer_2_d_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0Á
Decoder/Hidden_layer_2_d/MatMulMatMul+Decoder/Hidden_layer_1_d/Selu:activations:06Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOpReadVariableOp8decoder_hidden_layer_2_d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Â
 Decoder/Hidden_layer_2_d/BiasAddBiasAdd)Decoder/Hidden_layer_2_d/MatMul:product:07Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Decoder/Hidden_layer_2_d/SeluSelu)Decoder/Hidden_layer_2_d/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
,Decoder/Decoder_output/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_output_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0½
Decoder/Decoder_output/MatMulMatMul+Decoder/Hidden_layer_2_d/Selu:activations:04Decoder/Decoder_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
-Decoder/Decoder_output/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_output_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
Decoder/Decoder_output/BiasAddBiasAdd'Decoder/Decoder_output/MatMul:product:05Decoder/Decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Decoder/Decoder_output/SigmoidSigmoid'Decoder/Decoder_output/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
Decoder/Reshape_layer/ShapeShape"Decoder/Decoder_output/Sigmoid:y:0*
T0*
_output_shapes
:s
)Decoder/Reshape_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+Decoder/Reshape_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+Decoder/Reshape_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#Decoder/Reshape_layer/strided_sliceStridedSlice$Decoder/Reshape_layer/Shape:output:02Decoder/Reshape_layer/strided_slice/stack:output:04Decoder/Reshape_layer/strided_slice/stack_1:output:04Decoder/Reshape_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%Decoder/Reshape_layer/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :g
%Decoder/Reshape_layer/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ç
#Decoder/Reshape_layer/Reshape/shapePack,Decoder/Reshape_layer/strided_slice:output:0.Decoder/Reshape_layer/Reshape/shape/1:output:0.Decoder/Reshape_layer/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:°
Decoder/Reshape_layer/ReshapeReshape"Decoder/Decoder_output/Sigmoid:y:0,Decoder/Reshape_layer/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
IdentityIdentity&Decoder/Reshape_layer/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿë
NoOpNoOp.^Decoder/Decoder_output/BiasAdd/ReadVariableOp-^Decoder/Decoder_output/MatMul/ReadVariableOp0^Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp/^Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp0^Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp/^Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 2^
-Decoder/Decoder_output/BiasAdd/ReadVariableOp-Decoder/Decoder_output/BiasAdd/ReadVariableOp2\
,Decoder/Decoder_output/MatMul/ReadVariableOp,Decoder/Decoder_output/MatMul/ReadVariableOp2b
/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp2`
.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp2b
/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp2`
.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp:V R
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
'
_user_specified_nameDecoder_input
³
K
/__inference_Reshape_layer_layer_call_fn_6663619

inputs
identity¹
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663268d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö
ß
D__inference_Decoder_layer_call_and_return_conditional_losses_6663361

inputs*
hidden_layer_1_d_6663344:*d&
hidden_layer_1_d_6663346:d+
hidden_layer_2_d_6663349:	d'
hidden_layer_2_d_6663351:	*
decoder_output_6663354:
%
decoder_output_6663356:	
identity¢&Decoder_output/StatefulPartitionedCall¢(Hidden_layer_1_d/StatefulPartitionedCall¢(Hidden_layer_2_d/StatefulPartitionedCall
(Hidden_layer_1_d/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_d_6663344hidden_layer_1_d_6663346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663215¿
(Hidden_layer_2_d/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_1_d/StatefulPartitionedCall:output:0hidden_layer_2_d_6663349hidden_layer_2_d_6663351*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663232·
&Decoder_output/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_2_d/StatefulPartitionedCall:output:0decoder_output_6663354decoder_output_6663356*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663249ð
Reshape_layer/PartitionedCallPartitionedCall/Decoder_output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663268y
IdentityIdentity&Reshape_layer/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
NoOpNoOp'^Decoder_output/StatefulPartitionedCall)^Hidden_layer_1_d/StatefulPartitionedCall)^Hidden_layer_2_d/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 2P
&Decoder_output/StatefulPartitionedCall&Decoder_output/StatefulPartitionedCall2T
(Hidden_layer_1_d/StatefulPartitionedCall(Hidden_layer_1_d/StatefulPartitionedCall2T
(Hidden_layer_2_d/StatefulPartitionedCall(Hidden_layer_2_d/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
ö
ß
D__inference_Decoder_layer_call_and_return_conditional_losses_6663271

inputs*
hidden_layer_1_d_6663216:*d&
hidden_layer_1_d_6663218:d+
hidden_layer_2_d_6663233:	d'
hidden_layer_2_d_6663235:	*
decoder_output_6663250:
%
decoder_output_6663252:	
identity¢&Decoder_output/StatefulPartitionedCall¢(Hidden_layer_1_d/StatefulPartitionedCall¢(Hidden_layer_2_d/StatefulPartitionedCall
(Hidden_layer_1_d/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_d_6663216hidden_layer_1_d_6663218*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663215¿
(Hidden_layer_2_d/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_1_d/StatefulPartitionedCall:output:0hidden_layer_2_d_6663233hidden_layer_2_d_6663235*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663232·
&Decoder_output/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_2_d/StatefulPartitionedCall:output:0decoder_output_6663250decoder_output_6663252*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663249ð
Reshape_layer/PartitionedCallPartitionedCall/Decoder_output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663268y
IdentityIdentity&Reshape_layer/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
NoOpNoOp'^Decoder_output/StatefulPartitionedCall)^Hidden_layer_1_d/StatefulPartitionedCall)^Hidden_layer_2_d/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 2P
&Decoder_output/StatefulPartitionedCall&Decoder_output/StatefulPartitionedCall2T
(Hidden_layer_1_d/StatefulPartitionedCall(Hidden_layer_1_d/StatefulPartitionedCall2T
(Hidden_layer_2_d/StatefulPartitionedCall(Hidden_layer_2_d/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs

æ
D__inference_Decoder_layer_call_and_return_conditional_losses_6663433
decoder_input*
hidden_layer_1_d_6663416:*d&
hidden_layer_1_d_6663418:d+
hidden_layer_2_d_6663421:	d'
hidden_layer_2_d_6663423:	*
decoder_output_6663426:
%
decoder_output_6663428:	
identity¢&Decoder_output/StatefulPartitionedCall¢(Hidden_layer_1_d/StatefulPartitionedCall¢(Hidden_layer_2_d/StatefulPartitionedCall
(Hidden_layer_1_d/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputhidden_layer_1_d_6663416hidden_layer_1_d_6663418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663215¿
(Hidden_layer_2_d/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_1_d/StatefulPartitionedCall:output:0hidden_layer_2_d_6663421hidden_layer_2_d_6663423*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663232·
&Decoder_output/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_2_d/StatefulPartitionedCall:output:0decoder_output_6663426decoder_output_6663428*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663249ð
Reshape_layer/PartitionedCallPartitionedCall/Decoder_output/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663268y
IdentityIdentity&Reshape_layer/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
NoOpNoOp'^Decoder_output/StatefulPartitionedCall)^Hidden_layer_1_d/StatefulPartitionedCall)^Hidden_layer_2_d/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ*: : : : : : 2P
&Decoder_output/StatefulPartitionedCall&Decoder_output/StatefulPartitionedCall2T
(Hidden_layer_1_d/StatefulPartitionedCall(Hidden_layer_1_d/StatefulPartitionedCall2T
(Hidden_layer_2_d/StatefulPartitionedCall(Hidden_layer_2_d/StatefulPartitionedCall:V R
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
'
_user_specified_nameDecoder_input
Ô

2__inference_Hidden_layer_1_d_layer_call_fn_6663563

inputs
unknown:*d
	unknown_0:d
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663215o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
­

ÿ
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663614

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*À
serving_default¬
G
Decoder_input6
serving_default_Decoder_input:0ÿÿÿÿÿÿÿÿÿ*E
Reshape_layer4
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ív
ã
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
¥
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
2
3
$4
%5"
trackable_list_wrapper
J
0
1
2
3
$4
%5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ú
1trace_0
2trace_1
3trace_2
4trace_32ï
)__inference_Decoder_layer_call_fn_6663286
)__inference_Decoder_layer_call_fn_6663469
)__inference_Decoder_layer_call_fn_6663486
)__inference_Decoder_layer_call_fn_6663393À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z1trace_0z2trace_1z3trace_2z4trace_3
Æ
5trace_0
6trace_1
7trace_2
8trace_32Û
D__inference_Decoder_layer_call_and_return_conditional_losses_6663520
D__inference_Decoder_layer_call_and_return_conditional_losses_6663554
D__inference_Decoder_layer_call_and_return_conditional_losses_6663413
D__inference_Decoder_layer_call_and_return_conditional_losses_6663433À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z5trace_0z6trace_1z7trace_2z8trace_3
ÓBÐ
"__inference__wrapped_model_6663197Decoder_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
9serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ö
?trace_02Ù
2__inference_Hidden_layer_1_d_layer_call_fn_6663563¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z?trace_0

@trace_02ô
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663574¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z@trace_0
):'*d2Hidden_layer_1_d/kernel
#:!d2Hidden_layer_1_d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ö
Ftrace_02Ù
2__inference_Hidden_layer_2_d_layer_call_fn_6663583¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zFtrace_0

Gtrace_02ô
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663594¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zGtrace_0
*:(	d2Hidden_layer_2_d/kernel
$:"2Hidden_layer_2_d/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ô
Mtrace_02×
0__inference_Decoder_output_layer_call_fn_6663603¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zMtrace_0

Ntrace_02ò
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663614¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zNtrace_0
):'
2Decoder_output/kernel
": 2Decoder_output/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
ó
Ttrace_02Ö
/__inference_Reshape_layer_layer_call_fn_6663619¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zTtrace_0

Utrace_02ñ
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663632¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zUtrace_0
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bÿ
)__inference_Decoder_layer_call_fn_6663286Decoder_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
)__inference_Decoder_layer_call_fn_6663469inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
)__inference_Decoder_layer_call_fn_6663486inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bÿ
)__inference_Decoder_layer_call_fn_6663393Decoder_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_Decoder_layer_call_and_return_conditional_losses_6663520inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_Decoder_layer_call_and_return_conditional_losses_6663554inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_Decoder_layer_call_and_return_conditional_losses_6663413Decoder_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_Decoder_layer_call_and_return_conditional_losses_6663433Decoder_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÒBÏ
%__inference_signature_wrapper_6663452Decoder_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
æBã
2__inference_Hidden_layer_1_d_layer_call_fn_6663563inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663574inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
æBã
2__inference_Hidden_layer_2_d_layer_call_fn_6663583inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663594inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
äBá
0__inference_Decoder_output_layer_call_fn_6663603inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÿBü
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663614inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ãBà
/__inference_Reshape_layer_layer_call_fn_6663619inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663632inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 »
D__inference_Decoder_layer_call_and_return_conditional_losses_6663413s$%>¢;
4¢1
'$
Decoder_inputÿÿÿÿÿÿÿÿÿ*
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 »
D__inference_Decoder_layer_call_and_return_conditional_losses_6663433s$%>¢;
4¢1
'$
Decoder_inputÿÿÿÿÿÿÿÿÿ*
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ´
D__inference_Decoder_layer_call_and_return_conditional_losses_6663520l$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ*
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ´
D__inference_Decoder_layer_call_and_return_conditional_losses_6663554l$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ*
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_Decoder_layer_call_fn_6663286f$%>¢;
4¢1
'$
Decoder_inputÿÿÿÿÿÿÿÿÿ*
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_Decoder_layer_call_fn_6663393f$%>¢;
4¢1
'$
Decoder_inputÿÿÿÿÿÿÿÿÿ*
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_Decoder_layer_call_fn_6663469_$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ*
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_Decoder_layer_call_fn_6663486_$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ*
p

 
ª "ÿÿÿÿÿÿÿÿÿ­
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6663614^$%0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_Decoder_output_layer_call_fn_6663603Q$%0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ­
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6663574\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
2__inference_Hidden_layer_1_d_layer_call_fn_6663563O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª "ÿÿÿÿÿÿÿÿÿd®
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6663594]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_Hidden_layer_2_d_layer_call_fn_6663583P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ«
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6663632]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_Reshape_layer_layer_call_fn_6663619P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿª
"__inference__wrapped_model_6663197$%6¢3
,¢)
'$
Decoder_inputÿÿÿÿÿÿÿÿÿ*
ª "Aª>
<
Reshape_layer+(
Reshape_layerÿÿÿÿÿÿÿÿÿ¾
%__inference_signature_wrapper_6663452$%G¢D
¢ 
=ª:
8
Decoder_input'$
Decoder_inputÿÿÿÿÿÿÿÿÿ*"Aª>
<
Reshape_layer+(
Reshape_layerÿÿÿÿÿÿÿÿÿ