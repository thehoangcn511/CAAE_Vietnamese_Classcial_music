Ó
òÇ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
,
Exp
x"T
y"T"
Ttype:

2
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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

RandomStandardNormal

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
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018
~
Variance_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameVariance_layer/bias
w
'Variance_layer/bias/Read/ReadVariableOpReadVariableOpVariance_layer/bias*
_output_shapes
: *
dtype0

Variance_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *&
shared_nameVariance_layer/kernel

)Variance_layer/kernel/Read/ReadVariableOpReadVariableOpVariance_layer/kernel*
_output_shapes

:d *
dtype0
v
Mean_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameMean_layer/bias
o
#Mean_layer/bias/Read/ReadVariableOpReadVariableOpMean_layer/bias*
_output_shapes
: *
dtype0
~
Mean_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *"
shared_nameMean_layer/kernel
w
%Mean_layer/kernel/Read/ReadVariableOpReadVariableOpMean_layer/kernel*
_output_shapes

:d *
dtype0
~
Hidden_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameHidden_layer_2/bias
w
'Hidden_layer_2/bias/Read/ReadVariableOpReadVariableOpHidden_layer_2/bias*
_output_shapes
:d*
dtype0

Hidden_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*&
shared_nameHidden_layer_2/kernel

)Hidden_layer_2/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_2/kernel*
_output_shapes
:	d*
dtype0

Hidden_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameHidden_layer_1/bias
x
'Hidden_layer_1/bias/Read/ReadVariableOpReadVariableOpHidden_layer_1/bias*
_output_shapes	
:*
dtype0

Hidden_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameHidden_layer_1/kernel

)Hidden_layer_1/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_1/kernel* 
_output_shapes
:
*
dtype0

NoOpNoOp
­(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*è'
valueÞ'BÛ' BÔ'

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
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
¦
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias*
¦
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias*

6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
<
0
1
$2
%3
,4
-5
46
57*
<
0
1
$2
%3
,4
-5
46
57*
* 
°
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Atrace_0
Btrace_1
Ctrace_2
Dtrace_3* 
6
Etrace_0
Ftrace_1
Gtrace_2
Htrace_3* 
* 

Iserving_default* 
* 
* 
* 

Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Otrace_0* 

Ptrace_0* 

0
1*

0
1*
* 

Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Vtrace_0* 

Wtrace_0* 
e_
VARIABLE_VALUEHidden_layer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEHidden_layer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 

Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
e_
VARIABLE_VALUEHidden_layer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEHidden_layer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

,0
-1*

,0
-1*
* 

_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

dtrace_0* 

etrace_0* 
a[
VARIABLE_VALUEMean_layer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEMean_layer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

40
51*

40
51*
* 

fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*

ktrace_0* 

ltrace_0* 
e_
VARIABLE_VALUEVariance_layer/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEVariance_layer/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

rtrace_0* 

strace_0* 
* 
5
0
1
2
3
4
5
6*
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

serving_default_Encoder_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_Encoder_inputHidden_layer_1/kernelHidden_layer_1/biasHidden_layer_2/kernelHidden_layer_2/biasMean_layer/kernelMean_layer/biasVariance_layer/kernelVariance_layer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_6662781
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ì
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)Hidden_layer_1/kernel/Read/ReadVariableOp'Hidden_layer_1/bias/Read/ReadVariableOp)Hidden_layer_2/kernel/Read/ReadVariableOp'Hidden_layer_2/bias/Read/ReadVariableOp%Mean_layer/kernel/Read/ReadVariableOp#Mean_layer/bias/Read/ReadVariableOp)Variance_layer/kernel/Read/ReadVariableOp'Variance_layer/bias/Read/ReadVariableOpConst*
Tin
2
*
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
 __inference__traced_save_6663081
Ç
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_layer_1/kernelHidden_layer_1/biasHidden_layer_2/kernelHidden_layer_2/biasMean_layer/kernelMean_layer/biasVariance_layer/kernelVariance_layer/bias*
Tin
2	*
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
#__inference__traced_restore_6663115­×
ë

 __inference__traced_save_6663081
file_prefix4
0savev2_hidden_layer_1_kernel_read_readvariableop2
.savev2_hidden_layer_1_bias_read_readvariableop4
0savev2_hidden_layer_2_kernel_read_readvariableop2
.savev2_hidden_layer_2_bias_read_readvariableop0
,savev2_mean_layer_kernel_read_readvariableop.
*savev2_mean_layer_bias_read_readvariableop4
0savev2_variance_layer_kernel_read_readvariableop2
.savev2_variance_layer_bias_read_readvariableop
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
: Â
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*ë
valueáBÞ	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ¸
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer_1_kernel_read_readvariableop.savev2_hidden_layer_1_bias_read_readvariableop0savev2_hidden_layer_2_kernel_read_readvariableop.savev2_hidden_layer_2_bias_read_readvariableop,savev2_mean_layer_kernel_read_readvariableop*savev2_mean_layer_bias_read_readvariableop0savev2_variance_layer_kernel_read_readvariableop.savev2_variance_layer_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	
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

identity_1Identity_1:output:0*[
_input_shapesJ
H: :
::	d:d:d : :d : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	d: 

_output_shapes
:d:$ 

_output_shapes

:d : 

_output_shapes
: :$ 

_output_shapes

:d : 

_output_shapes
: :	

_output_shapes
: 
#

D__inference_Encoder_layer_call_and_return_conditional_losses_6662519

inputs*
hidden_layer_1_6662444:
%
hidden_layer_1_6662446:	)
hidden_layer_2_6662461:	d$
hidden_layer_2_6662463:d$
mean_layer_6662477:d  
mean_layer_6662479: (
variance_layer_6662493:d $
variance_layer_6662495: 
identity

identity_1

identity_2¢&Encoder_output/StatefulPartitionedCall¢&Hidden_layer_1/StatefulPartitionedCall¢&Hidden_layer_2/StatefulPartitionedCall¢"Mean_layer/StatefulPartitionedCall¢&Variance_layer/StatefulPartitionedCallÄ
Flatten_layer/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662430¬
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6662444hidden_layer_1_6662446*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662443´
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6662461hidden_layer_2_6662463*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662460¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6662477mean_layer_6662479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662476´
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6662493variance_layer_6662495*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6662492¬
&Encoder_output/StatefulPartitionedCallStatefulPartitionedCall+Mean_layer/StatefulPartitionedCall:output:0/Variance_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6662514z
IdentityIdentity+Mean_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

Identity_1Identity/Variance_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

Identity_2Identity/Encoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp'^Encoder_output/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall#^Mean_layer/StatefulPartitionedCall'^Variance_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2P
&Encoder_output/StatefulPartitionedCall&Encoder_output/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2H
"Mean_layer/StatefulPartitionedCall"Mean_layer/StatefulPartitionedCall2P
&Variance_layer/StatefulPartitionedCall&Variance_layer/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
ã
)__inference_Encoder_layer_call_fn_6662698
encoder_input
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
identity

identity_1

identity_2¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6662650o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input
#

D__inference_Encoder_layer_call_and_return_conditional_losses_6662650

inputs*
hidden_layer_1_6662626:
%
hidden_layer_1_6662628:	)
hidden_layer_2_6662631:	d$
hidden_layer_2_6662633:d$
mean_layer_6662636:d  
mean_layer_6662638: (
variance_layer_6662641:d $
variance_layer_6662643: 
identity

identity_1

identity_2¢&Encoder_output/StatefulPartitionedCall¢&Hidden_layer_1/StatefulPartitionedCall¢&Hidden_layer_2/StatefulPartitionedCall¢"Mean_layer/StatefulPartitionedCall¢&Variance_layer/StatefulPartitionedCallÄ
Flatten_layer/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662430¬
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6662626hidden_layer_1_6662628*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662443´
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6662631hidden_layer_2_6662633*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662460¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6662636mean_layer_6662638*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662476´
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6662641variance_layer_6662643*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6662492¬
&Encoder_output/StatefulPartitionedCallStatefulPartitionedCall+Mean_layer/StatefulPartitionedCall:output:0/Variance_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6662514z
IdentityIdentity+Mean_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

Identity_1Identity/Variance_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

Identity_2Identity/Encoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp'^Encoder_output/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall#^Mean_layer/StatefulPartitionedCall'^Variance_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2P
&Encoder_output/StatefulPartitionedCall&Encoder_output/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2H
"Mean_layer/StatefulPartitionedCall"Mean_layer/StatefulPartitionedCall2P
&Variance_layer/StatefulPartitionedCall&Variance_layer/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë6
¯
D__inference_Encoder_layer_call_and_return_conditional_losses_6662921

inputsA
-hidden_layer_1_matmul_readvariableop_resource:
=
.hidden_layer_1_biasadd_readvariableop_resource:	@
-hidden_layer_2_matmul_readvariableop_resource:	d<
.hidden_layer_2_biasadd_readvariableop_resource:d;
)mean_layer_matmul_readvariableop_resource:d 8
*mean_layer_biasadd_readvariableop_resource: ?
-variance_layer_matmul_readvariableop_resource:d <
.variance_layer_biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢%Hidden_layer_1/BiasAdd/ReadVariableOp¢$Hidden_layer_1/MatMul/ReadVariableOp¢%Hidden_layer_2/BiasAdd/ReadVariableOp¢$Hidden_layer_2/MatMul/ReadVariableOp¢!Mean_layer/BiasAdd/ReadVariableOp¢ Mean_layer/MatMul/ReadVariableOp¢%Variance_layer/BiasAdd/ReadVariableOp¢$Variance_layer/MatMul/ReadVariableOpd
Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  y
Flatten_layer/ReshapeReshapeinputsFlatten_layer/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
Hidden_layer_1/MatMulMatMulFlatten_layer/Reshape:output:0,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
Hidden_layer_1/SeluSeluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0¢
Hidden_layer_2/MatMulMatMul!Hidden_layer_1/Selu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0£
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
Hidden_layer_2/SeluSeluHidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 Mean_layer/MatMul/ReadVariableOpReadVariableOp)mean_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0
Mean_layer/MatMulMatMul!Hidden_layer_2/Selu:activations:0(Mean_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!Mean_layer/BiasAdd/ReadVariableOpReadVariableOp*mean_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Mean_layer/BiasAddBiasAddMean_layer/MatMul:product:0)Mean_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$Variance_layer/MatMul/ReadVariableOpReadVariableOp-variance_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0¢
Variance_layer/MatMulMatMul!Hidden_layer_2/Selu:activations:0,Variance_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%Variance_layer/BiasAdd/ReadVariableOpReadVariableOp.variance_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0£
Variance_layer/BiasAddBiasAddVariance_layer/MatMul:product:0-Variance_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
Encoder_output/ShapeShapeVariance_layer/BiasAdd:output:0*
T0*
_output_shapes
:f
!Encoder_output/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    h
#Encoder_output/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Å
1Encoder_output/random_normal/RandomStandardNormalRandomStandardNormalEncoder_output/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2´oÃ
 Encoder_output/random_normal/mulMul:Encoder_output/random_normal/RandomStandardNormal:output:0,Encoder_output/random_normal/stddev:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ©
Encoder_output/random_normalAddV2$Encoder_output/random_normal/mul:z:0*Encoder_output/random_normal/mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
Encoder_output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
Encoder_output/truedivRealDivVariance_layer/BiasAdd:output:0!Encoder_output/truediv/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
Encoder_output/ExpExpEncoder_output/truediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Encoder_output/mulMul Encoder_output/random_normal:z:0Encoder_output/Exp:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Encoder_output/addAddV2Encoder_output/mul:z:0Mean_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ j
IdentityIdentityMean_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p

Identity_1IdentityVariance_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g

Identity_2IdentityEncoder_output/add:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ú
NoOpNoOp&^Hidden_layer_1/BiasAdd/ReadVariableOp%^Hidden_layer_1/MatMul/ReadVariableOp&^Hidden_layer_2/BiasAdd/ReadVariableOp%^Hidden_layer_2/MatMul/ReadVariableOp"^Mean_layer/BiasAdd/ReadVariableOp!^Mean_layer/MatMul/ReadVariableOp&^Variance_layer/BiasAdd/ReadVariableOp%^Variance_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2N
%Hidden_layer_1/BiasAdd/ReadVariableOp%Hidden_layer_1/BiasAdd/ReadVariableOp2L
$Hidden_layer_1/MatMul/ReadVariableOp$Hidden_layer_1/MatMul/ReadVariableOp2N
%Hidden_layer_2/BiasAdd/ReadVariableOp%Hidden_layer_2/BiasAdd/ReadVariableOp2L
$Hidden_layer_2/MatMul/ReadVariableOp$Hidden_layer_2/MatMul/ReadVariableOp2F
!Mean_layer/BiasAdd/ReadVariableOp!Mean_layer/BiasAdd/ReadVariableOp2D
 Mean_layer/MatMul/ReadVariableOp Mean_layer/MatMul/ReadVariableOp2N
%Variance_layer/BiasAdd/ReadVariableOp%Variance_layer/BiasAdd/ReadVariableOp2L
$Variance_layer/MatMul/ReadVariableOp$Variance_layer/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 #

D__inference_Encoder_layer_call_and_return_conditional_losses_6662754
encoder_input*
hidden_layer_1_6662730:
%
hidden_layer_1_6662732:	)
hidden_layer_2_6662735:	d$
hidden_layer_2_6662737:d$
mean_layer_6662740:d  
mean_layer_6662742: (
variance_layer_6662745:d $
variance_layer_6662747: 
identity

identity_1

identity_2¢&Encoder_output/StatefulPartitionedCall¢&Hidden_layer_1/StatefulPartitionedCall¢&Hidden_layer_2/StatefulPartitionedCall¢"Mean_layer/StatefulPartitionedCall¢&Variance_layer/StatefulPartitionedCallË
Flatten_layer/PartitionedCallPartitionedCallencoder_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662430¬
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6662730hidden_layer_1_6662732*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662443´
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6662735hidden_layer_2_6662737*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662460¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6662740mean_layer_6662742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662476´
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6662745variance_layer_6662747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6662492¬
&Encoder_output/StatefulPartitionedCallStatefulPartitionedCall+Mean_layer/StatefulPartitionedCall:output:0/Variance_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6662514z
IdentityIdentity+Mean_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

Identity_1Identity/Variance_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

Identity_2Identity/Encoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp'^Encoder_output/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall#^Mean_layer/StatefulPartitionedCall'^Variance_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2P
&Encoder_output/StatefulPartitionedCall&Encoder_output/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2H
"Mean_layer/StatefulPartitionedCall"Mean_layer/StatefulPartitionedCall2P
&Variance_layer/StatefulPartitionedCall&Variance_layer/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input
¦

ý
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662972

inputs1
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
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
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
z
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6663032
inputs_0
inputs_1
identity=
ShapeShapeinputs_1*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2©
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @b
truedivRealDivinputs_1truediv/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ I
ExpExptruediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
mulMulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Q
addAddV2mul:z:0inputs_0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/1
 #

D__inference_Encoder_layer_call_and_return_conditional_losses_6662726
encoder_input*
hidden_layer_1_6662702:
%
hidden_layer_1_6662704:	)
hidden_layer_2_6662707:	d$
hidden_layer_2_6662709:d$
mean_layer_6662712:d  
mean_layer_6662714: (
variance_layer_6662717:d $
variance_layer_6662719: 
identity

identity_1

identity_2¢&Encoder_output/StatefulPartitionedCall¢&Hidden_layer_1/StatefulPartitionedCall¢&Hidden_layer_2/StatefulPartitionedCall¢"Mean_layer/StatefulPartitionedCall¢&Variance_layer/StatefulPartitionedCallË
Flatten_layer/PartitionedCallPartitionedCallencoder_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662430¬
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6662702hidden_layer_1_6662704*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662443´
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6662707hidden_layer_2_6662709*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662460¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6662712mean_layer_6662714*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662476´
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6662717variance_layer_6662719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6662492¬
&Encoder_output/StatefulPartitionedCallStatefulPartitionedCall+Mean_layer/StatefulPartitionedCall:output:0/Variance_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6662514z
IdentityIdentity+Mean_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

Identity_1Identity/Variance_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

Identity_2Identity/Encoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp'^Encoder_output/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall#^Mean_layer/StatefulPartitionedCall'^Variance_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2P
&Encoder_output/StatefulPartitionedCall&Encoder_output/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2H
"Mean_layer/StatefulPartitionedCall"Mean_layer/StatefulPartitionedCall2P
&Variance_layer/StatefulPartitionedCall&Variance_layer/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input
Ó
ã
)__inference_Encoder_layer_call_fn_6662542
encoder_input
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
identity

identity_1

identity_2¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6662519o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input
Ø$
±
#__inference__traced_restore_6663115
file_prefix:
&assignvariableop_hidden_layer_1_kernel:
5
&assignvariableop_1_hidden_layer_1_bias:	;
(assignvariableop_2_hidden_layer_2_kernel:	d4
&assignvariableop_3_hidden_layer_2_bias:d6
$assignvariableop_4_mean_layer_kernel:d 0
"assignvariableop_5_mean_layer_bias: :
(assignvariableop_6_variance_layer_kernel:d 4
&assignvariableop_7_variance_layer_bias: 

identity_9¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7Å
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*ë
valueáBÞ	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B Ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp&assignvariableop_hidden_layer_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp(assignvariableop_2_hidden_layer_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp&assignvariableop_3_hidden_layer_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_mean_layer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_mean_layer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp(assignvariableop_6_variance_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp&assignvariableop_7_variance_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: î
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ê	
ø
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662991

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
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
Ä
f
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662932

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

,__inference_Mean_layer_layer_call_fn_6662981

inputs
unknown:d 
	unknown_0: 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662476o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
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
Ð

0__inference_Variance_layer_layer_call_fn_6663000

inputs
unknown:d 
	unknown_0: 
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6662492o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
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
¦

ý
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662460

inputs1
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
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
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï=

"__inference__wrapped_model_6662417
encoder_inputI
5encoder_hidden_layer_1_matmul_readvariableop_resource:
E
6encoder_hidden_layer_1_biasadd_readvariableop_resource:	H
5encoder_hidden_layer_2_matmul_readvariableop_resource:	dD
6encoder_hidden_layer_2_biasadd_readvariableop_resource:dC
1encoder_mean_layer_matmul_readvariableop_resource:d @
2encoder_mean_layer_biasadd_readvariableop_resource: G
5encoder_variance_layer_matmul_readvariableop_resource:d D
6encoder_variance_layer_biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp¢,Encoder/Hidden_layer_1/MatMul/ReadVariableOp¢-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp¢,Encoder/Hidden_layer_2/MatMul/ReadVariableOp¢)Encoder/Mean_layer/BiasAdd/ReadVariableOp¢(Encoder/Mean_layer/MatMul/ReadVariableOp¢-Encoder/Variance_layer/BiasAdd/ReadVariableOp¢,Encoder/Variance_layer/MatMul/ReadVariableOpl
Encoder/Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
Encoder/Flatten_layer/ReshapeReshapeencoder_input$Encoder/Flatten_layer/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
,Encoder/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp5encoder_hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¸
Encoder/Hidden_layer_1/MatMulMatMul&Encoder/Flatten_layer/Reshape:output:04Encoder/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp6encoder_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
Encoder/Hidden_layer_1/BiasAddBiasAdd'Encoder/Hidden_layer_1/MatMul:product:05Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Encoder/Hidden_layer_1/SeluSelu'Encoder/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,Encoder/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp5encoder_hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0º
Encoder/Hidden_layer_2/MatMulMatMul)Encoder/Hidden_layer_1/Selu:activations:04Encoder/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp6encoder_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0»
Encoder/Hidden_layer_2/BiasAddBiasAdd'Encoder/Hidden_layer_2/MatMul:product:05Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd~
Encoder/Hidden_layer_2/SeluSelu'Encoder/Hidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(Encoder/Mean_layer/MatMul/ReadVariableOpReadVariableOp1encoder_mean_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0²
Encoder/Mean_layer/MatMulMatMul)Encoder/Hidden_layer_2/Selu:activations:00Encoder/Mean_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)Encoder/Mean_layer/BiasAdd/ReadVariableOpReadVariableOp2encoder_mean_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¯
Encoder/Mean_layer/BiasAddBiasAdd#Encoder/Mean_layer/MatMul:product:01Encoder/Mean_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
,Encoder/Variance_layer/MatMul/ReadVariableOpReadVariableOp5encoder_variance_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0º
Encoder/Variance_layer/MatMulMatMul)Encoder/Hidden_layer_2/Selu:activations:04Encoder/Variance_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-Encoder/Variance_layer/BiasAdd/ReadVariableOpReadVariableOp6encoder_variance_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
Encoder/Variance_layer/BiasAddBiasAdd'Encoder/Variance_layer/MatMul:product:05Encoder/Variance_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
Encoder/Encoder_output/ShapeShape'Encoder/Variance_layer/BiasAdd:output:0*
T0*
_output_shapes
:n
)Encoder/Encoder_output/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    p
+Encoder/Encoder_output/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Õ
9Encoder/Encoder_output/random_normal/RandomStandardNormalRandomStandardNormal%Encoder/Encoder_output/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ü5Û
(Encoder/Encoder_output/random_normal/mulMulBEncoder/Encoder_output/random_normal/RandomStandardNormal:output:04Encoder/Encoder_output/random_normal/stddev:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
$Encoder/Encoder_output/random_normalAddV2,Encoder/Encoder_output/random_normal/mul:z:02Encoder/Encoder_output/random_normal/mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
 Encoder/Encoder_output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @¯
Encoder/Encoder_output/truedivRealDiv'Encoder/Variance_layer/BiasAdd:output:0)Encoder/Encoder_output/truediv/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
Encoder/Encoder_output/ExpExp"Encoder/Encoder_output/truediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Encoder/Encoder_output/mulMul(Encoder/Encoder_output/random_normal:z:0Encoder/Encoder_output/Exp:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Encoder/Encoder_output/addAddV2Encoder/Encoder_output/mul:z:0#Encoder/Mean_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
IdentityIdentityEncoder/Encoder_output/add:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t

Identity_1Identity#Encoder/Mean_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x

Identity_2Identity'Encoder/Variance_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
NoOpNoOp.^Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_1/MatMul/ReadVariableOp.^Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_2/MatMul/ReadVariableOp*^Encoder/Mean_layer/BiasAdd/ReadVariableOp)^Encoder/Mean_layer/MatMul/ReadVariableOp.^Encoder/Variance_layer/BiasAdd/ReadVariableOp-^Encoder/Variance_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2^
-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_1/MatMul/ReadVariableOp,Encoder/Hidden_layer_1/MatMul/ReadVariableOp2^
-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_2/MatMul/ReadVariableOp,Encoder/Hidden_layer_2/MatMul/ReadVariableOp2V
)Encoder/Mean_layer/BiasAdd/ReadVariableOp)Encoder/Mean_layer/BiasAdd/ReadVariableOp2T
(Encoder/Mean_layer/MatMul/ReadVariableOp(Encoder/Mean_layer/MatMul/ReadVariableOp2^
-Encoder/Variance_layer/BiasAdd/ReadVariableOp-Encoder/Variance_layer/BiasAdd/ReadVariableOp2\
,Encoder/Variance_layer/MatMul/ReadVariableOp,Encoder/Variance_layer/MatMul/ReadVariableOp:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input
³
K
/__inference_Flatten_layer_layer_call_fn_6662926

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662430a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
 
0__inference_Hidden_layer_1_layer_call_fn_6662941

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallá
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662443p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

ÿ
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662952

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
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
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
ß
%__inference_signature_wrapper_6662781
encoder_input
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
identity

identity_1

identity_2¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_6662417o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input
Ð
x
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6662514

inputs
inputs_1
identity=
ShapeShapeinputs_1*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¨
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÅýÀ
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @b
truedivRealDivinputs_1truediv/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ I
ExpExptruediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
mulMulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ O
addAddV2mul:z:0inputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¾
Ü
)__inference_Encoder_layer_call_fn_6662831

inputs
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
identity

identity_1

identity_2¢StatefulPartitionedCallÏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6662650o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
f
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662430

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê	
ø
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662476

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
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
®

ÿ
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662443

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
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
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
Ü
)__inference_Encoder_layer_call_fn_6662806

inputs
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
identity

identity_1

identity_2¢StatefulPartitionedCallÏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6662519o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó

0__inference_Hidden_layer_2_layer_call_fn_6662961

inputs
unknown:	d
	unknown_0:d
identity¢StatefulPartitionedCallà
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662460o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
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
Î	
ü
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6662492

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
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
Î	
ü
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6663010

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
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

y
0__inference_Encoder_output_layer_call_fn_6663016
inputs_0
inputs_1
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6662514o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/1
Ì6
¯
D__inference_Encoder_layer_call_and_return_conditional_losses_6662876

inputsA
-hidden_layer_1_matmul_readvariableop_resource:
=
.hidden_layer_1_biasadd_readvariableop_resource:	@
-hidden_layer_2_matmul_readvariableop_resource:	d<
.hidden_layer_2_biasadd_readvariableop_resource:d;
)mean_layer_matmul_readvariableop_resource:d 8
*mean_layer_biasadd_readvariableop_resource: ?
-variance_layer_matmul_readvariableop_resource:d <
.variance_layer_biasadd_readvariableop_resource: 
identity

identity_1

identity_2¢%Hidden_layer_1/BiasAdd/ReadVariableOp¢$Hidden_layer_1/MatMul/ReadVariableOp¢%Hidden_layer_2/BiasAdd/ReadVariableOp¢$Hidden_layer_2/MatMul/ReadVariableOp¢!Mean_layer/BiasAdd/ReadVariableOp¢ Mean_layer/MatMul/ReadVariableOp¢%Variance_layer/BiasAdd/ReadVariableOp¢$Variance_layer/MatMul/ReadVariableOpd
Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  y
Flatten_layer/ReshapeReshapeinputsFlatten_layer/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
Hidden_layer_1/MatMulMatMulFlatten_layer/Reshape:output:0,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
Hidden_layer_1/SeluSeluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0¢
Hidden_layer_2/MatMulMatMul!Hidden_layer_1/Selu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0£
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdn
Hidden_layer_2/SeluSeluHidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 Mean_layer/MatMul/ReadVariableOpReadVariableOp)mean_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0
Mean_layer/MatMulMatMul!Hidden_layer_2/Selu:activations:0(Mean_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!Mean_layer/BiasAdd/ReadVariableOpReadVariableOp*mean_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Mean_layer/BiasAddBiasAddMean_layer/MatMul:product:0)Mean_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$Variance_layer/MatMul/ReadVariableOpReadVariableOp-variance_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0¢
Variance_layer/MatMulMatMul!Hidden_layer_2/Selu:activations:0,Variance_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%Variance_layer/BiasAdd/ReadVariableOpReadVariableOp.variance_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0£
Variance_layer/BiasAddBiasAddVariance_layer/MatMul:product:0-Variance_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
Encoder_output/ShapeShapeVariance_layer/BiasAdd:output:0*
T0*
_output_shapes
:f
!Encoder_output/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    h
#Encoder_output/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Æ
1Encoder_output/random_normal/RandomStandardNormalRandomStandardNormalEncoder_output/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2çÃ
 Encoder_output/random_normal/mulMul:Encoder_output/random_normal/RandomStandardNormal:output:0,Encoder_output/random_normal/stddev:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ©
Encoder_output/random_normalAddV2$Encoder_output/random_normal/mul:z:0*Encoder_output/random_normal/mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
Encoder_output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
Encoder_output/truedivRealDivVariance_layer/BiasAdd:output:0!Encoder_output/truediv/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
Encoder_output/ExpExpEncoder_output/truediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Encoder_output/mulMul Encoder_output/random_normal:z:0Encoder_output/Exp:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Encoder_output/addAddV2Encoder_output/mul:z:0Mean_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ j
IdentityIdentityMean_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p

Identity_1IdentityVariance_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g

Identity_2IdentityEncoder_output/add:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ú
NoOpNoOp&^Hidden_layer_1/BiasAdd/ReadVariableOp%^Hidden_layer_1/MatMul/ReadVariableOp&^Hidden_layer_2/BiasAdd/ReadVariableOp%^Hidden_layer_2/MatMul/ReadVariableOp"^Mean_layer/BiasAdd/ReadVariableOp!^Mean_layer/MatMul/ReadVariableOp&^Variance_layer/BiasAdd/ReadVariableOp%^Variance_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2N
%Hidden_layer_1/BiasAdd/ReadVariableOp%Hidden_layer_1/BiasAdd/ReadVariableOp2L
$Hidden_layer_1/MatMul/ReadVariableOp$Hidden_layer_1/MatMul/ReadVariableOp2N
%Hidden_layer_2/BiasAdd/ReadVariableOp%Hidden_layer_2/BiasAdd/ReadVariableOp2L
$Hidden_layer_2/MatMul/ReadVariableOp$Hidden_layer_2/MatMul/ReadVariableOp2F
!Mean_layer/BiasAdd/ReadVariableOp!Mean_layer/BiasAdd/ReadVariableOp2D
 Mean_layer/MatMul/ReadVariableOp Mean_layer/MatMul/ReadVariableOp2N
%Variance_layer/BiasAdd/ReadVariableOp%Variance_layer/BiasAdd/ReadVariableOp2L
$Variance_layer/MatMul/ReadVariableOp$Variance_layer/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Å
serving_default±
K
Encoder_input:
serving_default_Encoder_input:0ÿÿÿÿÿÿÿÿÿB
Encoder_output0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ >

Mean_layer0
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿ B
Variance_layer0
StatefulPartitionedCall:2ÿÿÿÿÿÿÿÿÿ tensorflow/serving/predict:

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
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
»
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
»
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias"
_tf_keras_layer
¥
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
X
0
1
$2
%3
,4
-5
46
57"
trackable_list_wrapper
X
0
1
$2
%3
,4
-5
46
57"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ú
Atrace_0
Btrace_1
Ctrace_2
Dtrace_32ï
)__inference_Encoder_layer_call_fn_6662542
)__inference_Encoder_layer_call_fn_6662806
)__inference_Encoder_layer_call_fn_6662831
)__inference_Encoder_layer_call_fn_6662698À
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
 zAtrace_0zBtrace_1zCtrace_2zDtrace_3
Æ
Etrace_0
Ftrace_1
Gtrace_2
Htrace_32Û
D__inference_Encoder_layer_call_and_return_conditional_losses_6662876
D__inference_Encoder_layer_call_and_return_conditional_losses_6662921
D__inference_Encoder_layer_call_and_return_conditional_losses_6662726
D__inference_Encoder_layer_call_and_return_conditional_losses_6662754À
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
 zEtrace_0zFtrace_1zGtrace_2zHtrace_3
ÓBÐ
"__inference__wrapped_model_6662417Encoder_input"
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
Iserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ó
Otrace_02Ö
/__inference_Flatten_layer_layer_call_fn_6662926¢
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
 zOtrace_0

Ptrace_02ñ
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662932¢
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
 zPtrace_0
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
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ô
Vtrace_02×
0__inference_Hidden_layer_1_layer_call_fn_6662941¢
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
 zVtrace_0

Wtrace_02ò
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662952¢
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
 zWtrace_0
):'
2Hidden_layer_1/kernel
": 2Hidden_layer_1/bias
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
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ô
]trace_02×
0__inference_Hidden_layer_2_layer_call_fn_6662961¢
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
 z]trace_0

^trace_02ò
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662972¢
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
 z^trace_0
(:&	d2Hidden_layer_2/kernel
!:d2Hidden_layer_2/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
ð
dtrace_02Ó
,__inference_Mean_layer_layer_call_fn_6662981¢
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
 zdtrace_0

etrace_02î
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662991¢
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
 zetrace_0
#:!d 2Mean_layer/kernel
: 2Mean_layer/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
ô
ktrace_02×
0__inference_Variance_layer_layer_call_fn_6663000¢
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
 zktrace_0

ltrace_02ò
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6663010¢
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
 zltrace_0
':%d 2Variance_layer/kernel
!: 2Variance_layer/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ô
rtrace_02×
0__inference_Encoder_output_layer_call_fn_6663016¢
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
 zrtrace_0

strace_02ò
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6663032¢
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
 zstrace_0
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bÿ
)__inference_Encoder_layer_call_fn_6662542Encoder_input"À
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
)__inference_Encoder_layer_call_fn_6662806inputs"À
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
)__inference_Encoder_layer_call_fn_6662831inputs"À
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
)__inference_Encoder_layer_call_fn_6662698Encoder_input"À
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6662876inputs"À
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6662921inputs"À
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6662726Encoder_input"À
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6662754Encoder_input"À
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
%__inference_signature_wrapper_6662781Encoder_input"
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
ãBà
/__inference_Flatten_layer_layer_call_fn_6662926inputs"¢
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
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662932inputs"¢
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
0__inference_Hidden_layer_1_layer_call_fn_6662941inputs"¢
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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662952inputs"¢
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
0__inference_Hidden_layer_2_layer_call_fn_6662961inputs"¢
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
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662972inputs"¢
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
àBÝ
,__inference_Mean_layer_layer_call_fn_6662981inputs"¢
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
ûBø
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662991inputs"¢
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
0__inference_Variance_layer_layer_call_fn_6663000inputs"¢
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
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6663010inputs"¢
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
ðBí
0__inference_Encoder_output_layer_call_fn_6663016inputs/0inputs/1"¢
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
B
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6663032inputs/0inputs/1"¢
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
 
D__inference_Encoder_layer_call_and_return_conditional_losses_6662726º$%,-45B¢?
8¢5
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿ 

0/1ÿÿÿÿÿÿÿÿÿ 

0/2ÿÿÿÿÿÿÿÿÿ 
 
D__inference_Encoder_layer_call_and_return_conditional_losses_6662754º$%,-45B¢?
8¢5
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿ 

0/1ÿÿÿÿÿÿÿÿÿ 

0/2ÿÿÿÿÿÿÿÿÿ 
 ü
D__inference_Encoder_layer_call_and_return_conditional_losses_6662876³$%,-45;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿ 

0/1ÿÿÿÿÿÿÿÿÿ 

0/2ÿÿÿÿÿÿÿÿÿ 
 ü
D__inference_Encoder_layer_call_and_return_conditional_losses_6662921³$%,-45;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿ 

0/1ÿÿÿÿÿÿÿÿÿ 

0/2ÿÿÿÿÿÿÿÿÿ 
 Ø
)__inference_Encoder_layer_call_fn_6662542ª$%,-45B¢?
8¢5
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ZW

0ÿÿÿÿÿÿÿÿÿ 

1ÿÿÿÿÿÿÿÿÿ 

2ÿÿÿÿÿÿÿÿÿ Ø
)__inference_Encoder_layer_call_fn_6662698ª$%,-45B¢?
8¢5
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ZW

0ÿÿÿÿÿÿÿÿÿ 

1ÿÿÿÿÿÿÿÿÿ 

2ÿÿÿÿÿÿÿÿÿ Ñ
)__inference_Encoder_layer_call_fn_6662806£$%,-45;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ZW

0ÿÿÿÿÿÿÿÿÿ 

1ÿÿÿÿÿÿÿÿÿ 

2ÿÿÿÿÿÿÿÿÿ Ñ
)__inference_Encoder_layer_call_fn_6662831£$%,-45;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ZW

0ÿÿÿÿÿÿÿÿÿ 

1ÿÿÿÿÿÿÿÿÿ 

2ÿÿÿÿÿÿÿÿÿ Ó
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6663032Z¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ 
"
inputs/1ÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ª
0__inference_Encoder_output_layer_call_fn_6663016vZ¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ 
"
inputs/1ÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ «
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6662932]3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_Flatten_layer_layer_call_fn_6662926P3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ­
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6662952^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_Hidden_layer_1_layer_call_fn_6662941Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¬
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6662972]$%0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
0__inference_Hidden_layer_2_layer_call_fn_6662961P$%0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿd§
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6662991\,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_Mean_layer_layer_call_fn_6662981O,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ «
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6663010\45/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
0__inference_Variance_layer_layer_call_fn_6663000O45/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ  
"__inference__wrapped_model_6662417ù$%,-45:¢7
0¢-
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
ª "°ª¬
:
Encoder_output(%
Encoder_outputÿÿÿÿÿÿÿÿÿ 
2

Mean_layer$!

Mean_layerÿÿÿÿÿÿÿÿÿ 
:
Variance_layer(%
Variance_layerÿÿÿÿÿÿÿÿÿ ´
%__inference_signature_wrapper_6662781$%,-45K¢H
¢ 
Aª>
<
Encoder_input+(
Encoder_inputÿÿÿÿÿÿÿÿÿ"°ª¬
:
Encoder_output(%
Encoder_outputÿÿÿÿÿÿÿÿÿ 
2

Mean_layer$!

Mean_layerÿÿÿÿÿÿÿÿÿ 
:
Variance_layer(%
Variance_layerÿÿÿÿÿÿÿÿÿ 