??

??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
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
<
Selu
features"T
activations"T"
Ttype:
2
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
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018Н	
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/Batchnorm_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/Batchnorm_2/beta/v
?
+Adam/Batchnorm_2/beta/v/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_2/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/Batchnorm_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/Batchnorm_2/gamma/v
?
,Adam/Batchnorm_2/gamma/v/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_2/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/Hidden_layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/Hidden_layer_2/bias/v
?
.Adam/Hidden_layer_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/Hidden_layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/Hidden_layer_2/kernel/v
?
0Adam/Hidden_layer_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/Batchnorm_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/Batchnorm_1/beta/v
?
+Adam/Batchnorm_1/beta/v/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_1/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/Batchnorm_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/Batchnorm_1/gamma/v
?
,Adam/Batchnorm_1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_1/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/Hidden_layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/Hidden_layer_1/bias/v
?
.Adam/Hidden_layer_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/Hidden_layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*-
shared_nameAdam/Hidden_layer_1/kernel/v
?
0Adam/Hidden_layer_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/kernel/v*
_output_shapes
:	 ?*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/Batchnorm_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/Batchnorm_2/beta/m
?
+Adam/Batchnorm_2/beta/m/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_2/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/Batchnorm_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/Batchnorm_2/gamma/m
?
,Adam/Batchnorm_2/gamma/m/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_2/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/Hidden_layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/Hidden_layer_2/bias/m
?
.Adam/Hidden_layer_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/Hidden_layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/Hidden_layer_2/kernel/m
?
0Adam/Hidden_layer_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/Batchnorm_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/Batchnorm_1/beta/m
?
+Adam/Batchnorm_1/beta/m/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_1/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/Batchnorm_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/Batchnorm_1/gamma/m
?
,Adam/Batchnorm_1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_1/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/Hidden_layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/Hidden_layer_1/bias/m
?
.Adam/Hidden_layer_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/Hidden_layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*-
shared_nameAdam/Hidden_layer_1/kernel/m
?
0Adam/Hidden_layer_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/kernel/m*
_output_shapes
:	 ?*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?*
dtype0
?
Batchnorm_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameBatchnorm_2/moving_variance
?
/Batchnorm_2/moving_variance/Read/ReadVariableOpReadVariableOpBatchnorm_2/moving_variance*
_output_shapes	
:?*
dtype0
?
Batchnorm_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameBatchnorm_2/moving_mean
?
+Batchnorm_2/moving_mean/Read/ReadVariableOpReadVariableOpBatchnorm_2/moving_mean*
_output_shapes	
:?*
dtype0
y
Batchnorm_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameBatchnorm_2/beta
r
$Batchnorm_2/beta/Read/ReadVariableOpReadVariableOpBatchnorm_2/beta*
_output_shapes	
:?*
dtype0
{
Batchnorm_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameBatchnorm_2/gamma
t
%Batchnorm_2/gamma/Read/ReadVariableOpReadVariableOpBatchnorm_2/gamma*
_output_shapes	
:?*
dtype0

Hidden_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameHidden_layer_2/bias
x
'Hidden_layer_2/bias/Read/ReadVariableOpReadVariableOpHidden_layer_2/bias*
_output_shapes	
:?*
dtype0
?
Hidden_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameHidden_layer_2/kernel
?
)Hidden_layer_2/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_2/kernel* 
_output_shapes
:
??*
dtype0
?
Batchnorm_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameBatchnorm_1/moving_variance
?
/Batchnorm_1/moving_variance/Read/ReadVariableOpReadVariableOpBatchnorm_1/moving_variance*
_output_shapes	
:?*
dtype0
?
Batchnorm_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameBatchnorm_1/moving_mean
?
+Batchnorm_1/moving_mean/Read/ReadVariableOpReadVariableOpBatchnorm_1/moving_mean*
_output_shapes	
:?*
dtype0
y
Batchnorm_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameBatchnorm_1/beta
r
$Batchnorm_1/beta/Read/ReadVariableOpReadVariableOpBatchnorm_1/beta*
_output_shapes	
:?*
dtype0
{
Batchnorm_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameBatchnorm_1/gamma
t
%Batchnorm_1/gamma/Read/ReadVariableOpReadVariableOpBatchnorm_1/gamma*
_output_shapes	
:?*
dtype0

Hidden_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameHidden_layer_1/bias
x
'Hidden_layer_1/bias/Read/ReadVariableOpReadVariableOpHidden_layer_1/bias*
_output_shapes	
:?*
dtype0
?
Hidden_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*&
shared_nameHidden_layer_1/kernel
?
)Hidden_layer_1/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_1/kernel*
_output_shapes
:	 ?*
dtype0

NoOpNoOp
?Q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?P
value?PB?P B?P
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 axis
	!gamma
"beta
#moving_mean
$moving_variance*
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
?
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias*
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9axis
	:gamma
;beta
<moving_mean
=moving_variance*
?
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses* 
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

Jkernel
Kbias*
j
0
1
!2
"3
#4
$5
16
27
:8
;9
<10
=11
J12
K13*
* 
* 
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Qtrace_0
Rtrace_1
Strace_2
Ttrace_3* 
6
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_3* 
* 
?
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratem?m?!m?"m?1m?2m?:m?;m?Jm?Km?v?v?!v?"v?1v?2v?:v?;v?Jv?Kv?*

^serving_default* 

0
1*
* 
* 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

dtrace_0* 

etrace_0* 
e_
VARIABLE_VALUEHidden_layer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEHidden_layer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
!0
"1
#2
$3*
* 
* 
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ktrace_0
ltrace_1* 

mtrace_0
ntrace_1* 
* 
`Z
VARIABLE_VALUEBatchnorm_1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEBatchnorm_1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEBatchnorm_1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEBatchnorm_1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

ttrace_0* 

utrace_0* 

10
21*
* 
* 
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
e_
VARIABLE_VALUEHidden_layer_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEHidden_layer_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
:0
;1
<2
=3*
* 
* 
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
`Z
VARIABLE_VALUEBatchnorm_2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEBatchnorm_2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEBatchnorm_2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEBatchnorm_2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

J0
K1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
j
0
1
!2
"3
#4
$5
16
27
:8
;9
<10
=11
J12
K13*
<
0
1
2
3
4
5
6
7*

?0*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
* 
* 
* 
* 
* 
* 
 
!0
"1
#2
$3*
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

10
21*
* 
* 
* 
* 
* 
* 
 
:0
;1
<2
=3*
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

J0
K1*
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/Hidden_layer_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/Hidden_layer_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/Batchnorm_1/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/Batchnorm_1/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/Hidden_layer_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/Hidden_layer_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/Batchnorm_2/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/Batchnorm_2/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/Hidden_layer_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/Hidden_layer_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/Batchnorm_1/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/Batchnorm_1/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/Hidden_layer_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/Hidden_layer_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/Batchnorm_2/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/Batchnorm_2/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
#serving_default_Input_DiscriminatorPlaceholder*'
_output_shapes
:????????? *
dtype0*
shape:????????? 
?
StatefulPartitionedCallStatefulPartitionedCall#serving_default_Input_DiscriminatorHidden_layer_1/kernelHidden_layer_1/biasBatchnorm_1/moving_varianceBatchnorm_1/gammaBatchnorm_1/moving_meanBatchnorm_1/betaHidden_layer_2/kernelHidden_layer_2/biasBatchnorm_2/moving_varianceBatchnorm_2/gammaBatchnorm_2/moving_meanBatchnorm_2/betadense/kernel
dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_6658369
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)Hidden_layer_1/kernel/Read/ReadVariableOp'Hidden_layer_1/bias/Read/ReadVariableOp%Batchnorm_1/gamma/Read/ReadVariableOp$Batchnorm_1/beta/Read/ReadVariableOp+Batchnorm_1/moving_mean/Read/ReadVariableOp/Batchnorm_1/moving_variance/Read/ReadVariableOp)Hidden_layer_2/kernel/Read/ReadVariableOp'Hidden_layer_2/bias/Read/ReadVariableOp%Batchnorm_2/gamma/Read/ReadVariableOp$Batchnorm_2/beta/Read/ReadVariableOp+Batchnorm_2/moving_mean/Read/ReadVariableOp/Batchnorm_2/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0Adam/Hidden_layer_1/kernel/m/Read/ReadVariableOp.Adam/Hidden_layer_1/bias/m/Read/ReadVariableOp,Adam/Batchnorm_1/gamma/m/Read/ReadVariableOp+Adam/Batchnorm_1/beta/m/Read/ReadVariableOp0Adam/Hidden_layer_2/kernel/m/Read/ReadVariableOp.Adam/Hidden_layer_2/bias/m/Read/ReadVariableOp,Adam/Batchnorm_2/gamma/m/Read/ReadVariableOp+Adam/Batchnorm_2/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/Hidden_layer_1/kernel/v/Read/ReadVariableOp.Adam/Hidden_layer_1/bias/v/Read/ReadVariableOp,Adam/Batchnorm_1/gamma/v/Read/ReadVariableOp+Adam/Batchnorm_1/beta/v/Read/ReadVariableOp0Adam/Hidden_layer_2/kernel/v/Read/ReadVariableOp.Adam/Hidden_layer_2/bias/v/Read/ReadVariableOp,Adam/Batchnorm_2/gamma/v/Read/ReadVariableOp+Adam/Batchnorm_2/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*6
Tin/
-2+	*
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
 __inference__traced_save_6658911
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_layer_1/kernelHidden_layer_1/biasBatchnorm_1/gammaBatchnorm_1/betaBatchnorm_1/moving_meanBatchnorm_1/moving_varianceHidden_layer_2/kernelHidden_layer_2/biasBatchnorm_2/gammaBatchnorm_2/betaBatchnorm_2/moving_meanBatchnorm_2/moving_variancedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/Hidden_layer_1/kernel/mAdam/Hidden_layer_1/bias/mAdam/Batchnorm_1/gamma/mAdam/Batchnorm_1/beta/mAdam/Hidden_layer_2/kernel/mAdam/Hidden_layer_2/bias/mAdam/Batchnorm_2/gamma/mAdam/Batchnorm_2/beta/mAdam/dense/kernel/mAdam/dense/bias/mAdam/Hidden_layer_1/kernel/vAdam/Hidden_layer_1/bias/vAdam/Batchnorm_1/gamma/vAdam/Batchnorm_1/beta/vAdam/Hidden_layer_2/kernel/vAdam/Hidden_layer_2/bias/vAdam/Batchnorm_2/gamma/vAdam/Batchnorm_2/beta/vAdam/dense/kernel/vAdam/dense/bias/v*5
Tin.
,2**
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
#__inference__traced_restore_6659044??
?

?
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657966

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6658573

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
'__inference_model_layer_call_fn_6658250
input_discriminator
unknown:	 ?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_discriminatorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6658186o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
'
_output_shapes
:????????? 
-
_user_specified_nameInput_Discriminator
?
?
-__inference_Batchnorm_2_layer_call_fn_6658682

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6657904p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_Batchnorm_2_layer_call_fn_6658695

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6657937p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6657986

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_6659044
file_prefix9
&assignvariableop_hidden_layer_1_kernel:	 ?5
&assignvariableop_1_hidden_layer_1_bias:	?3
$assignvariableop_2_batchnorm_1_gamma:	?2
#assignvariableop_3_batchnorm_1_beta:	?9
*assignvariableop_4_batchnorm_1_moving_mean:	?=
.assignvariableop_5_batchnorm_1_moving_variance:	?<
(assignvariableop_6_hidden_layer_2_kernel:
??5
&assignvariableop_7_hidden_layer_2_bias:	?3
$assignvariableop_8_batchnorm_2_gamma:	?2
#assignvariableop_9_batchnorm_2_beta:	?:
+assignvariableop_10_batchnorm_2_moving_mean:	?>
/assignvariableop_11_batchnorm_2_moving_variance:	?3
 assignvariableop_12_dense_kernel:	?,
assignvariableop_13_dense_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: C
0assignvariableop_21_adam_hidden_layer_1_kernel_m:	 ?=
.assignvariableop_22_adam_hidden_layer_1_bias_m:	?;
,assignvariableop_23_adam_batchnorm_1_gamma_m:	?:
+assignvariableop_24_adam_batchnorm_1_beta_m:	?D
0assignvariableop_25_adam_hidden_layer_2_kernel_m:
??=
.assignvariableop_26_adam_hidden_layer_2_bias_m:	?;
,assignvariableop_27_adam_batchnorm_2_gamma_m:	?:
+assignvariableop_28_adam_batchnorm_2_beta_m:	?:
'assignvariableop_29_adam_dense_kernel_m:	?3
%assignvariableop_30_adam_dense_bias_m:C
0assignvariableop_31_adam_hidden_layer_1_kernel_v:	 ?=
.assignvariableop_32_adam_hidden_layer_1_bias_v:	?;
,assignvariableop_33_adam_batchnorm_1_gamma_v:	?:
+assignvariableop_34_adam_batchnorm_1_beta_v:	?D
0assignvariableop_35_adam_hidden_layer_2_kernel_v:
??=
.assignvariableop_36_adam_hidden_layer_2_bias_v:	?;
,assignvariableop_37_adam_batchnorm_2_gamma_v:	?:
+assignvariableop_38_adam_batchnorm_2_beta_v:	?:
'assignvariableop_39_adam_dense_kernel_v:	?3
%assignvariableop_40_adam_dense_bias_v:
identity_42??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp&assignvariableop_hidden_layer_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_batchnorm_1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_batchnorm_1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_batchnorm_1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batchnorm_1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp(assignvariableop_6_hidden_layer_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp&assignvariableop_7_hidden_layer_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_batchnorm_2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_batchnorm_2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_batchnorm_2_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batchnorm_2_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_hidden_layer_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp.assignvariableop_22_adam_hidden_layer_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_batchnorm_1_gamma_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_batchnorm_1_beta_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp0assignvariableop_25_adam_hidden_layer_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_hidden_layer_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_batchnorm_2_gamma_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_batchnorm_2_beta_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp%assignvariableop_30_adam_dense_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp0assignvariableop_31_adam_hidden_layer_1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp.assignvariableop_32_adam_hidden_layer_1_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_batchnorm_1_gamma_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_batchnorm_1_beta_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp0assignvariableop_35_adam_hidden_layer_2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp.assignvariableop_36_adam_hidden_layer_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_batchnorm_2_gamma_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_batchnorm_2_beta_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dense_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_42IdentityIdentity_41:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
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
?
?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6658735

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_dense_layer_call_and_return_conditional_losses_6658765

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6658649

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
B__inference_model_layer_call_and_return_conditional_losses_6658186

inputs)
hidden_layer_1_6658150:	 ?%
hidden_layer_1_6658152:	?"
batchnorm_1_6658155:	?"
batchnorm_1_6658157:	?"
batchnorm_1_6658159:	?"
batchnorm_1_6658161:	?*
hidden_layer_2_6658165:
??%
hidden_layer_2_6658167:	?"
batchnorm_2_6658170:	?"
batchnorm_2_6658172:	?"
batchnorm_2_6658174:	?"
batchnorm_2_6658176:	? 
dense_6658180:	?
dense_6658182:
identity??#Batchnorm_1/StatefulPartitionedCall?#Batchnorm_2/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_6658150hidden_layer_1_6658152*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657966?
#Batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0batchnorm_1_6658155batchnorm_1_6658157batchnorm_1_6658159batchnorm_1_6658161*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6657869?
LeakyLU_layer_1/PartitionedCallPartitionedCall,Batchnorm_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6657986?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall(LeakyLU_layer_1/PartitionedCall:output:0hidden_layer_2_6658165hidden_layer_2_6658167*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657999?
#Batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0batchnorm_2_6658170batchnorm_2_6658172batchnorm_2_6658174batchnorm_2_6658176*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6657937?
Leaky_layer_2/PartitionedCallPartitionedCall,Batchnorm_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658019?
dense/StatefulPartitionedCallStatefulPartitionedCall&Leaky_layer_2/PartitionedCall:output:0dense_6658180dense_6658182*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6658032u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^Batchnorm_1/StatefulPartitionedCall$^Batchnorm_2/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 2J
#Batchnorm_1/StatefulPartitionedCall#Batchnorm_1/StatefulPartitionedCall2J
#Batchnorm_2/StatefulPartitionedCall#Batchnorm_2/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?%
?
B__inference_model_layer_call_and_return_conditional_losses_6658328
input_discriminator)
hidden_layer_1_6658292:	 ?%
hidden_layer_1_6658294:	?"
batchnorm_1_6658297:	?"
batchnorm_1_6658299:	?"
batchnorm_1_6658301:	?"
batchnorm_1_6658303:	?*
hidden_layer_2_6658307:
??%
hidden_layer_2_6658309:	?"
batchnorm_2_6658312:	?"
batchnorm_2_6658314:	?"
batchnorm_2_6658316:	?"
batchnorm_2_6658318:	? 
dense_6658322:	?
dense_6658324:
identity??#Batchnorm_1/StatefulPartitionedCall?#Batchnorm_2/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput_discriminatorhidden_layer_1_6658292hidden_layer_1_6658294*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657966?
#Batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0batchnorm_1_6658297batchnorm_1_6658299batchnorm_1_6658301batchnorm_1_6658303*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6657869?
LeakyLU_layer_1/PartitionedCallPartitionedCall,Batchnorm_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6657986?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall(LeakyLU_layer_1/PartitionedCall:output:0hidden_layer_2_6658307hidden_layer_2_6658309*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657999?
#Batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0batchnorm_2_6658312batchnorm_2_6658314batchnorm_2_6658316batchnorm_2_6658318*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6657937?
Leaky_layer_2/PartitionedCallPartitionedCall,Batchnorm_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658019?
dense/StatefulPartitionedCallStatefulPartitionedCall&Leaky_layer_2/PartitionedCall:output:0dense_6658322dense_6658324*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6658032u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^Batchnorm_1/StatefulPartitionedCall$^Batchnorm_2/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 2J
#Batchnorm_1/StatefulPartitionedCall#Batchnorm_1/StatefulPartitionedCall2J
#Batchnorm_2/StatefulPartitionedCall#Batchnorm_2/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:\ X
'
_output_shapes
:????????? 
-
_user_specified_nameInput_Discriminator
?
?
0__inference_Hidden_layer_1_layer_call_fn_6658562

inputs
unknown:	 ?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657966p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657999

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658745

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_Batchnorm_1_layer_call_fn_6658586

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6657836p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_model_layer_call_fn_6658070
input_discriminator
unknown:	 ?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_discriminatorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6658039o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
'
_output_shapes
:????????? 
-
_user_specified_nameInput_Discriminator
?Q
?
"__inference__wrapped_model_6657812
input_discriminatorF
3model_hidden_layer_1_matmul_readvariableop_resource:	 ?C
4model_hidden_layer_1_biasadd_readvariableop_resource:	?B
3model_batchnorm_1_batchnorm_readvariableop_resource:	?F
7model_batchnorm_1_batchnorm_mul_readvariableop_resource:	?D
5model_batchnorm_1_batchnorm_readvariableop_1_resource:	?D
5model_batchnorm_1_batchnorm_readvariableop_2_resource:	?G
3model_hidden_layer_2_matmul_readvariableop_resource:
??C
4model_hidden_layer_2_biasadd_readvariableop_resource:	?B
3model_batchnorm_2_batchnorm_readvariableop_resource:	?F
7model_batchnorm_2_batchnorm_mul_readvariableop_resource:	?D
5model_batchnorm_2_batchnorm_readvariableop_1_resource:	?D
5model_batchnorm_2_batchnorm_readvariableop_2_resource:	?=
*model_dense_matmul_readvariableop_resource:	?9
+model_dense_biasadd_readvariableop_resource:
identity??*model/Batchnorm_1/batchnorm/ReadVariableOp?,model/Batchnorm_1/batchnorm/ReadVariableOp_1?,model/Batchnorm_1/batchnorm/ReadVariableOp_2?.model/Batchnorm_1/batchnorm/mul/ReadVariableOp?*model/Batchnorm_2/batchnorm/ReadVariableOp?,model/Batchnorm_2/batchnorm/ReadVariableOp_1?,model/Batchnorm_2/batchnorm/ReadVariableOp_2?.model/Batchnorm_2/batchnorm/mul/ReadVariableOp?+model/Hidden_layer_1/BiasAdd/ReadVariableOp?*model/Hidden_layer_1/MatMul/ReadVariableOp?+model/Hidden_layer_2/BiasAdd/ReadVariableOp?*model/Hidden_layer_2/MatMul/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?
*model/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp3model_hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0?
model/Hidden_layer_1/MatMulMatMulinput_discriminator2model/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+model/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp4model_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/Hidden_layer_1/BiasAddBiasAdd%model/Hidden_layer_1/MatMul:product:03model/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
model/Hidden_layer_1/SeluSelu%model/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*model/Batchnorm_1/batchnorm/ReadVariableOpReadVariableOp3model_batchnorm_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0f
!model/Batchnorm_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
model/Batchnorm_1/batchnorm/addAddV22model/Batchnorm_1/batchnorm/ReadVariableOp:value:0*model/Batchnorm_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?u
!model/Batchnorm_1/batchnorm/RsqrtRsqrt#model/Batchnorm_1/batchnorm/add:z:0*
T0*
_output_shapes	
:??
.model/Batchnorm_1/batchnorm/mul/ReadVariableOpReadVariableOp7model_batchnorm_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/Batchnorm_1/batchnorm/mulMul%model/Batchnorm_1/batchnorm/Rsqrt:y:06model/Batchnorm_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
!model/Batchnorm_1/batchnorm/mul_1Mul'model/Hidden_layer_1/Selu:activations:0#model/Batchnorm_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
,model/Batchnorm_1/batchnorm/ReadVariableOp_1ReadVariableOp5model_batchnorm_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
!model/Batchnorm_1/batchnorm/mul_2Mul4model/Batchnorm_1/batchnorm/ReadVariableOp_1:value:0#model/Batchnorm_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
,model/Batchnorm_1/batchnorm/ReadVariableOp_2ReadVariableOp5model_batchnorm_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
model/Batchnorm_1/batchnorm/subSub4model/Batchnorm_1/batchnorm/ReadVariableOp_2:value:0%model/Batchnorm_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
!model/Batchnorm_1/batchnorm/add_1AddV2%model/Batchnorm_1/batchnorm/mul_1:z:0#model/Batchnorm_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????}
model/LeakyLU_layer_1/LeakyRelu	LeakyRelu%model/Batchnorm_1/batchnorm/add_1:z:0*(
_output_shapes
:???????????
*model/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp3model_hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model/Hidden_layer_2/MatMulMatMul-model/LeakyLU_layer_1/LeakyRelu:activations:02model/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+model/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp4model_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/Hidden_layer_2/BiasAddBiasAdd%model/Hidden_layer_2/MatMul:product:03model/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
model/Hidden_layer_2/SeluSelu%model/Hidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*model/Batchnorm_2/batchnorm/ReadVariableOpReadVariableOp3model_batchnorm_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0f
!model/Batchnorm_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
model/Batchnorm_2/batchnorm/addAddV22model/Batchnorm_2/batchnorm/ReadVariableOp:value:0*model/Batchnorm_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?u
!model/Batchnorm_2/batchnorm/RsqrtRsqrt#model/Batchnorm_2/batchnorm/add:z:0*
T0*
_output_shapes	
:??
.model/Batchnorm_2/batchnorm/mul/ReadVariableOpReadVariableOp7model_batchnorm_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/Batchnorm_2/batchnorm/mulMul%model/Batchnorm_2/batchnorm/Rsqrt:y:06model/Batchnorm_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
!model/Batchnorm_2/batchnorm/mul_1Mul'model/Hidden_layer_2/Selu:activations:0#model/Batchnorm_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
,model/Batchnorm_2/batchnorm/ReadVariableOp_1ReadVariableOp5model_batchnorm_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
!model/Batchnorm_2/batchnorm/mul_2Mul4model/Batchnorm_2/batchnorm/ReadVariableOp_1:value:0#model/Batchnorm_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
,model/Batchnorm_2/batchnorm/ReadVariableOp_2ReadVariableOp5model_batchnorm_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
model/Batchnorm_2/batchnorm/subSub4model/Batchnorm_2/batchnorm/ReadVariableOp_2:value:0%model/Batchnorm_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
!model/Batchnorm_2/batchnorm/add_1AddV2%model/Batchnorm_2/batchnorm/mul_1:z:0#model/Batchnorm_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????{
model/Leaky_layer_2/LeakyRelu	LeakyRelu%model/Batchnorm_2/batchnorm/add_1:z:0*(
_output_shapes
:???????????
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model/dense/MatMulMatMul+model/Leaky_layer_2/LeakyRelu:activations:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
model/dense/SigmoidSigmoidmodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????f
IdentityIdentitymodel/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp+^model/Batchnorm_1/batchnorm/ReadVariableOp-^model/Batchnorm_1/batchnorm/ReadVariableOp_1-^model/Batchnorm_1/batchnorm/ReadVariableOp_2/^model/Batchnorm_1/batchnorm/mul/ReadVariableOp+^model/Batchnorm_2/batchnorm/ReadVariableOp-^model/Batchnorm_2/batchnorm/ReadVariableOp_1-^model/Batchnorm_2/batchnorm/ReadVariableOp_2/^model/Batchnorm_2/batchnorm/mul/ReadVariableOp,^model/Hidden_layer_1/BiasAdd/ReadVariableOp+^model/Hidden_layer_1/MatMul/ReadVariableOp,^model/Hidden_layer_2/BiasAdd/ReadVariableOp+^model/Hidden_layer_2/MatMul/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 2X
*model/Batchnorm_1/batchnorm/ReadVariableOp*model/Batchnorm_1/batchnorm/ReadVariableOp2\
,model/Batchnorm_1/batchnorm/ReadVariableOp_1,model/Batchnorm_1/batchnorm/ReadVariableOp_12\
,model/Batchnorm_1/batchnorm/ReadVariableOp_2,model/Batchnorm_1/batchnorm/ReadVariableOp_22`
.model/Batchnorm_1/batchnorm/mul/ReadVariableOp.model/Batchnorm_1/batchnorm/mul/ReadVariableOp2X
*model/Batchnorm_2/batchnorm/ReadVariableOp*model/Batchnorm_2/batchnorm/ReadVariableOp2\
,model/Batchnorm_2/batchnorm/ReadVariableOp_1,model/Batchnorm_2/batchnorm/ReadVariableOp_12\
,model/Batchnorm_2/batchnorm/ReadVariableOp_2,model/Batchnorm_2/batchnorm/ReadVariableOp_22`
.model/Batchnorm_2/batchnorm/mul/ReadVariableOp.model/Batchnorm_2/batchnorm/mul/ReadVariableOp2Z
+model/Hidden_layer_1/BiasAdd/ReadVariableOp+model/Hidden_layer_1/BiasAdd/ReadVariableOp2X
*model/Hidden_layer_1/MatMul/ReadVariableOp*model/Hidden_layer_1/MatMul/ReadVariableOp2Z
+model/Hidden_layer_2/BiasAdd/ReadVariableOp+model/Hidden_layer_2/BiasAdd/ReadVariableOp2X
*model/Hidden_layer_2/MatMul/ReadVariableOp*model/Hidden_layer_2/MatMul/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp:\ X
'
_output_shapes
:????????? 
-
_user_specified_nameInput_Discriminator
?
?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6657904

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_model_layer_call_fn_6658402

inputs
unknown:	 ?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6658039o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6658669

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6658715

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
B__inference_model_layer_call_and_return_conditional_losses_6658289
input_discriminator)
hidden_layer_1_6658253:	 ?%
hidden_layer_1_6658255:	?"
batchnorm_1_6658258:	?"
batchnorm_1_6658260:	?"
batchnorm_1_6658262:	?"
batchnorm_1_6658264:	?*
hidden_layer_2_6658268:
??%
hidden_layer_2_6658270:	?"
batchnorm_2_6658273:	?"
batchnorm_2_6658275:	?"
batchnorm_2_6658277:	?"
batchnorm_2_6658279:	? 
dense_6658283:	?
dense_6658285:
identity??#Batchnorm_1/StatefulPartitionedCall?#Batchnorm_2/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput_discriminatorhidden_layer_1_6658253hidden_layer_1_6658255*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657966?
#Batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0batchnorm_1_6658258batchnorm_1_6658260batchnorm_1_6658262batchnorm_1_6658264*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6657836?
LeakyLU_layer_1/PartitionedCallPartitionedCall,Batchnorm_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6657986?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall(LeakyLU_layer_1/PartitionedCall:output:0hidden_layer_2_6658268hidden_layer_2_6658270*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657999?
#Batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0batchnorm_2_6658273batchnorm_2_6658275batchnorm_2_6658277batchnorm_2_6658279*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6657904?
Leaky_layer_2/PartitionedCallPartitionedCall,Batchnorm_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658019?
dense/StatefulPartitionedCallStatefulPartitionedCall&Leaky_layer_2/PartitionedCall:output:0dense_6658283dense_6658285*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6658032u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^Batchnorm_1/StatefulPartitionedCall$^Batchnorm_2/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 2J
#Batchnorm_1/StatefulPartitionedCall#Batchnorm_1/StatefulPartitionedCall2J
#Batchnorm_2/StatefulPartitionedCall#Batchnorm_2/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:\ X
'
_output_shapes
:????????? 
-
_user_specified_nameInput_Discriminator
?
?
'__inference_dense_layer_call_fn_6658754

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6658032o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
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
?
?
-__inference_Batchnorm_1_layer_call_fn_6658599

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6657869p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_dense_layer_call_and_return_conditional_losses_6658032

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?U
?
 __inference__traced_save_6658911
file_prefix4
0savev2_hidden_layer_1_kernel_read_readvariableop2
.savev2_hidden_layer_1_bias_read_readvariableop0
,savev2_batchnorm_1_gamma_read_readvariableop/
+savev2_batchnorm_1_beta_read_readvariableop6
2savev2_batchnorm_1_moving_mean_read_readvariableop:
6savev2_batchnorm_1_moving_variance_read_readvariableop4
0savev2_hidden_layer_2_kernel_read_readvariableop2
.savev2_hidden_layer_2_bias_read_readvariableop0
,savev2_batchnorm_2_gamma_read_readvariableop/
+savev2_batchnorm_2_beta_read_readvariableop6
2savev2_batchnorm_2_moving_mean_read_readvariableop:
6savev2_batchnorm_2_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_adam_hidden_layer_1_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer_1_bias_m_read_readvariableop7
3savev2_adam_batchnorm_1_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_1_beta_m_read_readvariableop;
7savev2_adam_hidden_layer_2_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer_2_bias_m_read_readvariableop7
3savev2_adam_batchnorm_2_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_2_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop;
7savev2_adam_hidden_layer_1_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer_1_bias_v_read_readvariableop7
3savev2_adam_batchnorm_1_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_1_beta_v_read_readvariableop;
7savev2_adam_hidden_layer_2_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer_2_bias_v_read_readvariableop7
3savev2_adam_batchnorm_2_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_2_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer_1_kernel_read_readvariableop.savev2_hidden_layer_1_bias_read_readvariableop,savev2_batchnorm_1_gamma_read_readvariableop+savev2_batchnorm_1_beta_read_readvariableop2savev2_batchnorm_1_moving_mean_read_readvariableop6savev2_batchnorm_1_moving_variance_read_readvariableop0savev2_hidden_layer_2_kernel_read_readvariableop.savev2_hidden_layer_2_bias_read_readvariableop,savev2_batchnorm_2_gamma_read_readvariableop+savev2_batchnorm_2_beta_read_readvariableop2savev2_batchnorm_2_moving_mean_read_readvariableop6savev2_batchnorm_2_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_adam_hidden_layer_1_kernel_m_read_readvariableop5savev2_adam_hidden_layer_1_bias_m_read_readvariableop3savev2_adam_batchnorm_1_gamma_m_read_readvariableop2savev2_adam_batchnorm_1_beta_m_read_readvariableop7savev2_adam_hidden_layer_2_kernel_m_read_readvariableop5savev2_adam_hidden_layer_2_bias_m_read_readvariableop3savev2_adam_batchnorm_2_gamma_m_read_readvariableop2savev2_adam_batchnorm_2_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_hidden_layer_1_kernel_v_read_readvariableop5savev2_adam_hidden_layer_1_bias_v_read_readvariableop3savev2_adam_batchnorm_1_gamma_v_read_readvariableop2savev2_adam_batchnorm_1_beta_v_read_readvariableop7savev2_adam_hidden_layer_2_kernel_v_read_readvariableop5savev2_adam_hidden_layer_2_bias_v_read_readvariableop3savev2_adam_batchnorm_2_gamma_v_read_readvariableop2savev2_adam_batchnorm_2_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	 ?:?:?:?:?:?:
??:?:?:?:?:?:	?:: : : : : : : :	 ?:?:?:?:
??:?:?:?:	?::	 ?:?:?:?:
??:?:?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	 ?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 ?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::% !

_output_shapes
:	 ?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:%(!

_output_shapes
:	?: )

_output_shapes
::*

_output_shapes
: 
?
?
%__inference_signature_wrapper_6658369
input_discriminator
unknown:	 ?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_discriminatorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_6657812o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
'
_output_shapes
:????????? 
-
_user_specified_nameInput_Discriminator
?I
?
B__inference_model_layer_call_and_return_conditional_losses_6658494

inputs@
-hidden_layer_1_matmul_readvariableop_resource:	 ?=
.hidden_layer_1_biasadd_readvariableop_resource:	?<
-batchnorm_1_batchnorm_readvariableop_resource:	?@
1batchnorm_1_batchnorm_mul_readvariableop_resource:	?>
/batchnorm_1_batchnorm_readvariableop_1_resource:	?>
/batchnorm_1_batchnorm_readvariableop_2_resource:	?A
-hidden_layer_2_matmul_readvariableop_resource:
??=
.hidden_layer_2_biasadd_readvariableop_resource:	?<
-batchnorm_2_batchnorm_readvariableop_resource:	?@
1batchnorm_2_batchnorm_mul_readvariableop_resource:	?>
/batchnorm_2_batchnorm_readvariableop_1_resource:	?>
/batchnorm_2_batchnorm_readvariableop_2_resource:	?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??$Batchnorm_1/batchnorm/ReadVariableOp?&Batchnorm_1/batchnorm/ReadVariableOp_1?&Batchnorm_1/batchnorm/ReadVariableOp_2?(Batchnorm_1/batchnorm/mul/ReadVariableOp?$Batchnorm_2/batchnorm/ReadVariableOp?&Batchnorm_2/batchnorm/ReadVariableOp_1?&Batchnorm_2/batchnorm/ReadVariableOp_2?(Batchnorm_2/batchnorm/mul/ReadVariableOp?%Hidden_layer_1/BiasAdd/ReadVariableOp?$Hidden_layer_1/MatMul/ReadVariableOp?%Hidden_layer_2/BiasAdd/ReadVariableOp?$Hidden_layer_2/MatMul/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0?
Hidden_layer_1/MatMulMatMulinputs,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????o
Hidden_layer_1/SeluSeluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
$Batchnorm_1/batchnorm/ReadVariableOpReadVariableOp-batchnorm_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0`
Batchnorm_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
Batchnorm_1/batchnorm/addAddV2,Batchnorm_1/batchnorm/ReadVariableOp:value:0$Batchnorm_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?i
Batchnorm_1/batchnorm/RsqrtRsqrtBatchnorm_1/batchnorm/add:z:0*
T0*
_output_shapes	
:??
(Batchnorm_1/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_1/batchnorm/mulMulBatchnorm_1/batchnorm/Rsqrt:y:00Batchnorm_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
Batchnorm_1/batchnorm/mul_1Mul!Hidden_layer_1/Selu:activations:0Batchnorm_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&Batchnorm_1/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_1/batchnorm/mul_2Mul.Batchnorm_1/batchnorm/ReadVariableOp_1:value:0Batchnorm_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
&Batchnorm_1/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_1/batchnorm/subSub.Batchnorm_1/batchnorm/ReadVariableOp_2:value:0Batchnorm_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
Batchnorm_1/batchnorm/add_1AddV2Batchnorm_1/batchnorm/mul_1:z:0Batchnorm_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????q
LeakyLU_layer_1/LeakyRelu	LeakyReluBatchnorm_1/batchnorm/add_1:z:0*(
_output_shapes
:???????????
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Hidden_layer_2/MatMulMatMul'LeakyLU_layer_1/LeakyRelu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????o
Hidden_layer_2/SeluSeluHidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
$Batchnorm_2/batchnorm/ReadVariableOpReadVariableOp-batchnorm_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0`
Batchnorm_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
Batchnorm_2/batchnorm/addAddV2,Batchnorm_2/batchnorm/ReadVariableOp:value:0$Batchnorm_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?i
Batchnorm_2/batchnorm/RsqrtRsqrtBatchnorm_2/batchnorm/add:z:0*
T0*
_output_shapes	
:??
(Batchnorm_2/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_2/batchnorm/mulMulBatchnorm_2/batchnorm/Rsqrt:y:00Batchnorm_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
Batchnorm_2/batchnorm/mul_1Mul!Hidden_layer_2/Selu:activations:0Batchnorm_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&Batchnorm_2/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_2/batchnorm/mul_2Mul.Batchnorm_2/batchnorm/ReadVariableOp_1:value:0Batchnorm_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
&Batchnorm_2/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_2/batchnorm/subSub.Batchnorm_2/batchnorm/ReadVariableOp_2:value:0Batchnorm_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
Batchnorm_2/batchnorm/add_1AddV2Batchnorm_2/batchnorm/mul_1:z:0Batchnorm_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????o
Leaky_layer_2/LeakyRelu	LeakyReluBatchnorm_2/batchnorm/add_1:z:0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMul%Leaky_layer_2/LeakyRelu:activations:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^Batchnorm_1/batchnorm/ReadVariableOp'^Batchnorm_1/batchnorm/ReadVariableOp_1'^Batchnorm_1/batchnorm/ReadVariableOp_2)^Batchnorm_1/batchnorm/mul/ReadVariableOp%^Batchnorm_2/batchnorm/ReadVariableOp'^Batchnorm_2/batchnorm/ReadVariableOp_1'^Batchnorm_2/batchnorm/ReadVariableOp_2)^Batchnorm_2/batchnorm/mul/ReadVariableOp&^Hidden_layer_1/BiasAdd/ReadVariableOp%^Hidden_layer_1/MatMul/ReadVariableOp&^Hidden_layer_2/BiasAdd/ReadVariableOp%^Hidden_layer_2/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 2L
$Batchnorm_1/batchnorm/ReadVariableOp$Batchnorm_1/batchnorm/ReadVariableOp2P
&Batchnorm_1/batchnorm/ReadVariableOp_1&Batchnorm_1/batchnorm/ReadVariableOp_12P
&Batchnorm_1/batchnorm/ReadVariableOp_2&Batchnorm_1/batchnorm/ReadVariableOp_22T
(Batchnorm_1/batchnorm/mul/ReadVariableOp(Batchnorm_1/batchnorm/mul/ReadVariableOp2L
$Batchnorm_2/batchnorm/ReadVariableOp$Batchnorm_2/batchnorm/ReadVariableOp2P
&Batchnorm_2/batchnorm/ReadVariableOp_1&Batchnorm_2/batchnorm/ReadVariableOp_12P
&Batchnorm_2/batchnorm/ReadVariableOp_2&Batchnorm_2/batchnorm/ReadVariableOp_22T
(Batchnorm_2/batchnorm/mul/ReadVariableOp(Batchnorm_2/batchnorm/mul/ReadVariableOp2N
%Hidden_layer_1/BiasAdd/ReadVariableOp%Hidden_layer_1/BiasAdd/ReadVariableOp2L
$Hidden_layer_1/MatMul/ReadVariableOp$Hidden_layer_1/MatMul/ReadVariableOp2N
%Hidden_layer_2/BiasAdd/ReadVariableOp%Hidden_layer_2/BiasAdd/ReadVariableOp2L
$Hidden_layer_2/MatMul/ReadVariableOp$Hidden_layer_2/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?I
?
B__inference_model_layer_call_and_return_conditional_losses_6658553

inputs@
-hidden_layer_1_matmul_readvariableop_resource:	 ?=
.hidden_layer_1_biasadd_readvariableop_resource:	?<
-batchnorm_1_batchnorm_readvariableop_resource:	?@
1batchnorm_1_batchnorm_mul_readvariableop_resource:	?>
/batchnorm_1_batchnorm_readvariableop_1_resource:	?>
/batchnorm_1_batchnorm_readvariableop_2_resource:	?A
-hidden_layer_2_matmul_readvariableop_resource:
??=
.hidden_layer_2_biasadd_readvariableop_resource:	?<
-batchnorm_2_batchnorm_readvariableop_resource:	?@
1batchnorm_2_batchnorm_mul_readvariableop_resource:	?>
/batchnorm_2_batchnorm_readvariableop_1_resource:	?>
/batchnorm_2_batchnorm_readvariableop_2_resource:	?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??$Batchnorm_1/batchnorm/ReadVariableOp?&Batchnorm_1/batchnorm/ReadVariableOp_1?&Batchnorm_1/batchnorm/ReadVariableOp_2?(Batchnorm_1/batchnorm/mul/ReadVariableOp?$Batchnorm_2/batchnorm/ReadVariableOp?&Batchnorm_2/batchnorm/ReadVariableOp_1?&Batchnorm_2/batchnorm/ReadVariableOp_2?(Batchnorm_2/batchnorm/mul/ReadVariableOp?%Hidden_layer_1/BiasAdd/ReadVariableOp?$Hidden_layer_1/MatMul/ReadVariableOp?%Hidden_layer_2/BiasAdd/ReadVariableOp?$Hidden_layer_2/MatMul/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype0?
Hidden_layer_1/MatMulMatMulinputs,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????o
Hidden_layer_1/SeluSeluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
$Batchnorm_1/batchnorm/ReadVariableOpReadVariableOp-batchnorm_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0`
Batchnorm_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
Batchnorm_1/batchnorm/addAddV2,Batchnorm_1/batchnorm/ReadVariableOp:value:0$Batchnorm_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?i
Batchnorm_1/batchnorm/RsqrtRsqrtBatchnorm_1/batchnorm/add:z:0*
T0*
_output_shapes	
:??
(Batchnorm_1/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_1/batchnorm/mulMulBatchnorm_1/batchnorm/Rsqrt:y:00Batchnorm_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
Batchnorm_1/batchnorm/mul_1Mul!Hidden_layer_1/Selu:activations:0Batchnorm_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&Batchnorm_1/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_1/batchnorm/mul_2Mul.Batchnorm_1/batchnorm/ReadVariableOp_1:value:0Batchnorm_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
&Batchnorm_1/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_1/batchnorm/subSub.Batchnorm_1/batchnorm/ReadVariableOp_2:value:0Batchnorm_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
Batchnorm_1/batchnorm/add_1AddV2Batchnorm_1/batchnorm/mul_1:z:0Batchnorm_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????q
LeakyLU_layer_1/LeakyRelu	LeakyReluBatchnorm_1/batchnorm/add_1:z:0*(
_output_shapes
:???????????
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Hidden_layer_2/MatMulMatMul'LeakyLU_layer_1/LeakyRelu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????o
Hidden_layer_2/SeluSeluHidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
$Batchnorm_2/batchnorm/ReadVariableOpReadVariableOp-batchnorm_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0`
Batchnorm_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
Batchnorm_2/batchnorm/addAddV2,Batchnorm_2/batchnorm/ReadVariableOp:value:0$Batchnorm_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?i
Batchnorm_2/batchnorm/RsqrtRsqrtBatchnorm_2/batchnorm/add:z:0*
T0*
_output_shapes	
:??
(Batchnorm_2/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_2/batchnorm/mulMulBatchnorm_2/batchnorm/Rsqrt:y:00Batchnorm_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
Batchnorm_2/batchnorm/mul_1Mul!Hidden_layer_2/Selu:activations:0Batchnorm_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&Batchnorm_2/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_2/batchnorm/mul_2Mul.Batchnorm_2/batchnorm/ReadVariableOp_1:value:0Batchnorm_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
&Batchnorm_2/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
Batchnorm_2/batchnorm/subSub.Batchnorm_2/batchnorm/ReadVariableOp_2:value:0Batchnorm_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
Batchnorm_2/batchnorm/add_1AddV2Batchnorm_2/batchnorm/mul_1:z:0Batchnorm_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????o
Leaky_layer_2/LeakyRelu	LeakyReluBatchnorm_2/batchnorm/add_1:z:0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMul%Leaky_layer_2/LeakyRelu:activations:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^Batchnorm_1/batchnorm/ReadVariableOp'^Batchnorm_1/batchnorm/ReadVariableOp_1'^Batchnorm_1/batchnorm/ReadVariableOp_2)^Batchnorm_1/batchnorm/mul/ReadVariableOp%^Batchnorm_2/batchnorm/ReadVariableOp'^Batchnorm_2/batchnorm/ReadVariableOp_1'^Batchnorm_2/batchnorm/ReadVariableOp_2)^Batchnorm_2/batchnorm/mul/ReadVariableOp&^Hidden_layer_1/BiasAdd/ReadVariableOp%^Hidden_layer_1/MatMul/ReadVariableOp&^Hidden_layer_2/BiasAdd/ReadVariableOp%^Hidden_layer_2/MatMul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 2L
$Batchnorm_1/batchnorm/ReadVariableOp$Batchnorm_1/batchnorm/ReadVariableOp2P
&Batchnorm_1/batchnorm/ReadVariableOp_1&Batchnorm_1/batchnorm/ReadVariableOp_12P
&Batchnorm_1/batchnorm/ReadVariableOp_2&Batchnorm_1/batchnorm/ReadVariableOp_22T
(Batchnorm_1/batchnorm/mul/ReadVariableOp(Batchnorm_1/batchnorm/mul/ReadVariableOp2L
$Batchnorm_2/batchnorm/ReadVariableOp$Batchnorm_2/batchnorm/ReadVariableOp2P
&Batchnorm_2/batchnorm/ReadVariableOp_1&Batchnorm_2/batchnorm/ReadVariableOp_12P
&Batchnorm_2/batchnorm/ReadVariableOp_2&Batchnorm_2/batchnorm/ReadVariableOp_22T
(Batchnorm_2/batchnorm/mul/ReadVariableOp(Batchnorm_2/batchnorm/mul/ReadVariableOp2N
%Hidden_layer_1/BiasAdd/ReadVariableOp%Hidden_layer_1/BiasAdd/ReadVariableOp2L
$Hidden_layer_1/MatMul/ReadVariableOp$Hidden_layer_1/MatMul/ReadVariableOp2N
%Hidden_layer_2/BiasAdd/ReadVariableOp%Hidden_layer_2/BiasAdd/ReadVariableOp2L
$Hidden_layer_2/MatMul/ReadVariableOp$Hidden_layer_2/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
0__inference_Hidden_layer_2_layer_call_fn_6658658

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657999p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
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
?
K
/__inference_Leaky_layer_2_layer_call_fn_6658740

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
GPU 2J 8? *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658019a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
B__inference_model_layer_call_and_return_conditional_losses_6658039

inputs)
hidden_layer_1_6657967:	 ?%
hidden_layer_1_6657969:	?"
batchnorm_1_6657972:	?"
batchnorm_1_6657974:	?"
batchnorm_1_6657976:	?"
batchnorm_1_6657978:	?*
hidden_layer_2_6658000:
??%
hidden_layer_2_6658002:	?"
batchnorm_2_6658005:	?"
batchnorm_2_6658007:	?"
batchnorm_2_6658009:	?"
batchnorm_2_6658011:	? 
dense_6658033:	?
dense_6658035:
identity??#Batchnorm_1/StatefulPartitionedCall?#Batchnorm_2/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_6657967hidden_layer_1_6657969*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657966?
#Batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0batchnorm_1_6657972batchnorm_1_6657974batchnorm_1_6657976batchnorm_1_6657978*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6657836?
LeakyLU_layer_1/PartitionedCallPartitionedCall,Batchnorm_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6657986?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall(LeakyLU_layer_1/PartitionedCall:output:0hidden_layer_2_6658000hidden_layer_2_6658002*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657999?
#Batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0batchnorm_2_6658005batchnorm_2_6658007batchnorm_2_6658009batchnorm_2_6658011*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6657904?
Leaky_layer_2/PartitionedCallPartitionedCall,Batchnorm_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658019?
dense/StatefulPartitionedCallStatefulPartitionedCall&Leaky_layer_2/PartitionedCall:output:0dense_6658033dense_6658035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6658032u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^Batchnorm_1/StatefulPartitionedCall$^Batchnorm_2/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 2J
#Batchnorm_1/StatefulPartitionedCall#Batchnorm_1/StatefulPartitionedCall2J
#Batchnorm_2/StatefulPartitionedCall#Batchnorm_2/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
'__inference_model_layer_call_fn_6658435

inputs
unknown:	 ?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6658186o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:????????? : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
M
1__inference_LeakyLU_layer_1_layer_call_fn_6658644

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
GPU 2J 8? *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6657986a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658019

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6657937

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6657836

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6658639

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6658619

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6657869

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
Input_Discriminator<
%serving_default_Input_Discriminator:0????????? 9
dense0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 axis
	!gamma
"beta
#moving_mean
$moving_variance"
_tf_keras_layer
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
?
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias"
_tf_keras_layer
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9axis
	:gamma
;beta
<moving_mean
=moving_variance"
_tf_keras_layer
?
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
?
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

Jkernel
Kbias"
_tf_keras_layer
?
0
1
!2
"3
#4
$5
16
27
:8
;9
<10
=11
J12
K13"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Qtrace_0
Rtrace_1
Strace_2
Ttrace_32?
'__inference_model_layer_call_fn_6658070
'__inference_model_layer_call_fn_6658402
'__inference_model_layer_call_fn_6658435
'__inference_model_layer_call_fn_6658250?
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
 zQtrace_0zRtrace_1zStrace_2zTtrace_3
?
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_32?
B__inference_model_layer_call_and_return_conditional_losses_6658494
B__inference_model_layer_call_and_return_conditional_losses_6658553
B__inference_model_layer_call_and_return_conditional_losses_6658289
B__inference_model_layer_call_and_return_conditional_losses_6658328?
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
 zUtrace_0zVtrace_1zWtrace_2zXtrace_3
?B?
"__inference__wrapped_model_6657812Input_Discriminator"?
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
?
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratem?m?!m?"m?1m?2m?:m?;m?Jm?Km?v?v?!v?"v?1v?2v?:v?;v?Jv?Kv?"
	optimizer
,
^serving_default"
signature_map
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
dtrace_02?
0__inference_Hidden_layer_1_layer_call_fn_6658562?
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
 zdtrace_0
?
etrace_02?
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6658573?
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
 zetrace_0
(:&	 ?2Hidden_layer_1/kernel
": ?2Hidden_layer_1/bias
<
!0
"1
#2
$3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
ktrace_0
ltrace_12?
-__inference_Batchnorm_1_layer_call_fn_6658586
-__inference_Batchnorm_1_layer_call_fn_6658599?
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
 zktrace_0zltrace_1
?
mtrace_0
ntrace_12?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6658619
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6658639?
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
 zmtrace_0zntrace_1
 "
trackable_list_wrapper
 :?2Batchnorm_1/gamma
:?2Batchnorm_1/beta
(:&? (2Batchnorm_1/moving_mean
,:*? (2Batchnorm_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
?
ttrace_02?
1__inference_LeakyLU_layer_1_layer_call_fn_6658644?
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
 zttrace_0
?
utrace_02?
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6658649?
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
 zutrace_0
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?
{trace_02?
0__inference_Hidden_layer_2_layer_call_fn_6658658?
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
 z{trace_0
?
|trace_02?
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6658669?
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
 z|trace_0
):'
??2Hidden_layer_2/kernel
": ?2Hidden_layer_2/bias
<
:0
;1
<2
=3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
-__inference_Batchnorm_2_layer_call_fn_6658682
-__inference_Batchnorm_2_layer_call_fn_6658695?
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
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6658715
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6658735?
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
 z?trace_0z?trace_1
 "
trackable_list_wrapper
 :?2Batchnorm_2/gamma
:?2Batchnorm_2/beta
(:&? (2Batchnorm_2/moving_mean
,:*? (2Batchnorm_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_Leaky_layer_2_layer_call_fn_6658740?
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
 z?trace_0
?
?trace_02?
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658745?
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
 z?trace_0
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_dense_layer_call_fn_6658754?
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
 z?trace_0
?
?trace_02?
B__inference_dense_layer_call_and_return_conditional_losses_6658765?
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
 z?trace_0
:	?2dense/kernel
:2
dense/bias
?
0
1
!2
"3
#4
$5
16
27
:8
;9
<10
=11
J12
K13"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_model_layer_call_fn_6658070Input_Discriminator"?
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
?B?
'__inference_model_layer_call_fn_6658402inputs"?
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
?B?
'__inference_model_layer_call_fn_6658435inputs"?
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
?B?
'__inference_model_layer_call_fn_6658250Input_Discriminator"?
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
?B?
B__inference_model_layer_call_and_return_conditional_losses_6658494inputs"?
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
?B?
B__inference_model_layer_call_and_return_conditional_losses_6658553inputs"?
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
?B?
B__inference_model_layer_call_and_return_conditional_losses_6658289Input_Discriminator"?
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
?B?
B__inference_model_layer_call_and_return_conditional_losses_6658328Input_Discriminator"?
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
%__inference_signature_wrapper_6658369Input_Discriminator"?
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
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_Hidden_layer_1_layer_call_fn_6658562inputs"?
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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6658573inputs"?
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
<
!0
"1
#2
$3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_Batchnorm_1_layer_call_fn_6658586inputs"?
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
-__inference_Batchnorm_1_layer_call_fn_6658599inputs"?
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
?B?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6658619inputs"?
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
?B?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6658639inputs"?
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
?B?
1__inference_LeakyLU_layer_1_layer_call_fn_6658644inputs"?
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
?B?
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6658649inputs"?
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
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_Hidden_layer_2_layer_call_fn_6658658inputs"?
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
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6658669inputs"?
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
<
:0
;1
<2
=3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_Batchnorm_2_layer_call_fn_6658682inputs"?
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
-__inference_Batchnorm_2_layer_call_fn_6658695inputs"?
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
?B?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6658715inputs"?
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
?B?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6658735inputs"?
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
?B?
/__inference_Leaky_layer_2_layer_call_fn_6658740inputs"?
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
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658745inputs"?
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
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_dense_layer_call_fn_6658754inputs"?
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
B__inference_dense_layer_call_and_return_conditional_losses_6658765inputs"?
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
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
-:+	 ?2Adam/Hidden_layer_1/kernel/m
':%?2Adam/Hidden_layer_1/bias/m
%:#?2Adam/Batchnorm_1/gamma/m
$:"?2Adam/Batchnorm_1/beta/m
.:,
??2Adam/Hidden_layer_2/kernel/m
':%?2Adam/Hidden_layer_2/bias/m
%:#?2Adam/Batchnorm_2/gamma/m
$:"?2Adam/Batchnorm_2/beta/m
$:"	?2Adam/dense/kernel/m
:2Adam/dense/bias/m
-:+	 ?2Adam/Hidden_layer_1/kernel/v
':%?2Adam/Hidden_layer_1/bias/v
%:#?2Adam/Batchnorm_1/gamma/v
$:"?2Adam/Batchnorm_1/beta/v
.:,
??2Adam/Hidden_layer_2/kernel/v
':%?2Adam/Hidden_layer_2/bias/v
%:#?2Adam/Batchnorm_2/gamma/v
$:"?2Adam/Batchnorm_2/beta/v
$:"	?2Adam/dense/kernel/v
:2Adam/dense/bias/v?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6658619d$!#"4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6658639d$!#"4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_Batchnorm_1_layer_call_fn_6658586W$!#"4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_Batchnorm_1_layer_call_fn_6658599W$!#"4?1
*?'
!?
inputs??????????
p
? "????????????
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6658715d=:<;4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6658735d=:<;4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_Batchnorm_2_layer_call_fn_6658682W=:<;4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_Batchnorm_2_layer_call_fn_6658695W=:<;4?1
*?'
!?
inputs??????????
p
? "????????????
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6658573]/?,
%?"
 ?
inputs????????? 
? "&?#
?
0??????????
? ?
0__inference_Hidden_layer_1_layer_call_fn_6658562P/?,
%?"
 ?
inputs????????? 
? "????????????
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6658669^120?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_Hidden_layer_2_layer_call_fn_6658658Q120?-
&?#
!?
inputs??????????
? "????????????
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6658649Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
1__inference_LeakyLU_layer_1_layer_call_fn_6658644M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6658745Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_Leaky_layer_2_layer_call_fn_6658740M0?-
&?#
!?
inputs??????????
? "????????????
"__inference__wrapped_model_6657812}$!#"12=:<;JK<?9
2?/
-?*
Input_Discriminator????????? 
? "-?*
(
dense?
dense??????????
B__inference_dense_layer_call_and_return_conditional_losses_6658765]JK0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? {
'__inference_dense_layer_call_fn_6658754PJK0?-
&?#
!?
inputs??????????
? "???????????
B__inference_model_layer_call_and_return_conditional_losses_6658289}$!#"12=:<;JKD?A
:?7
-?*
Input_Discriminator????????? 
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_layer_call_and_return_conditional_losses_6658328}$!#"12=:<;JKD?A
:?7
-?*
Input_Discriminator????????? 
p

 
? "%?"
?
0?????????
? ?
B__inference_model_layer_call_and_return_conditional_losses_6658494p$!#"12=:<;JK7?4
-?*
 ?
inputs????????? 
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_layer_call_and_return_conditional_losses_6658553p$!#"12=:<;JK7?4
-?*
 ?
inputs????????? 
p

 
? "%?"
?
0?????????
? ?
'__inference_model_layer_call_fn_6658070p$!#"12=:<;JKD?A
:?7
-?*
Input_Discriminator????????? 
p 

 
? "???????????
'__inference_model_layer_call_fn_6658250p$!#"12=:<;JKD?A
:?7
-?*
Input_Discriminator????????? 
p

 
? "???????????
'__inference_model_layer_call_fn_6658402c$!#"12=:<;JK7?4
-?*
 ?
inputs????????? 
p 

 
? "???????????
'__inference_model_layer_call_fn_6658435c$!#"12=:<;JK7?4
-?*
 ?
inputs????????? 
p

 
? "???????????
%__inference_signature_wrapper_6658369?$!#"12=:<;JKS?P
? 
I?F
D
Input_Discriminator-?*
Input_Discriminator????????? "-?*
(
dense?
dense?????????