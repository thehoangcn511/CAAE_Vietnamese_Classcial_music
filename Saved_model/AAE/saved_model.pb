ؤ
ِإ
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
\
	LeakyRelu
features"T
activations"T"
alphafloat%حجL>"
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
ء
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
executor_typestring ?
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018
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

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	*
dtype0

Adam/Batchnorm_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/Batchnorm_2/beta/v

+Adam/Batchnorm_2/beta/v/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_2/beta/v*
_output_shapes	
:*
dtype0

Adam/Batchnorm_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Batchnorm_2/gamma/v

,Adam/Batchnorm_2/gamma/v/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_2/gamma/v*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/Hidden_layer_2/bias/v

.Adam/Hidden_layer_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/bias/v*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Hidden_layer_2/kernel/v

0Adam/Hidden_layer_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/kernel/v* 
_output_shapes
:
*
dtype0

Adam/Batchnorm_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/Batchnorm_1/beta/v

+Adam/Batchnorm_1/beta/v/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_1/beta/v*
_output_shapes	
:*
dtype0

Adam/Batchnorm_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Batchnorm_1/gamma/v

,Adam/Batchnorm_1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_1/gamma/v*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/Hidden_layer_1/bias/v

.Adam/Hidden_layer_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/bias/v*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *-
shared_nameAdam/Hidden_layer_1/kernel/v

0Adam/Hidden_layer_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/kernel/v*
_output_shapes
:	 *
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

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	*
dtype0

Adam/Batchnorm_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/Batchnorm_2/beta/m

+Adam/Batchnorm_2/beta/m/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_2/beta/m*
_output_shapes	
:*
dtype0

Adam/Batchnorm_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Batchnorm_2/gamma/m

,Adam/Batchnorm_2/gamma/m/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_2/gamma/m*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/Hidden_layer_2/bias/m

.Adam/Hidden_layer_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/bias/m*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Hidden_layer_2/kernel/m

0Adam/Hidden_layer_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/kernel/m* 
_output_shapes
:
*
dtype0

Adam/Batchnorm_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/Batchnorm_1/beta/m

+Adam/Batchnorm_1/beta/m/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_1/beta/m*
_output_shapes	
:*
dtype0

Adam/Batchnorm_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Batchnorm_1/gamma/m

,Adam/Batchnorm_1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/Batchnorm_1/gamma/m*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/Hidden_layer_1/bias/m

.Adam/Hidden_layer_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/bias/m*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *-
shared_nameAdam/Hidden_layer_1/kernel/m

0Adam/Hidden_layer_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/kernel/m*
_output_shapes
:	 *
dtype0

Adam/Variance_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/Variance_layer/bias/v

.Adam/Variance_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/Variance_layer/bias/v*
_output_shapes
: *
dtype0

Adam/Variance_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *-
shared_nameAdam/Variance_layer/kernel/v

0Adam/Variance_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Variance_layer/kernel/v*
_output_shapes

:d *
dtype0

Adam/Mean_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/Mean_layer/bias/v
}
*Adam/Mean_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/Mean_layer/bias/v*
_output_shapes
: *
dtype0

Adam/Mean_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *)
shared_nameAdam/Mean_layer/kernel/v

,Adam/Mean_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Mean_layer/kernel/v*
_output_shapes

:d *
dtype0

Adam/Hidden_layer_2/bias/v_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:d*-
shared_nameAdam/Hidden_layer_2/bias/v_1

0Adam/Hidden_layer_2/bias/v_1/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/bias/v_1*
_output_shapes
:d*
dtype0

Adam/Hidden_layer_2/kernel/v_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*/
shared_name Adam/Hidden_layer_2/kernel/v_1

2Adam/Hidden_layer_2/kernel/v_1/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/kernel/v_1*
_output_shapes
:	d*
dtype0

Adam/Hidden_layer_1/bias/v_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/Hidden_layer_1/bias/v_1

0Adam/Hidden_layer_1/bias/v_1/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/bias/v_1*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_1/kernel/v_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:
*/
shared_name Adam/Hidden_layer_1/kernel/v_1

2Adam/Hidden_layer_1/kernel/v_1/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/kernel/v_1* 
_output_shapes
:
*
dtype0

Adam/Variance_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/Variance_layer/bias/m

.Adam/Variance_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/Variance_layer/bias/m*
_output_shapes
: *
dtype0

Adam/Variance_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *-
shared_nameAdam/Variance_layer/kernel/m

0Adam/Variance_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Variance_layer/kernel/m*
_output_shapes

:d *
dtype0

Adam/Mean_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/Mean_layer/bias/m
}
*Adam/Mean_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/Mean_layer/bias/m*
_output_shapes
: *
dtype0

Adam/Mean_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *)
shared_nameAdam/Mean_layer/kernel/m

,Adam/Mean_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Mean_layer/kernel/m*
_output_shapes

:d *
dtype0

Adam/Hidden_layer_2/bias/m_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:d*-
shared_nameAdam/Hidden_layer_2/bias/m_1

0Adam/Hidden_layer_2/bias/m_1/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/bias/m_1*
_output_shapes
:d*
dtype0

Adam/Hidden_layer_2/kernel/m_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*/
shared_name Adam/Hidden_layer_2/kernel/m_1

2Adam/Hidden_layer_2/kernel/m_1/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/kernel/m_1*
_output_shapes
:	d*
dtype0

Adam/Hidden_layer_1/bias/m_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/Hidden_layer_1/bias/m_1

0Adam/Hidden_layer_1/bias/m_1/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/bias/m_1*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_1/kernel/m_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:
*/
shared_name Adam/Hidden_layer_1/kernel/m_1

2Adam/Hidden_layer_1/kernel/m_1/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/kernel/m_1* 
_output_shapes
:
*
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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
|
Adam/learning_rate_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/learning_rate_1
u
(Adam/learning_rate_1/Read/ReadVariableOpReadVariableOpAdam/learning_rate_1*
_output_shapes
: *
dtype0
l
Adam/decay_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/decay_1
e
 Adam/decay_1/Read/ReadVariableOpReadVariableOpAdam/decay_1*
_output_shapes
: *
dtype0
n
Adam/beta_2_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2_1
g
!Adam/beta_2_1/Read/ReadVariableOpReadVariableOpAdam/beta_2_1*
_output_shapes
: *
dtype0
n
Adam/beta_1_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1_1
g
!Adam/beta_1_1/Read/ReadVariableOpReadVariableOpAdam/beta_1_1*
_output_shapes
: *
dtype0
j
Adam/iter_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdam/iter_1
c
Adam/iter_1/Read/ReadVariableOpReadVariableOpAdam/iter_1*
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
shape:	*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	*
dtype0

Batchnorm_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameBatchnorm_2/moving_variance

/Batchnorm_2/moving_variance/Read/ReadVariableOpReadVariableOpBatchnorm_2/moving_variance*
_output_shapes	
:*
dtype0

Batchnorm_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameBatchnorm_2/moving_mean

+Batchnorm_2/moving_mean/Read/ReadVariableOpReadVariableOpBatchnorm_2/moving_mean*
_output_shapes	
:*
dtype0
y
Batchnorm_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameBatchnorm_2/beta
r
$Batchnorm_2/beta/Read/ReadVariableOpReadVariableOpBatchnorm_2/beta*
_output_shapes	
:*
dtype0
{
Batchnorm_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameBatchnorm_2/gamma
t
%Batchnorm_2/gamma/Read/ReadVariableOpReadVariableOpBatchnorm_2/gamma*
_output_shapes	
:*
dtype0

Hidden_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameHidden_layer_2/bias
x
'Hidden_layer_2/bias/Read/ReadVariableOpReadVariableOpHidden_layer_2/bias*
_output_shapes	
:*
dtype0

Hidden_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameHidden_layer_2/kernel

)Hidden_layer_2/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_2/kernel* 
_output_shapes
:
*
dtype0

Batchnorm_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameBatchnorm_1/moving_variance

/Batchnorm_1/moving_variance/Read/ReadVariableOpReadVariableOpBatchnorm_1/moving_variance*
_output_shapes	
:*
dtype0

Batchnorm_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameBatchnorm_1/moving_mean

+Batchnorm_1/moving_mean/Read/ReadVariableOpReadVariableOpBatchnorm_1/moving_mean*
_output_shapes	
:*
dtype0
y
Batchnorm_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameBatchnorm_1/beta
r
$Batchnorm_1/beta/Read/ReadVariableOpReadVariableOpBatchnorm_1/beta*
_output_shapes	
:*
dtype0
{
Batchnorm_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameBatchnorm_1/gamma
t
%Batchnorm_1/gamma/Read/ReadVariableOpReadVariableOpBatchnorm_1/gamma*
_output_shapes	
:*
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

Hidden_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *&
shared_nameHidden_layer_1/kernel

)Hidden_layer_1/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_1/kernel*
_output_shapes
:	 *
dtype0
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

Hidden_layer_2/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameHidden_layer_2/bias_1
{
)Hidden_layer_2/bias_1/Read/ReadVariableOpReadVariableOpHidden_layer_2/bias_1*
_output_shapes
:d*
dtype0

Hidden_layer_2/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*(
shared_nameHidden_layer_2/kernel_1

+Hidden_layer_2/kernel_1/Read/ReadVariableOpReadVariableOpHidden_layer_2/kernel_1*
_output_shapes
:	d*
dtype0

Hidden_layer_1/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameHidden_layer_1/bias_1
|
)Hidden_layer_1/bias_1/Read/ReadVariableOpReadVariableOpHidden_layer_1/bias_1*
_output_shapes	
:*
dtype0

Hidden_layer_1/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameHidden_layer_1/kernel_1

+Hidden_layer_1/kernel_1/Read/ReadVariableOpReadVariableOpHidden_layer_1/kernel_1* 
_output_shapes
:
*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
* 
س
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
 layer_with_weights-4
 layer-7
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'	optimizer*
?
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513
614
715
816
917
:18
;19
<20
=21*
<
(0
)1
*2
+3
,4
-5
.6
/7*
* 
?
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_3* 
6
Gtrace_0
Htrace_1
Itrace_2
Jtrace_3* 
* 
ل
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_rate(m?)m?*m?+m،,m­-m?.m?/m?(v?)v?*v?+v?,v?-v?.v?/v?*

Pserving_default* 

Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

(kernel
)bias*
?
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

*kernel
+bias*
?
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

,kernel
-bias*
?
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

.kernel
/bias*

o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 
<
(0
)1
*2
+3
,4
-5
.6
/7*
<
(0
)1
*2
+3
,4
-5
.6
/7*
* 

unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
8
~trace_0
trace_1
trace_2
trace_3* 
* 
،
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

0kernel
1bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	2gamma
3beta
4moving_mean
5moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
،
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

6kernel
7bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses
	?axis
	8gamma
9beta
:moving_mean
;moving_variance*

?	variables
?trainable_variables
¤regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
،
?	variables
?trainable_variables
?regularization_losses
?	keras_api
،__call__
+­&call_and_return_all_conditional_losses

<kernel
=bias*
j
00
11
22
33
44
55
66
77
88
99
:10
;11
<12
=13*
* 
* 

?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 

	؛iter
?beta_1
?beta_2

?decay
؟learning_rate0m?1m?2m؛3m?6m?7m?8m؟9m?<mء=mآ0vأ1vؤ2vإ3vئ6vا7vب8vة9vت<vث=vج*
WQ
VARIABLE_VALUEHidden_layer_1/kernel_1&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEHidden_layer_1/bias_1&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEHidden_layer_2/kernel_1&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEHidden_layer_2/bias_1&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEMean_layer/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEMean_layer/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEVariance_layer/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEVariance_layer/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEHidden_layer_1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEHidden_layer_1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEBatchnorm_1/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEBatchnorm_1/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEBatchnorm_1/moving_mean'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEBatchnorm_1/moving_variance'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEHidden_layer_2/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEHidden_layer_2/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEBatchnorm_2/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEBatchnorm_2/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEBatchnorm_2/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEBatchnorm_2/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
dense/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
j
00
11
22
33
44
55
66
77
88
99
:10
;11
<12
=13*

0
1
2*

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
NH
VARIABLE_VALUEAdam/iter_1)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEAdam/beta_1_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEAdam/beta_2_1+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/decay_1*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/learning_rate_12optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ءnon_trainable_variables
آlayers
أmetrics
 ؤlayer_regularization_losses
إlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

ئtrace_0* 

اtrace_0* 

(0
)1*

(0
)1*
* 

بnon_trainable_variables
ةlayers
تmetrics
 ثlayer_regularization_losses
جlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

حtrace_0* 

خtrace_0* 

*0
+1*

*0
+1*
* 

دnon_trainable_variables
ذlayers
رmetrics
 زlayer_regularization_losses
سlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

شtrace_0* 

صtrace_0* 

,0
-1*

,0
-1*
* 

ضnon_trainable_variables
طlayers
ظmetrics
 عlayer_regularization_losses
غlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 

.0
/1*

.0
/1*
* 

?non_trainable_variables
?layers
?metrics
 ـlayer_regularization_losses
فlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

قtrace_0* 

كtrace_0* 
* 
* 
* 

لnon_trainable_variables
مlayers
نmetrics
 هlayer_regularization_losses
وlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

ىtrace_0* 

يtrace_0* 
* 
5
0
1
2
3
4
5
6*
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
00
11*
* 
* 

ًnon_trainable_variables
ٌlayers
ٍmetrics
 َlayer_regularization_losses
ُlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ِtrace_0* 

ّtrace_0* 
 
20
31
42
53*
* 
* 

ْnon_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
* 
* 

?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

60
71*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
 
80
91
:2
;3*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
?trainable_variables
¤regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

<0
=1*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
?trainable_variables
?regularization_losses
،__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses*

trace_0* 

trace_0* 
j
00
11
22
33
44
55
66
77
88
99
:10
;11
<12
=13*
<
0
1
2
3
4
5
6
 7*

 0*
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
a[
VARIABLE_VALUE	Adam/iter>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/beta_1@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/beta_2@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE
Adam/decay?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/learning_rateGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
<
?	variables
?	keras_api

?total

¤count*
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

00
11*
* 
* 
* 
* 
* 
* 
 
20
31
42
53*
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
60
71*
* 
* 
* 
* 
* 
* 
 
80
91
:2
;3*
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
<0
=1*
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*

?0
¤1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
hb
VARIABLE_VALUEtotalIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEcountIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/Hidden_layer_1/kernel/m_1Bvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_1/bias/m_1Bvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/Hidden_layer_2/kernel/m_1Bvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_2/bias/m_1Bvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/Mean_layer/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/Mean_layer/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Variance_layer/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Variance_layer/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/Hidden_layer_1/kernel/v_1Bvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_1/bias/v_1Bvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/Hidden_layer_2/kernel/v_1Bvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_2/bias/v_1Bvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/Mean_layer/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/Mean_layer/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Variance_layer/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Variance_layer/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Hidden_layer_1/kernel/mWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Hidden_layer_1/bias/mWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Batchnorm_1/gamma/mXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Batchnorm_1/beta/mXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Hidden_layer_2/kernel/mXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Hidden_layer_2/bias/mXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Batchnorm_2/gamma/mXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Batchnorm_2/beta/mXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/dense/kernel/mXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense/bias/mXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Hidden_layer_1/kernel/vWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Hidden_layer_1/bias/vWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Batchnorm_1/gamma/vXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Batchnorm_1/beta/vXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Hidden_layer_2/kernel/vXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Hidden_layer_2/bias/vXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Batchnorm_2/gamma/vXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/Batchnorm_2/beta/vXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/dense/kernel/vXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense/bias/vXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_Encoder_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_Encoder_inputHidden_layer_1/kernel_1Hidden_layer_1/bias_1Hidden_layer_2/kernel_1Hidden_layer_2/bias_1Mean_layer/kernelMean_layer/biasVariance_layer/kernelVariance_layer/biasHidden_layer_1/kernelHidden_layer_1/biasBatchnorm_1/moving_varianceBatchnorm_1/gammaBatchnorm_1/moving_meanBatchnorm_1/betaHidden_layer_2/kernelHidden_layer_2/biasBatchnorm_2/moving_varianceBatchnorm_2/gammaBatchnorm_2/moving_meanBatchnorm_2/betadense/kernel
dense/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_6660644
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ل
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+Hidden_layer_1/kernel_1/Read/ReadVariableOp)Hidden_layer_1/bias_1/Read/ReadVariableOp+Hidden_layer_2/kernel_1/Read/ReadVariableOp)Hidden_layer_2/bias_1/Read/ReadVariableOp%Mean_layer/kernel/Read/ReadVariableOp#Mean_layer/bias/Read/ReadVariableOp)Variance_layer/kernel/Read/ReadVariableOp'Variance_layer/bias/Read/ReadVariableOp)Hidden_layer_1/kernel/Read/ReadVariableOp'Hidden_layer_1/bias/Read/ReadVariableOp%Batchnorm_1/gamma/Read/ReadVariableOp$Batchnorm_1/beta/Read/ReadVariableOp+Batchnorm_1/moving_mean/Read/ReadVariableOp/Batchnorm_1/moving_variance/Read/ReadVariableOp)Hidden_layer_2/kernel/Read/ReadVariableOp'Hidden_layer_2/bias/Read/ReadVariableOp%Batchnorm_2/gamma/Read/ReadVariableOp$Batchnorm_2/beta/Read/ReadVariableOp+Batchnorm_2/moving_mean/Read/ReadVariableOp/Batchnorm_2/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter_1/Read/ReadVariableOp!Adam/beta_1_1/Read/ReadVariableOp!Adam/beta_2_1/Read/ReadVariableOp Adam/decay_1/Read/ReadVariableOp(Adam/learning_rate_1/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp2Adam/Hidden_layer_1/kernel/m_1/Read/ReadVariableOp0Adam/Hidden_layer_1/bias/m_1/Read/ReadVariableOp2Adam/Hidden_layer_2/kernel/m_1/Read/ReadVariableOp0Adam/Hidden_layer_2/bias/m_1/Read/ReadVariableOp,Adam/Mean_layer/kernel/m/Read/ReadVariableOp*Adam/Mean_layer/bias/m/Read/ReadVariableOp0Adam/Variance_layer/kernel/m/Read/ReadVariableOp.Adam/Variance_layer/bias/m/Read/ReadVariableOp2Adam/Hidden_layer_1/kernel/v_1/Read/ReadVariableOp0Adam/Hidden_layer_1/bias/v_1/Read/ReadVariableOp2Adam/Hidden_layer_2/kernel/v_1/Read/ReadVariableOp0Adam/Hidden_layer_2/bias/v_1/Read/ReadVariableOp,Adam/Mean_layer/kernel/v/Read/ReadVariableOp*Adam/Mean_layer/bias/v/Read/ReadVariableOp0Adam/Variance_layer/kernel/v/Read/ReadVariableOp.Adam/Variance_layer/bias/v/Read/ReadVariableOp0Adam/Hidden_layer_1/kernel/m/Read/ReadVariableOp.Adam/Hidden_layer_1/bias/m/Read/ReadVariableOp,Adam/Batchnorm_1/gamma/m/Read/ReadVariableOp+Adam/Batchnorm_1/beta/m/Read/ReadVariableOp0Adam/Hidden_layer_2/kernel/m/Read/ReadVariableOp.Adam/Hidden_layer_2/bias/m/Read/ReadVariableOp,Adam/Batchnorm_2/gamma/m/Read/ReadVariableOp+Adam/Batchnorm_2/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/Hidden_layer_1/kernel/v/Read/ReadVariableOp.Adam/Hidden_layer_1/bias/v/Read/ReadVariableOp,Adam/Batchnorm_1/gamma/v/Read/ReadVariableOp+Adam/Batchnorm_1/beta/v/Read/ReadVariableOp0Adam/Hidden_layer_2/kernel/v/Read/ReadVariableOp.Adam/Hidden_layer_2/bias/v/Read/ReadVariableOp,Adam/Batchnorm_2/gamma/v/Read/ReadVariableOp+Adam/Batchnorm_2/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*U
TinN
L2J		*
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
 __inference__traced_save_6661830
؟
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_layer_1/kernel_1Hidden_layer_1/bias_1Hidden_layer_2/kernel_1Hidden_layer_2/bias_1Mean_layer/kernelMean_layer/biasVariance_layer/kernelVariance_layer/biasHidden_layer_1/kernelHidden_layer_1/biasBatchnorm_1/gammaBatchnorm_1/betaBatchnorm_1/moving_meanBatchnorm_1/moving_varianceHidden_layer_2/kernelHidden_layer_2/biasBatchnorm_2/gammaBatchnorm_2/betaBatchnorm_2/moving_meanBatchnorm_2/moving_variancedense/kernel
dense/biasAdam/iter_1Adam/beta_1_1Adam/beta_2_1Adam/decay_1Adam/learning_rate_1	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/Hidden_layer_1/kernel/m_1Adam/Hidden_layer_1/bias/m_1Adam/Hidden_layer_2/kernel/m_1Adam/Hidden_layer_2/bias/m_1Adam/Mean_layer/kernel/mAdam/Mean_layer/bias/mAdam/Variance_layer/kernel/mAdam/Variance_layer/bias/mAdam/Hidden_layer_1/kernel/v_1Adam/Hidden_layer_1/bias/v_1Adam/Hidden_layer_2/kernel/v_1Adam/Hidden_layer_2/bias/v_1Adam/Mean_layer/kernel/vAdam/Mean_layer/bias/vAdam/Variance_layer/kernel/vAdam/Variance_layer/bias/vAdam/Hidden_layer_1/kernel/mAdam/Hidden_layer_1/bias/mAdam/Batchnorm_1/gamma/mAdam/Batchnorm_1/beta/mAdam/Hidden_layer_2/kernel/mAdam/Hidden_layer_2/bias/mAdam/Batchnorm_2/gamma/mAdam/Batchnorm_2/beta/mAdam/dense/kernel/mAdam/dense/bias/mAdam/Hidden_layer_1/kernel/vAdam/Hidden_layer_1/bias/vAdam/Batchnorm_1/gamma/vAdam/Batchnorm_1/beta/vAdam/Hidden_layer_2/kernel/vAdam/Hidden_layer_2/bias/vAdam/Batchnorm_2/gamma/vAdam/Batchnorm_2/beta/vAdam/dense/kernel/vAdam/dense/bias/v*T
TinM
K2I*
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
#__inference__traced_restore_6662056غ?
ط
?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6659689

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity?batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ط
?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6661445

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity?batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659852

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ط
?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6659722

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity?batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?
؟
)__inference_model_2_layer_call_fn_6660699

inputs
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:	 
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:


unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:
identity?StatefulPartitionedCallو
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_6660237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs


"__inference__wrapped_model_6659328
encoder_inputQ
=model_2_encoder_hidden_layer_1_matmul_readvariableop_resource:
M
>model_2_encoder_hidden_layer_1_biasadd_readvariableop_resource:	P
=model_2_encoder_hidden_layer_2_matmul_readvariableop_resource:	dL
>model_2_encoder_hidden_layer_2_biasadd_readvariableop_resource:dK
9model_2_encoder_mean_layer_matmul_readvariableop_resource:d H
:model_2_encoder_mean_layer_biasadd_readvariableop_resource: O
=model_2_encoder_variance_layer_matmul_readvariableop_resource:d L
>model_2_encoder_variance_layer_biasadd_readvariableop_resource: N
;model_2_model_hidden_layer_1_matmul_readvariableop_resource:	 K
<model_2_model_hidden_layer_1_biasadd_readvariableop_resource:	J
;model_2_model_batchnorm_1_batchnorm_readvariableop_resource:	N
?model_2_model_batchnorm_1_batchnorm_mul_readvariableop_resource:	L
=model_2_model_batchnorm_1_batchnorm_readvariableop_1_resource:	L
=model_2_model_batchnorm_1_batchnorm_readvariableop_2_resource:	O
;model_2_model_hidden_layer_2_matmul_readvariableop_resource:
K
<model_2_model_hidden_layer_2_biasadd_readvariableop_resource:	J
;model_2_model_batchnorm_2_batchnorm_readvariableop_resource:	N
?model_2_model_batchnorm_2_batchnorm_mul_readvariableop_resource:	L
=model_2_model_batchnorm_2_batchnorm_readvariableop_1_resource:	L
=model_2_model_batchnorm_2_batchnorm_readvariableop_2_resource:	E
2model_2_model_dense_matmul_readvariableop_resource:	A
3model_2_model_dense_biasadd_readvariableop_resource:
identity?5model_2/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp?4model_2/Encoder/Hidden_layer_1/MatMul/ReadVariableOp?5model_2/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp?4model_2/Encoder/Hidden_layer_2/MatMul/ReadVariableOp?1model_2/Encoder/Mean_layer/BiasAdd/ReadVariableOp?0model_2/Encoder/Mean_layer/MatMul/ReadVariableOp?5model_2/Encoder/Variance_layer/BiasAdd/ReadVariableOp?4model_2/Encoder/Variance_layer/MatMul/ReadVariableOp?2model_2/model/Batchnorm_1/batchnorm/ReadVariableOp?4model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_1?4model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_2?6model_2/model/Batchnorm_1/batchnorm/mul/ReadVariableOp?2model_2/model/Batchnorm_2/batchnorm/ReadVariableOp?4model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_1?4model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_2?6model_2/model/Batchnorm_2/batchnorm/mul/ReadVariableOp?3model_2/model/Hidden_layer_1/BiasAdd/ReadVariableOp?2model_2/model/Hidden_layer_1/MatMul/ReadVariableOp?3model_2/model/Hidden_layer_2/BiasAdd/ReadVariableOp?2model_2/model/Hidden_layer_2/MatMul/ReadVariableOp?*model_2/model/dense/BiasAdd/ReadVariableOp?)model_2/model/dense/MatMul/ReadVariableOpt
#model_2/Encoder/Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   
%model_2/Encoder/Flatten_layer/ReshapeReshapeencoder_input,model_2/Encoder/Flatten_layer/Const:output:0*
T0*(
_output_shapes
:??????????
4model_2/Encoder/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp=model_2_encoder_hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0ذ
%model_2/Encoder/Hidden_layer_1/MatMulMatMul.model_2/Encoder/Flatten_layer/Reshape:output:0<model_2/Encoder/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
5model_2/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp>model_2_encoder_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ش
&model_2/Encoder/Hidden_layer_1/BiasAddBiasAdd/model_2/Encoder/Hidden_layer_1/MatMul:product:0=model_2/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
#model_2/Encoder/Hidden_layer_1/SeluSelu/model_2/Encoder/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
4model_2/Encoder/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp=model_2_encoder_hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0ز
%model_2/Encoder/Hidden_layer_2/MatMulMatMul1model_2/Encoder/Hidden_layer_1/Selu:activations:0<model_2/Encoder/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
5model_2/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp>model_2_encoder_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0س
&model_2/Encoder/Hidden_layer_2/BiasAddBiasAdd/model_2/Encoder/Hidden_layer_2/MatMul:product:0=model_2/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
#model_2/Encoder/Hidden_layer_2/SeluSelu/model_2/Encoder/Hidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d?
0model_2/Encoder/Mean_layer/MatMul/ReadVariableOpReadVariableOp9model_2_encoder_mean_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0ت
!model_2/Encoder/Mean_layer/MatMulMatMul1model_2/Encoder/Hidden_layer_2/Selu:activations:08model_2/Encoder/Mean_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
1model_2/Encoder/Mean_layer/BiasAdd/ReadVariableOpReadVariableOp:model_2_encoder_mean_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ا
"model_2/Encoder/Mean_layer/BiasAddBiasAdd+model_2/Encoder/Mean_layer/MatMul:product:09model_2/Encoder/Mean_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
4model_2/Encoder/Variance_layer/MatMul/ReadVariableOpReadVariableOp=model_2_encoder_variance_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0ز
%model_2/Encoder/Variance_layer/MatMulMatMul1model_2/Encoder/Hidden_layer_2/Selu:activations:0<model_2/Encoder/Variance_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
5model_2/Encoder/Variance_layer/BiasAdd/ReadVariableOpReadVariableOp>model_2_encoder_variance_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0س
&model_2/Encoder/Variance_layer/BiasAddBiasAdd/model_2/Encoder/Variance_layer/MatMul:product:0=model_2/Encoder/Variance_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$model_2/Encoder/Encoder_output/ShapeShape/model_2/Encoder/Variance_layer/BiasAdd:output:0*
T0*
_output_shapes
:v
1model_2/Encoder/Encoder_output/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    x
3model_2/Encoder/Encoder_output/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?م
Amodel_2/Encoder/Encoder_output/random_normal/RandomStandardNormalRandomStandardNormal-model_2/Encoder/Encoder_output/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed??م)*
seed2ه?
0model_2/Encoder/Encoder_output/random_normal/mulMulJmodel_2/Encoder/Encoder_output/random_normal/RandomStandardNormal:output:0<model_2/Encoder/Encoder_output/random_normal/stddev:output:0*
T0*'
_output_shapes
:????????? ع
,model_2/Encoder/Encoder_output/random_normalAddV24model_2/Encoder/Encoder_output/random_normal/mul:z:0:model_2/Encoder/Encoder_output/random_normal/mean:output:0*
T0*'
_output_shapes
:????????? m
(model_2/Encoder/Encoder_output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ا
&model_2/Encoder/Encoder_output/truedivRealDiv/model_2/Encoder/Variance_layer/BiasAdd:output:01model_2/Encoder/Encoder_output/truediv/y:output:0*
T0*'
_output_shapes
:????????? 
"model_2/Encoder/Encoder_output/ExpExp*model_2/Encoder/Encoder_output/truediv:z:0*
T0*'
_output_shapes
:????????? ?
"model_2/Encoder/Encoder_output/mulMul0model_2/Encoder/Encoder_output/random_normal:z:0&model_2/Encoder/Encoder_output/Exp:y:0*
T0*'
_output_shapes
:????????? ?
"model_2/Encoder/Encoder_output/addAddV2&model_2/Encoder/Encoder_output/mul:z:0+model_2/Encoder/Mean_layer/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
2model_2/model/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp;model_2_model_hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0ؤ
#model_2/model/Hidden_layer_1/MatMulMatMul&model_2/Encoder/Encoder_output/add:z:0:model_2/model/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????­
3model_2/model/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp<model_2_model_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0خ
$model_2/model/Hidden_layer_1/BiasAddBiasAdd-model_2/model/Hidden_layer_1/MatMul:product:0;model_2/model/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
!model_2/model/Hidden_layer_1/SeluSelu-model_2/model/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
2model_2/model/Batchnorm_1/batchnorm/ReadVariableOpReadVariableOp;model_2_model_batchnorm_1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0n
)model_2/model/Batchnorm_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ئ
'model_2/model/Batchnorm_1/batchnorm/addAddV2:model_2/model/Batchnorm_1/batchnorm/ReadVariableOp:value:02model_2/model/Batchnorm_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
)model_2/model/Batchnorm_1/batchnorm/RsqrtRsqrt+model_2/model/Batchnorm_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?
6model_2/model/Batchnorm_1/batchnorm/mul/ReadVariableOpReadVariableOp?model_2_model_batchnorm_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0أ
'model_2/model/Batchnorm_1/batchnorm/mulMul-model_2/model/Batchnorm_1/batchnorm/Rsqrt:y:0>model_2/model/Batchnorm_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ء
)model_2/model/Batchnorm_1/batchnorm/mul_1Mul/model_2/model/Hidden_layer_1/Selu:activations:0+model_2/model/Batchnorm_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????
4model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_1ReadVariableOp=model_2_model_batchnorm_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0ء
)model_2/model/Batchnorm_1/batchnorm/mul_2Mul<model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_1:value:0+model_2/model/Batchnorm_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:?
4model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_2ReadVariableOp=model_2_model_batchnorm_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0ء
'model_2/model/Batchnorm_1/batchnorm/subSub<model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_2:value:0-model_2/model/Batchnorm_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ء
)model_2/model/Batchnorm_1/batchnorm/add_1AddV2-model_2/model/Batchnorm_1/batchnorm/mul_1:z:0+model_2/model/Batchnorm_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????
'model_2/model/LeakyLU_layer_1/LeakyRelu	LeakyRelu-model_2/model/Batchnorm_1/batchnorm/add_1:z:0*(
_output_shapes
:??????????
2model_2/model/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp;model_2_model_hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0س
#model_2/model/Hidden_layer_2/MatMulMatMul5model_2/model/LeakyLU_layer_1/LeakyRelu:activations:0:model_2/model/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????­
3model_2/model/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp<model_2_model_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0خ
$model_2/model/Hidden_layer_2/BiasAddBiasAdd-model_2/model/Hidden_layer_2/MatMul:product:0;model_2/model/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
!model_2/model/Hidden_layer_2/SeluSelu-model_2/model/Hidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
2model_2/model/Batchnorm_2/batchnorm/ReadVariableOpReadVariableOp;model_2_model_batchnorm_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0n
)model_2/model/Batchnorm_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ئ
'model_2/model/Batchnorm_2/batchnorm/addAddV2:model_2/model/Batchnorm_2/batchnorm/ReadVariableOp:value:02model_2/model/Batchnorm_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
)model_2/model/Batchnorm_2/batchnorm/RsqrtRsqrt+model_2/model/Batchnorm_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?
6model_2/model/Batchnorm_2/batchnorm/mul/ReadVariableOpReadVariableOp?model_2_model_batchnorm_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0أ
'model_2/model/Batchnorm_2/batchnorm/mulMul-model_2/model/Batchnorm_2/batchnorm/Rsqrt:y:0>model_2/model/Batchnorm_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ء
)model_2/model/Batchnorm_2/batchnorm/mul_1Mul/model_2/model/Hidden_layer_2/Selu:activations:0+model_2/model/Batchnorm_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????
4model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_1ReadVariableOp=model_2_model_batchnorm_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0ء
)model_2/model/Batchnorm_2/batchnorm/mul_2Mul<model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_1:value:0+model_2/model/Batchnorm_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?
4model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_2ReadVariableOp=model_2_model_batchnorm_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0ء
'model_2/model/Batchnorm_2/batchnorm/subSub<model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_2:value:0-model_2/model/Batchnorm_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ء
)model_2/model/Batchnorm_2/batchnorm/add_1AddV2-model_2/model/Batchnorm_2/batchnorm/mul_1:z:0+model_2/model/Batchnorm_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????
%model_2/model/Leaky_layer_2/LeakyRelu	LeakyRelu-model_2/model/Batchnorm_2/batchnorm/add_1:z:0*(
_output_shapes
:?????????
)model_2/model/dense/MatMul/ReadVariableOpReadVariableOp2model_2_model_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0?
model_2/model/dense/MatMulMatMul3model_2/model/Leaky_layer_2/LeakyRelu:activations:01model_2/model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
*model_2/model/dense/BiasAdd/ReadVariableOpReadVariableOp3model_2_model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/model/dense/BiasAddBiasAdd$model_2/model/dense/MatMul:product:02model_2/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
model_2/model/dense/SigmoidSigmoid$model_2/model/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????n
IdentityIdentitymodel_2/model/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????ف	
NoOpNoOp6^model_2/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp5^model_2/Encoder/Hidden_layer_1/MatMul/ReadVariableOp6^model_2/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp5^model_2/Encoder/Hidden_layer_2/MatMul/ReadVariableOp2^model_2/Encoder/Mean_layer/BiasAdd/ReadVariableOp1^model_2/Encoder/Mean_layer/MatMul/ReadVariableOp6^model_2/Encoder/Variance_layer/BiasAdd/ReadVariableOp5^model_2/Encoder/Variance_layer/MatMul/ReadVariableOp3^model_2/model/Batchnorm_1/batchnorm/ReadVariableOp5^model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_15^model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_27^model_2/model/Batchnorm_1/batchnorm/mul/ReadVariableOp3^model_2/model/Batchnorm_2/batchnorm/ReadVariableOp5^model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_15^model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_27^model_2/model/Batchnorm_2/batchnorm/mul/ReadVariableOp4^model_2/model/Hidden_layer_1/BiasAdd/ReadVariableOp3^model_2/model/Hidden_layer_1/MatMul/ReadVariableOp4^model_2/model/Hidden_layer_2/BiasAdd/ReadVariableOp3^model_2/model/Hidden_layer_2/MatMul/ReadVariableOp+^model_2/model/dense/BiasAdd/ReadVariableOp*^model_2/model/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2n
5model_2/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp5model_2/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp2l
4model_2/Encoder/Hidden_layer_1/MatMul/ReadVariableOp4model_2/Encoder/Hidden_layer_1/MatMul/ReadVariableOp2n
5model_2/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp5model_2/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp2l
4model_2/Encoder/Hidden_layer_2/MatMul/ReadVariableOp4model_2/Encoder/Hidden_layer_2/MatMul/ReadVariableOp2f
1model_2/Encoder/Mean_layer/BiasAdd/ReadVariableOp1model_2/Encoder/Mean_layer/BiasAdd/ReadVariableOp2d
0model_2/Encoder/Mean_layer/MatMul/ReadVariableOp0model_2/Encoder/Mean_layer/MatMul/ReadVariableOp2n
5model_2/Encoder/Variance_layer/BiasAdd/ReadVariableOp5model_2/Encoder/Variance_layer/BiasAdd/ReadVariableOp2l
4model_2/Encoder/Variance_layer/MatMul/ReadVariableOp4model_2/Encoder/Variance_layer/MatMul/ReadVariableOp2h
2model_2/model/Batchnorm_1/batchnorm/ReadVariableOp2model_2/model/Batchnorm_1/batchnorm/ReadVariableOp2l
4model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_14model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_12l
4model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_24model_2/model/Batchnorm_1/batchnorm/ReadVariableOp_22p
6model_2/model/Batchnorm_1/batchnorm/mul/ReadVariableOp6model_2/model/Batchnorm_1/batchnorm/mul/ReadVariableOp2h
2model_2/model/Batchnorm_2/batchnorm/ReadVariableOp2model_2/model/Batchnorm_2/batchnorm/ReadVariableOp2l
4model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_14model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_12l
4model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_24model_2/model/Batchnorm_2/batchnorm/ReadVariableOp_22p
6model_2/model/Batchnorm_2/batchnorm/mul/ReadVariableOp6model_2/model/Batchnorm_2/batchnorm/mul/ReadVariableOp2j
3model_2/model/Hidden_layer_1/BiasAdd/ReadVariableOp3model_2/model/Hidden_layer_1/BiasAdd/ReadVariableOp2h
2model_2/model/Hidden_layer_1/MatMul/ReadVariableOp2model_2/model/Hidden_layer_1/MatMul/ReadVariableOp2j
3model_2/model/Hidden_layer_2/BiasAdd/ReadVariableOp3model_2/model/Hidden_layer_2/BiasAdd/ReadVariableOp2h
2model_2/model/Hidden_layer_2/MatMul/ReadVariableOp2model_2/model/Hidden_layer_2/MatMul/ReadVariableOp2X
*model_2/model/dense/BiasAdd/ReadVariableOp*model_2/model/dense/BiasAdd/ReadVariableOp2V
)model_2/model/dense/MatMul/ReadVariableOp)model_2/model/dense/MatMul/ReadVariableOp:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
ع
و
D__inference_model_2_layer_call_and_return_conditional_losses_6660535
encoder_input#
encoder_6660486:

encoder_6660488:	"
encoder_6660490:	d
encoder_6660492:d!
encoder_6660494:d 
encoder_6660496: !
encoder_6660498:d 
encoder_6660500:  
model_6660505:	 
model_6660507:	
model_6660509:	
model_6660511:	
model_6660513:	
model_6660515:	!
model_6660517:

model_6660519:	
model_6660521:	
model_6660523:	
model_6660525:	
model_6660527:	 
model_6660529:	
model_6660531:
identity?Encoder/StatefulPartitionedCall?model/StatefulPartitionedCall
Encoder/StatefulPartitionedCallStatefulPartitionedCallencoder_inputencoder_6660486encoder_6660488encoder_6660490encoder_6660492encoder_6660494encoder_6660496encoder_6660498encoder_6660500*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6659430ص
model/StatefulPartitionedCallStatefulPartitionedCall(Encoder/StatefulPartitionedCall:output:2model_6660505model_6660507model_6660509model_6660511model_6660513model_6660515model_6660517model_6660519model_6660521model_6660523model_6660525model_6660527model_6660529model_6660531*
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
GPU 2J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6659892u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp ^Encoder/StatefulPartitionedCall^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
%
?
B__inference_model_layer_call_and_return_conditional_losses_6660142
input_discriminator)
hidden_layer_1_6660106:	 %
hidden_layer_1_6660108:	"
batchnorm_1_6660111:	"
batchnorm_1_6660113:	"
batchnorm_1_6660115:	"
batchnorm_1_6660117:	*
hidden_layer_2_6660121:
%
hidden_layer_2_6660123:	"
batchnorm_2_6660126:	"
batchnorm_2_6660128:	"
batchnorm_2_6660130:	"
batchnorm_2_6660132:	 
dense_6660136:	
dense_6660138:
identity?#Batchnorm_1/StatefulPartitionedCall?#Batchnorm_2/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?dense/StatefulPartitionedCall
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput_discriminatorhidden_layer_1_6660106hidden_layer_1_6660108*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659819ط
#Batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0batchnorm_1_6660111batchnorm_1_6660113batchnorm_1_6660115batchnorm_1_6660117*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6659689َ
LeakyLU_layer_1/PartitionedCallPartitionedCall,Batchnorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6659839?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall(LeakyLU_layer_1/PartitionedCall:output:0hidden_layer_2_6660121hidden_layer_2_6660123*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659852ط
#Batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0batchnorm_2_6660126batchnorm_2_6660128batchnorm_2_6660130batchnorm_2_6660132*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6659757ي
Leaky_layer_2/PartitionedCallPartitionedCall,Batchnorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6659872
dense/StatefulPartitionedCallStatefulPartitionedCall&Leaky_layer_2/PartitionedCall:output:0dense_6660136dense_6660138*
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
GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6659885u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
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
ف
ن
'__inference_model_layer_call_fn_6659923
input_discriminator
unknown:	 
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:
identity?StatefulPartitionedCall
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
GPU 2J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6659892o
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
ؤ
ف
D__inference_model_2_layer_call_and_return_conditional_losses_6660387

inputs#
encoder_6660338:

encoder_6660340:	"
encoder_6660342:	d
encoder_6660344:d!
encoder_6660346:d 
encoder_6660348: !
encoder_6660350:d 
encoder_6660352:  
model_6660357:	 
model_6660359:	
model_6660361:	
model_6660363:	
model_6660365:	
model_6660367:	!
model_6660369:

model_6660371:	
model_6660373:	
model_6660375:	
model_6660377:	
model_6660379:	 
model_6660381:	
model_6660383:
identity?Encoder/StatefulPartitionedCall?model/StatefulPartitionedCall
Encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_6660338encoder_6660340encoder_6660342encoder_6660344encoder_6660346encoder_6660348encoder_6660350encoder_6660352*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6659561ص
model/StatefulPartitionedCallStatefulPartitionedCall(Encoder/StatefulPartitionedCall:output:2model_6660357model_6660359model_6660361model_6660363model_6660365model_6660367model_6660369model_6660371model_6660373model_6660375model_6660377model_6660379model_6660381model_6660383*
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
GPU 2J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6660039u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp ^Encoder/StatefulPartitionedCall^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
%
?
B__inference_model_layer_call_and_return_conditional_losses_6660181
input_discriminator)
hidden_layer_1_6660145:	 %
hidden_layer_1_6660147:	"
batchnorm_1_6660150:	"
batchnorm_1_6660152:	"
batchnorm_1_6660154:	"
batchnorm_1_6660156:	*
hidden_layer_2_6660160:
%
hidden_layer_2_6660162:	"
batchnorm_2_6660165:	"
batchnorm_2_6660167:	"
batchnorm_2_6660169:	"
batchnorm_2_6660171:	 
dense_6660175:	
dense_6660177:
identity?#Batchnorm_1/StatefulPartitionedCall?#Batchnorm_2/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?dense/StatefulPartitionedCall
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput_discriminatorhidden_layer_1_6660145hidden_layer_1_6660147*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659819ط
#Batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0batchnorm_1_6660150batchnorm_1_6660152batchnorm_1_6660154batchnorm_1_6660156*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6659722َ
LeakyLU_layer_1/PartitionedCallPartitionedCall,Batchnorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6659839?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall(LeakyLU_layer_1/PartitionedCall:output:0hidden_layer_2_6660160hidden_layer_2_6660162*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659852ط
#Batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0batchnorm_2_6660165batchnorm_2_6660167batchnorm_2_6660169batchnorm_2_6660171*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6659790ي
Leaky_layer_2/PartitionedCallPartitionedCall,Batchnorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6659872
dense/StatefulPartitionedCallStatefulPartitionedCall&Leaky_layer_2/PartitionedCall:output:0dense_6660175dense_6660177*
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
GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6659885u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
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
?

?
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659819

inputs1
matmul_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6661299

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?
K
/__inference_Flatten_layer_layer_call_fn_6661273

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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6659341a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs


?
B__inference_dense_layer_call_and_return_conditional_losses_6659885

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ذ

0__inference_Variance_layer_layer_call_fn_6661347

inputs
unknown:d 
	unknown_0: 
identity?StatefulPartitionedCallـ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6659403o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
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
ط
?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6661561

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity?batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?
ع
'__inference_model_layer_call_fn_6661150

inputs
unknown:	 
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:
identity?StatefulPartitionedCall?
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
GPU 2J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6660039o
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
ث

 __inference__traced_save_6661830
file_prefix6
2savev2_hidden_layer_1_kernel_1_read_readvariableop4
0savev2_hidden_layer_1_bias_1_read_readvariableop6
2savev2_hidden_layer_2_kernel_1_read_readvariableop4
0savev2_hidden_layer_2_bias_1_read_readvariableop0
,savev2_mean_layer_kernel_read_readvariableop.
*savev2_mean_layer_bias_read_readvariableop4
0savev2_variance_layer_kernel_read_readvariableop2
.savev2_variance_layer_bias_read_readvariableop4
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
%savev2_dense_bias_read_readvariableop*
&savev2_adam_iter_1_read_readvariableop	,
(savev2_adam_beta_1_1_read_readvariableop,
(savev2_adam_beta_2_1_read_readvariableop+
'savev2_adam_decay_1_read_readvariableop3
/savev2_adam_learning_rate_1_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop=
9savev2_adam_hidden_layer_1_kernel_m_1_read_readvariableop;
7savev2_adam_hidden_layer_1_bias_m_1_read_readvariableop=
9savev2_adam_hidden_layer_2_kernel_m_1_read_readvariableop;
7savev2_adam_hidden_layer_2_bias_m_1_read_readvariableop7
3savev2_adam_mean_layer_kernel_m_read_readvariableop5
1savev2_adam_mean_layer_bias_m_read_readvariableop;
7savev2_adam_variance_layer_kernel_m_read_readvariableop9
5savev2_adam_variance_layer_bias_m_read_readvariableop=
9savev2_adam_hidden_layer_1_kernel_v_1_read_readvariableop;
7savev2_adam_hidden_layer_1_bias_v_1_read_readvariableop=
9savev2_adam_hidden_layer_2_kernel_v_1_read_readvariableop;
7savev2_adam_hidden_layer_2_bias_v_1_read_readvariableop7
3savev2_adam_mean_layer_kernel_v_read_readvariableop5
1savev2_adam_mean_layer_bias_v_read_readvariableop;
7savev2_adam_variance_layer_kernel_v_read_readvariableop9
5savev2_adam_variance_layer_bias_v_read_readvariableop;
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

identity_1?MergeV2Checkpointsw
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
: ?$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*?$
value$B$IB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*?
valueBIB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ِ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_hidden_layer_1_kernel_1_read_readvariableop0savev2_hidden_layer_1_bias_1_read_readvariableop2savev2_hidden_layer_2_kernel_1_read_readvariableop0savev2_hidden_layer_2_bias_1_read_readvariableop,savev2_mean_layer_kernel_read_readvariableop*savev2_mean_layer_bias_read_readvariableop0savev2_variance_layer_kernel_read_readvariableop.savev2_variance_layer_bias_read_readvariableop0savev2_hidden_layer_1_kernel_read_readvariableop.savev2_hidden_layer_1_bias_read_readvariableop,savev2_batchnorm_1_gamma_read_readvariableop+savev2_batchnorm_1_beta_read_readvariableop2savev2_batchnorm_1_moving_mean_read_readvariableop6savev2_batchnorm_1_moving_variance_read_readvariableop0savev2_hidden_layer_2_kernel_read_readvariableop.savev2_hidden_layer_2_bias_read_readvariableop,savev2_batchnorm_2_gamma_read_readvariableop+savev2_batchnorm_2_beta_read_readvariableop2savev2_batchnorm_2_moving_mean_read_readvariableop6savev2_batchnorm_2_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop&savev2_adam_iter_1_read_readvariableop(savev2_adam_beta_1_1_read_readvariableop(savev2_adam_beta_2_1_read_readvariableop'savev2_adam_decay_1_read_readvariableop/savev2_adam_learning_rate_1_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop9savev2_adam_hidden_layer_1_kernel_m_1_read_readvariableop7savev2_adam_hidden_layer_1_bias_m_1_read_readvariableop9savev2_adam_hidden_layer_2_kernel_m_1_read_readvariableop7savev2_adam_hidden_layer_2_bias_m_1_read_readvariableop3savev2_adam_mean_layer_kernel_m_read_readvariableop1savev2_adam_mean_layer_bias_m_read_readvariableop7savev2_adam_variance_layer_kernel_m_read_readvariableop5savev2_adam_variance_layer_bias_m_read_readvariableop9savev2_adam_hidden_layer_1_kernel_v_1_read_readvariableop7savev2_adam_hidden_layer_1_bias_v_1_read_readvariableop9savev2_adam_hidden_layer_2_kernel_v_1_read_readvariableop7savev2_adam_hidden_layer_2_bias_v_1_read_readvariableop3savev2_adam_mean_layer_kernel_v_read_readvariableop1savev2_adam_mean_layer_bias_v_read_readvariableop7savev2_adam_variance_layer_kernel_v_read_readvariableop5savev2_adam_variance_layer_bias_v_read_readvariableop7savev2_adam_hidden_layer_1_kernel_m_read_readvariableop5savev2_adam_hidden_layer_1_bias_m_read_readvariableop3savev2_adam_batchnorm_1_gamma_m_read_readvariableop2savev2_adam_batchnorm_1_beta_m_read_readvariableop7savev2_adam_hidden_layer_2_kernel_m_read_readvariableop5savev2_adam_hidden_layer_2_bias_m_read_readvariableop3savev2_adam_batchnorm_2_gamma_m_read_readvariableop2savev2_adam_batchnorm_2_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_hidden_layer_1_kernel_v_read_readvariableop5savev2_adam_hidden_layer_1_bias_v_read_readvariableop3savev2_adam_batchnorm_1_gamma_v_read_readvariableop2savev2_adam_batchnorm_1_beta_v_read_readvariableop7savev2_adam_hidden_layer_2_kernel_v_read_readvariableop5savev2_adam_hidden_layer_2_bias_v_read_readvariableop3savev2_adam_batchnorm_2_gamma_v_read_readvariableop2savev2_adam_batchnorm_2_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *W
dtypesM
K2I		
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

identity_1Identity_1:output:0*
_input_shapes
?: :
::	d:d:d : :d : :	 ::::::
::::::	:: : : : : : : : : : : : : : :
::	d:d:d : :d : :
::	d:d:d : :d : :	 ::::
::::	::	 ::::
::::	:: 2(
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
: :%	!

_output_shapes
:	 :!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :&%"
 
_output_shapes
:
:!&

_output_shapes	
::%'!

_output_shapes
:	d: (

_output_shapes
:d:$) 

_output_shapes

:d : *

_output_shapes
: :$+ 

_output_shapes

:d : ,

_output_shapes
: :&-"
 
_output_shapes
:
:!.

_output_shapes	
::%/!

_output_shapes
:	d: 0

_output_shapes
:d:$1 

_output_shapes

:d : 2

_output_shapes
: :$3 

_output_shapes

:d : 4

_output_shapes
: :%5!

_output_shapes
:	 :!6

_output_shapes	
::!7

_output_shapes	
::!8

_output_shapes	
::&9"
 
_output_shapes
:
:!:

_output_shapes	
::!;

_output_shapes	
::!<

_output_shapes	
::%=!

_output_shapes
:	: >

_output_shapes
::%?!

_output_shapes
:	 :!@

_output_shapes	
::!A

_output_shapes	
::!B

_output_shapes	
::&C"
 
_output_shapes
:
:!D

_output_shapes	
::!E

_output_shapes	
::!F

_output_shapes	
::%G!

_output_shapes
:	: H

_output_shapes
::I

_output_shapes
: 
ش

0__inference_Hidden_layer_1_layer_call_fn_6661388

inputs
unknown:	 
	unknown_0:	
identity?StatefulPartitionedCallف
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659819p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
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
ط
?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6661541

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity?batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_Encoder_layer_call_fn_6660969

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

identity_2?StatefulPartitionedCallد
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6659430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_LeakyLU_layer_1_layer_call_fn_6661470

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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6659839a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
غ
h
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6661475

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:?????????`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6661495

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_Encoder_layer_call_fn_6660994

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

identity_2?StatefulPartitionedCallد
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6659561o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
غ$
?
B__inference_model_layer_call_and_return_conditional_losses_6660039

inputs)
hidden_layer_1_6660003:	 %
hidden_layer_1_6660005:	"
batchnorm_1_6660008:	"
batchnorm_1_6660010:	"
batchnorm_1_6660012:	"
batchnorm_1_6660014:	*
hidden_layer_2_6660018:
%
hidden_layer_2_6660020:	"
batchnorm_2_6660023:	"
batchnorm_2_6660025:	"
batchnorm_2_6660027:	"
batchnorm_2_6660029:	 
dense_6660033:	
dense_6660035:
identity?#Batchnorm_1/StatefulPartitionedCall?#Batchnorm_2/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?dense/StatefulPartitionedCall
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_6660003hidden_layer_1_6660005*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659819ط
#Batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0batchnorm_1_6660008batchnorm_1_6660010batchnorm_1_6660012batchnorm_1_6660014*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6659722َ
LeakyLU_layer_1/PartitionedCallPartitionedCall,Batchnorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6659839?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall(LeakyLU_layer_1/PartitionedCall:output:0hidden_layer_2_6660018hidden_layer_2_6660020*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659852ط
#Batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0batchnorm_2_6660023batchnorm_2_6660025batchnorm_2_6660027batchnorm_2_6660029*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6659790ي
Leaky_layer_2/PartitionedCallPartitionedCall,Batchnorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6659872
dense/StatefulPartitionedCallStatefulPartitionedCall&Leaky_layer_2/PartitionedCall:output:0dense_6660033dense_6660035*
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
GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6659885u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
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
ط
?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6661465

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity?batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

ج
-__inference_Batchnorm_1_layer_call_fn_6661412

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6659689p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?
ع
'__inference_model_layer_call_fn_6661117

inputs
unknown:	 
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:
identity?StatefulPartitionedCall?
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
GPU 2J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6659892o
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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6661399

inputs1
matmul_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
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
¤I
?
B__inference_model_layer_call_and_return_conditional_losses_6661209

inputs@
-hidden_layer_1_matmul_readvariableop_resource:	 =
.hidden_layer_1_biasadd_readvariableop_resource:	<
-batchnorm_1_batchnorm_readvariableop_resource:	@
1batchnorm_1_batchnorm_mul_readvariableop_resource:	>
/batchnorm_1_batchnorm_readvariableop_1_resource:	>
/batchnorm_1_batchnorm_readvariableop_2_resource:	A
-hidden_layer_2_matmul_readvariableop_resource:
=
.hidden_layer_2_biasadd_readvariableop_resource:	<
-batchnorm_2_batchnorm_readvariableop_resource:	@
1batchnorm_2_batchnorm_mul_readvariableop_resource:	>
/batchnorm_2_batchnorm_readvariableop_1_resource:	>
/batchnorm_2_batchnorm_readvariableop_2_resource:	7
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity?$Batchnorm_1/batchnorm/ReadVariableOp?&Batchnorm_1/batchnorm/ReadVariableOp_1?&Batchnorm_1/batchnorm/ReadVariableOp_2?(Batchnorm_1/batchnorm/mul/ReadVariableOp?$Batchnorm_2/batchnorm/ReadVariableOp?&Batchnorm_2/batchnorm/ReadVariableOp_1?&Batchnorm_2/batchnorm/ReadVariableOp_2?(Batchnorm_2/batchnorm/mul/ReadVariableOp?%Hidden_layer_1/BiasAdd/ReadVariableOp?$Hidden_layer_1/MatMul/ReadVariableOp?%Hidden_layer_2/BiasAdd/ReadVariableOp?$Hidden_layer_2/MatMul/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
Hidden_layer_1/MatMulMatMulinputs,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????o
Hidden_layer_1/SeluSeluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
$Batchnorm_1/batchnorm/ReadVariableOpReadVariableOp-batchnorm_1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0`
Batchnorm_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
Batchnorm_1/batchnorm/addAddV2,Batchnorm_1/batchnorm/ReadVariableOp:value:0$Batchnorm_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:i
Batchnorm_1/batchnorm/RsqrtRsqrtBatchnorm_1/batchnorm/add:z:0*
T0*
_output_shapes	
:
(Batchnorm_1/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0
Batchnorm_1/batchnorm/mulMulBatchnorm_1/batchnorm/Rsqrt:y:00Batchnorm_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:
Batchnorm_1/batchnorm/mul_1Mul!Hidden_layer_1/Selu:activations:0Batchnorm_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????
&Batchnorm_1/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0
Batchnorm_1/batchnorm/mul_2Mul.Batchnorm_1/batchnorm/ReadVariableOp_1:value:0Batchnorm_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:
&Batchnorm_1/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0
Batchnorm_1/batchnorm/subSub.Batchnorm_1/batchnorm/ReadVariableOp_2:value:0Batchnorm_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
Batchnorm_1/batchnorm/add_1AddV2Batchnorm_1/batchnorm/mul_1:z:0Batchnorm_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????q
LeakyLU_layer_1/LeakyRelu	LeakyReluBatchnorm_1/batchnorm/add_1:z:0*(
_output_shapes
:?????????
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0?
Hidden_layer_2/MatMulMatMul'LeakyLU_layer_1/LeakyRelu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????o
Hidden_layer_2/SeluSeluHidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
$Batchnorm_2/batchnorm/ReadVariableOpReadVariableOp-batchnorm_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0`
Batchnorm_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
Batchnorm_2/batchnorm/addAddV2,Batchnorm_2/batchnorm/ReadVariableOp:value:0$Batchnorm_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:i
Batchnorm_2/batchnorm/RsqrtRsqrtBatchnorm_2/batchnorm/add:z:0*
T0*
_output_shapes	
:
(Batchnorm_2/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0
Batchnorm_2/batchnorm/mulMulBatchnorm_2/batchnorm/Rsqrt:y:00Batchnorm_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:
Batchnorm_2/batchnorm/mul_1Mul!Hidden_layer_2/Selu:activations:0Batchnorm_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????
&Batchnorm_2/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0
Batchnorm_2/batchnorm/mul_2Mul.Batchnorm_2/batchnorm/ReadVariableOp_1:value:0Batchnorm_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:
&Batchnorm_2/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0
Batchnorm_2/batchnorm/subSub.Batchnorm_2/batchnorm/ReadVariableOp_2:value:0Batchnorm_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
Batchnorm_2/batchnorm/add_1AddV2Batchnorm_2/batchnorm/mul_1:z:0Batchnorm_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????o
Leaky_layer_2/LeakyRelu	LeakyReluBatchnorm_2/batchnorm/add_1:z:0*(
_output_shapes
:?????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/MatMulMatMul%Leaky_layer_2/LeakyRelu:activations:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
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
:?????????ى
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
ء

'__inference_dense_layer_call_fn_6661580

inputs
unknown:	
	unknown_0:
identity?StatefulPartitionedCallط
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
GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6659885o
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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ط
?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6659790

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity?batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ف
ن
'__inference_model_layer_call_fn_6660103
input_discriminator
unknown:	 
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:
identity?StatefulPartitionedCall
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
GPU 2J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6660039o
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
؟
ئ
)__inference_model_2_layer_call_fn_6660483
encoder_input
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:	 
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:


unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:
identity?StatefulPartitionedCallُ
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_6660387o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
ض
ث
D__inference_model_2_layer_call_and_return_conditional_losses_6660944

inputsI
5encoder_hidden_layer_1_matmul_readvariableop_resource:
E
6encoder_hidden_layer_1_biasadd_readvariableop_resource:	H
5encoder_hidden_layer_2_matmul_readvariableop_resource:	dD
6encoder_hidden_layer_2_biasadd_readvariableop_resource:dC
1encoder_mean_layer_matmul_readvariableop_resource:d @
2encoder_mean_layer_biasadd_readvariableop_resource: G
5encoder_variance_layer_matmul_readvariableop_resource:d D
6encoder_variance_layer_biasadd_readvariableop_resource: F
3model_hidden_layer_1_matmul_readvariableop_resource:	 C
4model_hidden_layer_1_biasadd_readvariableop_resource:	B
3model_batchnorm_1_batchnorm_readvariableop_resource:	F
7model_batchnorm_1_batchnorm_mul_readvariableop_resource:	D
5model_batchnorm_1_batchnorm_readvariableop_1_resource:	D
5model_batchnorm_1_batchnorm_readvariableop_2_resource:	G
3model_hidden_layer_2_matmul_readvariableop_resource:
C
4model_hidden_layer_2_biasadd_readvariableop_resource:	B
3model_batchnorm_2_batchnorm_readvariableop_resource:	F
7model_batchnorm_2_batchnorm_mul_readvariableop_resource:	D
5model_batchnorm_2_batchnorm_readvariableop_1_resource:	D
5model_batchnorm_2_batchnorm_readvariableop_2_resource:	=
*model_dense_matmul_readvariableop_resource:	9
+model_dense_biasadd_readvariableop_resource:
identity?-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp?,Encoder/Hidden_layer_1/MatMul/ReadVariableOp?-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp?,Encoder/Hidden_layer_2/MatMul/ReadVariableOp?)Encoder/Mean_layer/BiasAdd/ReadVariableOp?(Encoder/Mean_layer/MatMul/ReadVariableOp?-Encoder/Variance_layer/BiasAdd/ReadVariableOp?,Encoder/Variance_layer/MatMul/ReadVariableOp?*model/Batchnorm_1/batchnorm/ReadVariableOp?,model/Batchnorm_1/batchnorm/ReadVariableOp_1?,model/Batchnorm_1/batchnorm/ReadVariableOp_2?.model/Batchnorm_1/batchnorm/mul/ReadVariableOp?*model/Batchnorm_2/batchnorm/ReadVariableOp?,model/Batchnorm_2/batchnorm/ReadVariableOp_1?,model/Batchnorm_2/batchnorm/ReadVariableOp_2?.model/Batchnorm_2/batchnorm/mul/ReadVariableOp?+model/Hidden_layer_1/BiasAdd/ReadVariableOp?*model/Hidden_layer_1/MatMul/ReadVariableOp?+model/Hidden_layer_2/BiasAdd/ReadVariableOp?*model/Hidden_layer_2/MatMul/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOpl
Encoder/Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  
Encoder/Flatten_layer/ReshapeReshapeinputs$Encoder/Flatten_layer/Const:output:0*
T0*(
_output_shapes
:?????????¤
,Encoder/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp5encoder_hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0?
Encoder/Hidden_layer_1/MatMulMatMul&Encoder/Flatten_layer/Reshape:output:04Encoder/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp6encoder_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0?
Encoder/Hidden_layer_1/BiasAddBiasAdd'Encoder/Hidden_layer_1/MatMul:product:05Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
Encoder/Hidden_layer_1/SeluSelu'Encoder/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
,Encoder/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp5encoder_hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0?
Encoder/Hidden_layer_2/MatMulMatMul)Encoder/Hidden_layer_1/Selu:activations:04Encoder/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d 
-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp6encoder_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0؛
Encoder/Hidden_layer_2/BiasAddBiasAdd'Encoder/Hidden_layer_2/MatMul:product:05Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d~
Encoder/Hidden_layer_2/SeluSelu'Encoder/Hidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
(Encoder/Mean_layer/MatMul/ReadVariableOpReadVariableOp1encoder_mean_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
Encoder/Mean_layer/MatMulMatMul)Encoder/Hidden_layer_2/Selu:activations:00Encoder/Mean_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
)Encoder/Mean_layer/BiasAdd/ReadVariableOpReadVariableOp2encoder_mean_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
Encoder/Mean_layer/BiasAddBiasAdd#Encoder/Mean_layer/MatMul:product:01Encoder/Mean_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
,Encoder/Variance_layer/MatMul/ReadVariableOpReadVariableOp5encoder_variance_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
Encoder/Variance_layer/MatMulMatMul)Encoder/Hidden_layer_2/Selu:activations:04Encoder/Variance_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
-Encoder/Variance_layer/BiasAdd/ReadVariableOpReadVariableOp6encoder_variance_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0؛
Encoder/Variance_layer/BiasAddBiasAdd'Encoder/Variance_layer/MatMul:product:05Encoder/Variance_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? s
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
 *  ?ض
9Encoder/Encoder_output/random_normal/RandomStandardNormalRandomStandardNormal%Encoder/Encoder_output/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed??م)*
seed2ص??
(Encoder/Encoder_output/random_normal/mulMulBEncoder/Encoder_output/random_normal/RandomStandardNormal:output:04Encoder/Encoder_output/random_normal/stddev:output:0*
T0*'
_output_shapes
:????????? ء
$Encoder/Encoder_output/random_normalAddV2,Encoder/Encoder_output/random_normal/mul:z:02Encoder/Encoder_output/random_normal/mean:output:0*
T0*'
_output_shapes
:????????? e
 Encoder/Encoder_output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
Encoder/Encoder_output/truedivRealDiv'Encoder/Variance_layer/BiasAdd:output:0)Encoder/Encoder_output/truediv/y:output:0*
T0*'
_output_shapes
:????????? w
Encoder/Encoder_output/ExpExp"Encoder/Encoder_output/truediv:z:0*
T0*'
_output_shapes
:????????? 
Encoder/Encoder_output/mulMul(Encoder/Encoder_output/random_normal:z:0Encoder/Encoder_output/Exp:y:0*
T0*'
_output_shapes
:????????? 
Encoder/Encoder_output/addAddV2Encoder/Encoder_output/mul:z:0#Encoder/Mean_layer/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 
*model/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp3model_hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0،
model/Hidden_layer_1/MatMulMatMulEncoder/Encoder_output/add:z:02model/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
+model/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp4model_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0?
model/Hidden_layer_1/BiasAddBiasAdd%model/Hidden_layer_1/MatMul:product:03model/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????{
model/Hidden_layer_1/SeluSelu%model/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
*model/Batchnorm_1/batchnorm/ReadVariableOpReadVariableOp3model_batchnorm_1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0f
!model/Batchnorm_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:?
model/Batchnorm_1/batchnorm/addAddV22model/Batchnorm_1/batchnorm/ReadVariableOp:value:0*model/Batchnorm_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:u
!model/Batchnorm_1/batchnorm/RsqrtRsqrt#model/Batchnorm_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?
.model/Batchnorm_1/batchnorm/mul/ReadVariableOpReadVariableOp7model_batchnorm_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0?
model/Batchnorm_1/batchnorm/mulMul%model/Batchnorm_1/batchnorm/Rsqrt:y:06model/Batchnorm_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?
!model/Batchnorm_1/batchnorm/mul_1Mul'model/Hidden_layer_1/Selu:activations:0#model/Batchnorm_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????
,model/Batchnorm_1/batchnorm/ReadVariableOp_1ReadVariableOp5model_batchnorm_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0?
!model/Batchnorm_1/batchnorm/mul_2Mul4model/Batchnorm_1/batchnorm/ReadVariableOp_1:value:0#model/Batchnorm_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:
,model/Batchnorm_1/batchnorm/ReadVariableOp_2ReadVariableOp5model_batchnorm_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0?
model/Batchnorm_1/batchnorm/subSub4model/Batchnorm_1/batchnorm/ReadVariableOp_2:value:0%model/Batchnorm_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?
!model/Batchnorm_1/batchnorm/add_1AddV2%model/Batchnorm_1/batchnorm/mul_1:z:0#model/Batchnorm_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????}
model/LeakyLU_layer_1/LeakyRelu	LeakyRelu%model/Batchnorm_1/batchnorm/add_1:z:0*(
_output_shapes
:????????? 
*model/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp3model_hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0؛
model/Hidden_layer_2/MatMulMatMul-model/LeakyLU_layer_1/LeakyRelu:activations:02model/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
+model/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp4model_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0?
model/Hidden_layer_2/BiasAddBiasAdd%model/Hidden_layer_2/MatMul:product:03model/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????{
model/Hidden_layer_2/SeluSelu%model/Hidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
*model/Batchnorm_2/batchnorm/ReadVariableOpReadVariableOp3model_batchnorm_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0f
!model/Batchnorm_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:?
model/Batchnorm_2/batchnorm/addAddV22model/Batchnorm_2/batchnorm/ReadVariableOp:value:0*model/Batchnorm_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:u
!model/Batchnorm_2/batchnorm/RsqrtRsqrt#model/Batchnorm_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?
.model/Batchnorm_2/batchnorm/mul/ReadVariableOpReadVariableOp7model_batchnorm_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0?
model/Batchnorm_2/batchnorm/mulMul%model/Batchnorm_2/batchnorm/Rsqrt:y:06model/Batchnorm_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?
!model/Batchnorm_2/batchnorm/mul_1Mul'model/Hidden_layer_2/Selu:activations:0#model/Batchnorm_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????
,model/Batchnorm_2/batchnorm/ReadVariableOp_1ReadVariableOp5model_batchnorm_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0?
!model/Batchnorm_2/batchnorm/mul_2Mul4model/Batchnorm_2/batchnorm/ReadVariableOp_1:value:0#model/Batchnorm_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:
,model/Batchnorm_2/batchnorm/ReadVariableOp_2ReadVariableOp5model_batchnorm_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0?
model/Batchnorm_2/batchnorm/subSub4model/Batchnorm_2/batchnorm/ReadVariableOp_2:value:0%model/Batchnorm_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?
!model/Batchnorm_2/batchnorm/add_1AddV2%model/Batchnorm_2/batchnorm/mul_1:z:0#model/Batchnorm_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????{
model/Leaky_layer_2/LeakyRelu	LeakyRelu%model/Batchnorm_2/batchnorm/add_1:z:0*(
_output_shapes
:?????????
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0?
model/dense/MatMulMatMul+model/Leaky_layer_2/LeakyRelu:activations:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
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
:??????????
NoOpNoOp.^Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_1/MatMul/ReadVariableOp.^Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_2/MatMul/ReadVariableOp*^Encoder/Mean_layer/BiasAdd/ReadVariableOp)^Encoder/Mean_layer/MatMul/ReadVariableOp.^Encoder/Variance_layer/BiasAdd/ReadVariableOp-^Encoder/Variance_layer/MatMul/ReadVariableOp+^model/Batchnorm_1/batchnorm/ReadVariableOp-^model/Batchnorm_1/batchnorm/ReadVariableOp_1-^model/Batchnorm_1/batchnorm/ReadVariableOp_2/^model/Batchnorm_1/batchnorm/mul/ReadVariableOp+^model/Batchnorm_2/batchnorm/ReadVariableOp-^model/Batchnorm_2/batchnorm/ReadVariableOp_1-^model/Batchnorm_2/batchnorm/ReadVariableOp_2/^model/Batchnorm_2/batchnorm/mul/ReadVariableOp,^model/Hidden_layer_1/BiasAdd/ReadVariableOp+^model/Hidden_layer_1/MatMul/ReadVariableOp,^model/Hidden_layer_2/BiasAdd/ReadVariableOp+^model/Hidden_layer_2/MatMul/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2^
-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_1/MatMul/ReadVariableOp,Encoder/Hidden_layer_1/MatMul/ReadVariableOp2^
-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_2/MatMul/ReadVariableOp,Encoder/Hidden_layer_2/MatMul/ReadVariableOp2V
)Encoder/Mean_layer/BiasAdd/ReadVariableOp)Encoder/Mean_layer/BiasAdd/ReadVariableOp2T
(Encoder/Mean_layer/MatMul/ReadVariableOp(Encoder/Mean_layer/MatMul/ReadVariableOp2^
-Encoder/Variance_layer/BiasAdd/ReadVariableOp-Encoder/Variance_layer/BiasAdd/ReadVariableOp2\
,Encoder/Variance_layer/MatMul/ReadVariableOp,Encoder/Variance_layer/MatMul/ReadVariableOp2X
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
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
 #

D__inference_Encoder_layer_call_and_return_conditional_losses_6659637
encoder_input*
hidden_layer_1_6659613:
%
hidden_layer_1_6659615:	)
hidden_layer_2_6659618:	d$
hidden_layer_2_6659620:d$
mean_layer_6659623:d  
mean_layer_6659625: (
variance_layer_6659628:d $
variance_layer_6659630: 
identity

identity_1

identity_2?&Encoder_output/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?"Mean_layer/StatefulPartitionedCall?&Variance_layer/StatefulPartitionedCallث
Flatten_layer/PartitionedCallPartitionedCallencoder_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6659341،
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6659613hidden_layer_1_6659615*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659354?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6659618hidden_layer_2_6659620*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659371¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6659623mean_layer_6659625*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6659387?
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6659628variance_layer_6659630*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6659403،
&Encoder_output/StatefulPartitionedCallStatefulPartitionedCall+Mean_layer/StatefulPartitionedCall:output:0/Variance_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6659425z
IdentityIdentity+Mean_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 

Identity_1Identity/Variance_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 

Identity_2Identity/Encoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 
NoOpNoOp'^Encoder_output/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall#^Mean_layer/StatefulPartitionedCall'^Variance_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2P
&Encoder_output/StatefulPartitionedCall&Encoder_output/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2H
"Mean_layer/StatefulPartitionedCall"Mean_layer/StatefulPartitionedCall2P
&Variance_layer/StatefulPartitionedCall&Variance_layer/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
#

D__inference_Encoder_layer_call_and_return_conditional_losses_6659430

inputs*
hidden_layer_1_6659355:
%
hidden_layer_1_6659357:	)
hidden_layer_2_6659372:	d$
hidden_layer_2_6659374:d$
mean_layer_6659388:d  
mean_layer_6659390: (
variance_layer_6659404:d $
variance_layer_6659406: 
identity

identity_1

identity_2?&Encoder_output/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?"Mean_layer/StatefulPartitionedCall?&Variance_layer/StatefulPartitionedCallؤ
Flatten_layer/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6659341،
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6659355hidden_layer_1_6659357*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659354?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6659372hidden_layer_2_6659374*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659371¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6659388mean_layer_6659390*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6659387?
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6659404variance_layer_6659406*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6659403،
&Encoder_output/StatefulPartitionedCallStatefulPartitionedCall+Mean_layer/StatefulPartitionedCall:output:0/Variance_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6659425z
IdentityIdentity+Mean_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 

Identity_1Identity/Variance_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 

Identity_2Identity/Encoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 
NoOpNoOp'^Encoder_output/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall#^Mean_layer/StatefulPartitionedCall'^Variance_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2P
&Encoder_output/StatefulPartitionedCall&Encoder_output/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2H
"Mean_layer/StatefulPartitionedCall"Mean_layer/StatefulPartitionedCall2P
&Variance_layer/StatefulPartitionedCall&Variance_layer/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ت	
?
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6661338

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
ط
 
0__inference_Hidden_layer_2_layer_call_fn_6661484

inputs
unknown:

	unknown_0:	
identity?StatefulPartitionedCallف
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659852p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
خ	
?
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6659403

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
ث6
?
D__inference_Encoder_layer_call_and_return_conditional_losses_6661084

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

identity_2?%Hidden_layer_1/BiasAdd/ReadVariableOp?$Hidden_layer_1/MatMul/ReadVariableOp?%Hidden_layer_2/BiasAdd/ReadVariableOp?$Hidden_layer_2/MatMul/ReadVariableOp?!Mean_layer/BiasAdd/ReadVariableOp? Mean_layer/MatMul/ReadVariableOp?%Variance_layer/BiasAdd/ReadVariableOp?$Variance_layer/MatMul/ReadVariableOpd
Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  y
Flatten_layer/ReshapeReshapeinputsFlatten_layer/Const:output:0*
T0*(
_output_shapes
:?????????
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
Hidden_layer_1/MatMulMatMulFlatten_layer/Reshape:output:0,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????o
Hidden_layer_1/SeluSeluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0?
Hidden_layer_2/MatMulMatMul!Hidden_layer_1/Selu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dn
Hidden_layer_2/SeluSeluHidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
 Mean_layer/MatMul/ReadVariableOpReadVariableOp)mean_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0
Mean_layer/MatMulMatMul!Hidden_layer_2/Selu:activations:0(Mean_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
!Mean_layer/BiasAdd/ReadVariableOpReadVariableOp*mean_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Mean_layer/BiasAddBiasAddMean_layer/MatMul:product:0)Mean_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$Variance_layer/MatMul/ReadVariableOpReadVariableOp-variance_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
Variance_layer/MatMulMatMul!Hidden_layer_2/Selu:activations:0,Variance_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
%Variance_layer/BiasAdd/ReadVariableOpReadVariableOp.variance_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
Variance_layer/BiasAddBiasAddVariance_layer/MatMul:product:0-Variance_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? c
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
 *  ?إ
1Encoder_output/random_normal/RandomStandardNormalRandomStandardNormalEncoder_output/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed??م)*
seed2?!أ
 Encoder_output/random_normal/mulMul:Encoder_output/random_normal/RandomStandardNormal:output:0,Encoder_output/random_normal/stddev:output:0*
T0*'
_output_shapes
:????????? ?
Encoder_output/random_normalAddV2$Encoder_output/random_normal/mul:z:0*Encoder_output/random_normal/mean:output:0*
T0*'
_output_shapes
:????????? ]
Encoder_output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
Encoder_output/truedivRealDivVariance_layer/BiasAdd:output:0!Encoder_output/truediv/y:output:0*
T0*'
_output_shapes
:????????? g
Encoder_output/ExpExpEncoder_output/truediv:z:0*
T0*'
_output_shapes
:????????? 
Encoder_output/mulMul Encoder_output/random_normal:z:0Encoder_output/Exp:y:0*
T0*'
_output_shapes
:????????? 
Encoder_output/addAddV2Encoder_output/mul:z:0Mean_layer/BiasAdd:output:0*
T0*'
_output_shapes
:????????? j
IdentityIdentityMean_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? p

Identity_1IdentityVariance_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? g

Identity_2IdentityEncoder_output/add:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp&^Hidden_layer_1/BiasAdd/ReadVariableOp%^Hidden_layer_1/MatMul/ReadVariableOp&^Hidden_layer_2/BiasAdd/ReadVariableOp%^Hidden_layer_2/MatMul/ReadVariableOp"^Mean_layer/BiasAdd/ReadVariableOp!^Mean_layer/MatMul/ReadVariableOp&^Variance_layer/BiasAdd/ReadVariableOp%^Variance_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2N
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
:?????????
 
_user_specified_nameinputs

ج
-__inference_Batchnorm_1_layer_call_fn_6661425

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6659722p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ظ
z
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6661379
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
 *  ??
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed??م)*
seed2?أ?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:????????? |
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:????????? N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @b
truedivRealDivinputs_1truediv/y:output:0*
T0*'
_output_shapes
:????????? I
ExpExptruediv:z:0*
T0*'
_output_shapes
:????????? X
mulMulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:????????? Q
addAddV2mul:z:0inputs_0*
T0*'
_output_shapes
:????????? O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:????????? :????????? :Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/1
ظ
f
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6661571

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:?????????`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?
-
#__inference__traced_restore_6662056
file_prefix<
(assignvariableop_hidden_layer_1_kernel_1:
7
(assignvariableop_1_hidden_layer_1_bias_1:	=
*assignvariableop_2_hidden_layer_2_kernel_1:	d6
(assignvariableop_3_hidden_layer_2_bias_1:d6
$assignvariableop_4_mean_layer_kernel:d 0
"assignvariableop_5_mean_layer_bias: :
(assignvariableop_6_variance_layer_kernel:d 4
&assignvariableop_7_variance_layer_bias: ;
(assignvariableop_8_hidden_layer_1_kernel:	 5
&assignvariableop_9_hidden_layer_1_bias:	4
%assignvariableop_10_batchnorm_1_gamma:	3
$assignvariableop_11_batchnorm_1_beta:	:
+assignvariableop_12_batchnorm_1_moving_mean:	>
/assignvariableop_13_batchnorm_1_moving_variance:	=
)assignvariableop_14_hidden_layer_2_kernel:
6
'assignvariableop_15_hidden_layer_2_bias:	4
%assignvariableop_16_batchnorm_2_gamma:	3
$assignvariableop_17_batchnorm_2_beta:	:
+assignvariableop_18_batchnorm_2_moving_mean:	>
/assignvariableop_19_batchnorm_2_moving_variance:	3
 assignvariableop_20_dense_kernel:	,
assignvariableop_21_dense_bias:)
assignvariableop_22_adam_iter_1:	 +
!assignvariableop_23_adam_beta_1_1: +
!assignvariableop_24_adam_beta_2_1: *
 assignvariableop_25_adam_decay_1: 2
(assignvariableop_26_adam_learning_rate_1: '
assignvariableop_27_adam_iter:	 )
assignvariableop_28_adam_beta_1: )
assignvariableop_29_adam_beta_2: (
assignvariableop_30_adam_decay: 0
&assignvariableop_31_adam_learning_rate: %
assignvariableop_32_total_1: %
assignvariableop_33_count_1: #
assignvariableop_34_total: #
assignvariableop_35_count: F
2assignvariableop_36_adam_hidden_layer_1_kernel_m_1:
?
0assignvariableop_37_adam_hidden_layer_1_bias_m_1:	E
2assignvariableop_38_adam_hidden_layer_2_kernel_m_1:	d>
0assignvariableop_39_adam_hidden_layer_2_bias_m_1:d>
,assignvariableop_40_adam_mean_layer_kernel_m:d 8
*assignvariableop_41_adam_mean_layer_bias_m: B
0assignvariableop_42_adam_variance_layer_kernel_m:d <
.assignvariableop_43_adam_variance_layer_bias_m: F
2assignvariableop_44_adam_hidden_layer_1_kernel_v_1:
?
0assignvariableop_45_adam_hidden_layer_1_bias_v_1:	E
2assignvariableop_46_adam_hidden_layer_2_kernel_v_1:	d>
0assignvariableop_47_adam_hidden_layer_2_bias_v_1:d>
,assignvariableop_48_adam_mean_layer_kernel_v:d 8
*assignvariableop_49_adam_mean_layer_bias_v: B
0assignvariableop_50_adam_variance_layer_kernel_v:d <
.assignvariableop_51_adam_variance_layer_bias_v: C
0assignvariableop_52_adam_hidden_layer_1_kernel_m:	 =
.assignvariableop_53_adam_hidden_layer_1_bias_m:	;
,assignvariableop_54_adam_batchnorm_1_gamma_m:	:
+assignvariableop_55_adam_batchnorm_1_beta_m:	D
0assignvariableop_56_adam_hidden_layer_2_kernel_m:
=
.assignvariableop_57_adam_hidden_layer_2_bias_m:	;
,assignvariableop_58_adam_batchnorm_2_gamma_m:	:
+assignvariableop_59_adam_batchnorm_2_beta_m:	:
'assignvariableop_60_adam_dense_kernel_m:	3
%assignvariableop_61_adam_dense_bias_m:C
0assignvariableop_62_adam_hidden_layer_1_kernel_v:	 =
.assignvariableop_63_adam_hidden_layer_1_bias_v:	;
,assignvariableop_64_adam_batchnorm_1_gamma_v:	:
+assignvariableop_65_adam_batchnorm_1_beta_v:	D
0assignvariableop_66_adam_hidden_layer_2_kernel_v:
=
.assignvariableop_67_adam_hidden_layer_2_bias_v:	;
,assignvariableop_68_adam_batchnorm_2_gamma_v:	:
+assignvariableop_69_adam_batchnorm_2_beta_v:	:
'assignvariableop_70_adam_dense_kernel_v:	3
%assignvariableop_71_adam_dense_bias_v:
identity_73?AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_8?AssignVariableOp_9%
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*?$
value$B$IB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/10/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/11/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/14/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/15/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/16/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/17/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/20/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXvariables/21/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*?
valueBIB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
¤:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*W
dtypesM
K2I		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp(assignvariableop_hidden_layer_1_kernel_1Identity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp(assignvariableop_1_hidden_layer_1_bias_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp*assignvariableop_2_hidden_layer_2_kernel_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp(assignvariableop_3_hidden_layer_2_bias_1Identity_3:output:0"/device:CPU:0*
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
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp(assignvariableop_8_hidden_layer_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp&assignvariableop_9_hidden_layer_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp%assignvariableop_10_batchnorm_1_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp$assignvariableop_11_batchnorm_1_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp+assignvariableop_12_batchnorm_1_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_13AssignVariableOp/assignvariableop_13_batchnorm_1_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp)assignvariableop_14_hidden_layer_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp'assignvariableop_15_hidden_layer_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp%assignvariableop_16_batchnorm_2_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp$assignvariableop_17_batchnorm_2_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_batchnorm_2_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_19AssignVariableOp/assignvariableop_19_batchnorm_2_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_dense_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_iter_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp!assignvariableop_23_adam_beta_1_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp!assignvariableop_24_adam_beta_2_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp assignvariableop_25_adam_decay_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_learning_rate_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_iterIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_beta_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_2Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_decayIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp&assignvariableop_31_adam_learning_rateIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp2assignvariableop_36_adam_hidden_layer_1_kernel_m_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp0assignvariableop_37_adam_hidden_layer_1_bias_m_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp2assignvariableop_38_adam_hidden_layer_2_kernel_m_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp0assignvariableop_39_adam_hidden_layer_2_bias_m_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp,assignvariableop_40_adam_mean_layer_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_mean_layer_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp0assignvariableop_42_adam_variance_layer_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp.assignvariableop_43_adam_variance_layer_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp2assignvariableop_44_adam_hidden_layer_1_kernel_v_1Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp0assignvariableop_45_adam_hidden_layer_1_bias_v_1Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_hidden_layer_2_kernel_v_1Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp0assignvariableop_47_adam_hidden_layer_2_bias_v_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp,assignvariableop_48_adam_mean_layer_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_mean_layer_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp0assignvariableop_50_adam_variance_layer_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp.assignvariableop_51_adam_variance_layer_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp0assignvariableop_52_adam_hidden_layer_1_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp.assignvariableop_53_adam_hidden_layer_1_bias_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp,assignvariableop_54_adam_batchnorm_1_gamma_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_batchnorm_1_beta_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp0assignvariableop_56_adam_hidden_layer_2_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp.assignvariableop_57_adam_hidden_layer_2_bias_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp,assignvariableop_58_adam_batchnorm_2_gamma_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_batchnorm_2_beta_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_dense_kernel_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp%assignvariableop_61_adam_dense_bias_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp0assignvariableop_62_adam_hidden_layer_1_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp.assignvariableop_63_adam_hidden_layer_1_bias_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp,assignvariableop_64_adam_batchnorm_1_gamma_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_batchnorm_1_beta_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp0assignvariableop_66_adam_hidden_layer_2_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp.assignvariableop_67_adam_hidden_layer_2_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp,assignvariableop_68_adam_batchnorm_2_gamma_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_batchnorm_2_beta_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_dense_kernel_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp%assignvariableop_71_adam_dense_bias_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_72Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_73IdentityIdentity_72:output:0^NoOp_1*
T0*
_output_shapes
: ٌ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_73Identity_73:output:0*?
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
؟
)__inference_model_2_layer_call_fn_6660748

inputs
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:	 
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:


unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:
identity?StatefulPartitionedCallو
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_6660387o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
#

D__inference_Encoder_layer_call_and_return_conditional_losses_6659561

inputs*
hidden_layer_1_6659537:
%
hidden_layer_1_6659539:	)
hidden_layer_2_6659542:	d$
hidden_layer_2_6659544:d$
mean_layer_6659547:d  
mean_layer_6659549: (
variance_layer_6659552:d $
variance_layer_6659554: 
identity

identity_1

identity_2?&Encoder_output/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?"Mean_layer/StatefulPartitionedCall?&Variance_layer/StatefulPartitionedCallؤ
Flatten_layer/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6659341،
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6659537hidden_layer_1_6659539*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659354?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6659542hidden_layer_2_6659544*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659371¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6659547mean_layer_6659549*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6659387?
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6659552variance_layer_6659554*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6659403،
&Encoder_output/StatefulPartitionedCallStatefulPartitionedCall+Mean_layer/StatefulPartitionedCall:output:0/Variance_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6659425z
IdentityIdentity+Mean_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 

Identity_1Identity/Variance_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 

Identity_2Identity/Encoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 
NoOpNoOp'^Encoder_output/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall#^Mean_layer/StatefulPartitionedCall'^Variance_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2P
&Encoder_output/StatefulPartitionedCall&Encoder_output/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2H
"Mean_layer/StatefulPartitionedCall"Mean_layer/StatefulPartitionedCall2P
&Variance_layer/StatefulPartitionedCall&Variance_layer/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
­
K
/__inference_Leaky_layer_2_layer_call_fn_6661566

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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6659872a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
س
ك
)__inference_Encoder_layer_call_fn_6659609
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

identity_2?StatefulPartitionedCallض
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6659561o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
ؤ
f
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6661279

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ب

,__inference_Mean_layer_layer_call_fn_6661328

inputs
unknown:d 
	unknown_0: 
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6659387o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
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
غ$
?
B__inference_model_layer_call_and_return_conditional_losses_6659892

inputs)
hidden_layer_1_6659820:	 %
hidden_layer_1_6659822:	"
batchnorm_1_6659825:	"
batchnorm_1_6659827:	"
batchnorm_1_6659829:	"
batchnorm_1_6659831:	*
hidden_layer_2_6659853:
%
hidden_layer_2_6659855:	"
batchnorm_2_6659858:	"
batchnorm_2_6659860:	"
batchnorm_2_6659862:	"
batchnorm_2_6659864:	 
dense_6659886:	
dense_6659888:
identity?#Batchnorm_1/StatefulPartitionedCall?#Batchnorm_2/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?dense/StatefulPartitionedCall
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_6659820hidden_layer_1_6659822*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659819ط
#Batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0batchnorm_1_6659825batchnorm_1_6659827batchnorm_1_6659829batchnorm_1_6659831*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6659689َ
LeakyLU_layer_1/PartitionedCallPartitionedCall,Batchnorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6659839?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall(LeakyLU_layer_1/PartitionedCall:output:0hidden_layer_2_6659853hidden_layer_2_6659855*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659852ط
#Batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0batchnorm_2_6659858batchnorm_2_6659860batchnorm_2_6659862batchnorm_2_6659864*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6659757ي
Leaky_layer_2/PartitionedCallPartitionedCall,Batchnorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6659872
dense/StatefulPartitionedCallStatefulPartitionedCall&Leaky_layer_2/PartitionedCall:output:0dense_6659886dense_6659888*
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
GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6659885u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
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


?
B__inference_dense_layer_call_and_return_conditional_losses_6661591

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ؤ
f
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6659341

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ؤ
ف
D__inference_model_2_layer_call_and_return_conditional_losses_6660237

inputs#
encoder_6660188:

encoder_6660190:	"
encoder_6660192:	d
encoder_6660194:d!
encoder_6660196:d 
encoder_6660198: !
encoder_6660200:d 
encoder_6660202:  
model_6660207:	 
model_6660209:	
model_6660211:	
model_6660213:	
model_6660215:	
model_6660217:	!
model_6660219:

model_6660221:	
model_6660223:	
model_6660225:	
model_6660227:	
model_6660229:	 
model_6660231:	
model_6660233:
identity?Encoder/StatefulPartitionedCall?model/StatefulPartitionedCall
Encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_6660188encoder_6660190encoder_6660192encoder_6660194encoder_6660196encoder_6660198encoder_6660200encoder_6660202*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6659430ص
model/StatefulPartitionedCallStatefulPartitionedCall(Encoder/StatefulPartitionedCall:output:2model_6660207model_6660209model_6660211model_6660213model_6660215model_6660217model_6660219model_6660221model_6660223model_6660225model_6660227model_6660229model_6660231model_6660233*
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
GPU 2J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6659892u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp ^Encoder/StatefulPartitionedCall^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
خ	
?
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6661357

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
غ
h
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6659839

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:?????????`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

ج
-__inference_Batchnorm_2_layer_call_fn_6661508

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6659757p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659371

inputs1
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
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
:?????????dP
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:?????????da
IdentityIdentitySelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ت	
?
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6659387

inputs0
matmul_readvariableop_resource:d -
biasadd_readvariableop_resource: 
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
س
ك
)__inference_Encoder_layer_call_fn_6659453
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

identity_2?StatefulPartitionedCallض
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6659430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:????????? q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
 #

D__inference_Encoder_layer_call_and_return_conditional_losses_6659665
encoder_input*
hidden_layer_1_6659641:
%
hidden_layer_1_6659643:	)
hidden_layer_2_6659646:	d$
hidden_layer_2_6659648:d$
mean_layer_6659651:d  
mean_layer_6659653: (
variance_layer_6659656:d $
variance_layer_6659658: 
identity

identity_1

identity_2?&Encoder_output/StatefulPartitionedCall?&Hidden_layer_1/StatefulPartitionedCall?&Hidden_layer_2/StatefulPartitionedCall?"Mean_layer/StatefulPartitionedCall?&Variance_layer/StatefulPartitionedCallث
Flatten_layer/PartitionedCallPartitionedCallencoder_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6659341،
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6659641hidden_layer_1_6659643*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659354?
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6659646hidden_layer_2_6659648*
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659371¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6659651mean_layer_6659653*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6659387?
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6659656variance_layer_6659658*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6659403،
&Encoder_output/StatefulPartitionedCallStatefulPartitionedCall+Mean_layer/StatefulPartitionedCall:output:0/Variance_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6659425z
IdentityIdentity+Mean_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 

Identity_1Identity/Variance_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 

Identity_2Identity/Encoder_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 
NoOpNoOp'^Encoder_output/StatefulPartitionedCall'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall#^Mean_layer/StatefulPartitionedCall'^Variance_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2P
&Encoder_output/StatefulPartitionedCall&Encoder_output/StatefulPartitionedCall2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2H
"Mean_layer/StatefulPartitionedCall"Mean_layer/StatefulPartitionedCall2P
&Variance_layer/StatefulPartitionedCall&Variance_layer/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
ط
?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6659757

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity?batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:?????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ظ
f
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6659872

inputs
identityH
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:?????????`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

ج
-__inference_Batchnorm_2_layer_call_fn_6661521

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity?StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6659790p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
س

0__inference_Hidden_layer_2_layer_call_fn_6661308

inputs
unknown:	d
	unknown_0:d
identity?StatefulPartitionedCallـ
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
GPU 2J 8 *T
fORM
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6659371o
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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ع
و
D__inference_model_2_layer_call_and_return_conditional_losses_6660587
encoder_input#
encoder_6660538:

encoder_6660540:	"
encoder_6660542:	d
encoder_6660544:d!
encoder_6660546:d 
encoder_6660548: !
encoder_6660550:d 
encoder_6660552:  
model_6660557:	 
model_6660559:	
model_6660561:	
model_6660563:	
model_6660565:	
model_6660567:	!
model_6660569:

model_6660571:	
model_6660573:	
model_6660575:	
model_6660577:	
model_6660579:	 
model_6660581:	
model_6660583:
identity?Encoder/StatefulPartitionedCall?model/StatefulPartitionedCall
Encoder/StatefulPartitionedCallStatefulPartitionedCallencoder_inputencoder_6660538encoder_6660540encoder_6660542encoder_6660544encoder_6660546encoder_6660548encoder_6660550encoder_6660552*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:????????? :????????? :????????? **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_6659561ص
model/StatefulPartitionedCallStatefulPartitionedCall(Encoder/StatefulPartitionedCall:output:2model_6660557model_6660559model_6660561model_6660563model_6660565model_6660567model_6660569model_6660571model_6660573model_6660575model_6660577model_6660579model_6660581model_6660583*
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
GPU 2J 8 *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_6660039u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp ^Encoder/StatefulPartitionedCall^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
د
x
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6659425

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
 *  ??
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed??م)*
seed2ش
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:????????? |
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:????????? N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @b
truedivRealDivinputs_1truediv/y:output:0*
T0*'
_output_shapes
:????????? I
ExpExptruediv:z:0*
T0*'
_output_shapes
:????????? X
mulMulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:????????? O
addAddV2mul:z:0inputs*
T0*'
_output_shapes
:????????? O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:????????? :????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
؟
ئ
)__inference_model_2_layer_call_fn_6660284
encoder_input
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:	 
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:


unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:
identity?StatefulPartitionedCallُ
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_6660237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
ص
ث
D__inference_model_2_layer_call_and_return_conditional_losses_6660846

inputsI
5encoder_hidden_layer_1_matmul_readvariableop_resource:
E
6encoder_hidden_layer_1_biasadd_readvariableop_resource:	H
5encoder_hidden_layer_2_matmul_readvariableop_resource:	dD
6encoder_hidden_layer_2_biasadd_readvariableop_resource:dC
1encoder_mean_layer_matmul_readvariableop_resource:d @
2encoder_mean_layer_biasadd_readvariableop_resource: G
5encoder_variance_layer_matmul_readvariableop_resource:d D
6encoder_variance_layer_biasadd_readvariableop_resource: F
3model_hidden_layer_1_matmul_readvariableop_resource:	 C
4model_hidden_layer_1_biasadd_readvariableop_resource:	B
3model_batchnorm_1_batchnorm_readvariableop_resource:	F
7model_batchnorm_1_batchnorm_mul_readvariableop_resource:	D
5model_batchnorm_1_batchnorm_readvariableop_1_resource:	D
5model_batchnorm_1_batchnorm_readvariableop_2_resource:	G
3model_hidden_layer_2_matmul_readvariableop_resource:
C
4model_hidden_layer_2_biasadd_readvariableop_resource:	B
3model_batchnorm_2_batchnorm_readvariableop_resource:	F
7model_batchnorm_2_batchnorm_mul_readvariableop_resource:	D
5model_batchnorm_2_batchnorm_readvariableop_1_resource:	D
5model_batchnorm_2_batchnorm_readvariableop_2_resource:	=
*model_dense_matmul_readvariableop_resource:	9
+model_dense_biasadd_readvariableop_resource:
identity?-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp?,Encoder/Hidden_layer_1/MatMul/ReadVariableOp?-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp?,Encoder/Hidden_layer_2/MatMul/ReadVariableOp?)Encoder/Mean_layer/BiasAdd/ReadVariableOp?(Encoder/Mean_layer/MatMul/ReadVariableOp?-Encoder/Variance_layer/BiasAdd/ReadVariableOp?,Encoder/Variance_layer/MatMul/ReadVariableOp?*model/Batchnorm_1/batchnorm/ReadVariableOp?,model/Batchnorm_1/batchnorm/ReadVariableOp_1?,model/Batchnorm_1/batchnorm/ReadVariableOp_2?.model/Batchnorm_1/batchnorm/mul/ReadVariableOp?*model/Batchnorm_2/batchnorm/ReadVariableOp?,model/Batchnorm_2/batchnorm/ReadVariableOp_1?,model/Batchnorm_2/batchnorm/ReadVariableOp_2?.model/Batchnorm_2/batchnorm/mul/ReadVariableOp?+model/Hidden_layer_1/BiasAdd/ReadVariableOp?*model/Hidden_layer_1/MatMul/ReadVariableOp?+model/Hidden_layer_2/BiasAdd/ReadVariableOp?*model/Hidden_layer_2/MatMul/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOpl
Encoder/Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  
Encoder/Flatten_layer/ReshapeReshapeinputs$Encoder/Flatten_layer/Const:output:0*
T0*(
_output_shapes
:?????????¤
,Encoder/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp5encoder_hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0?
Encoder/Hidden_layer_1/MatMulMatMul&Encoder/Flatten_layer/Reshape:output:04Encoder/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp6encoder_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0?
Encoder/Hidden_layer_1/BiasAddBiasAdd'Encoder/Hidden_layer_1/MatMul:product:05Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
Encoder/Hidden_layer_1/SeluSelu'Encoder/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
,Encoder/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp5encoder_hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0?
Encoder/Hidden_layer_2/MatMulMatMul)Encoder/Hidden_layer_1/Selu:activations:04Encoder/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d 
-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp6encoder_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0؛
Encoder/Hidden_layer_2/BiasAddBiasAdd'Encoder/Hidden_layer_2/MatMul:product:05Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d~
Encoder/Hidden_layer_2/SeluSelu'Encoder/Hidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
(Encoder/Mean_layer/MatMul/ReadVariableOpReadVariableOp1encoder_mean_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
Encoder/Mean_layer/MatMulMatMul)Encoder/Hidden_layer_2/Selu:activations:00Encoder/Mean_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
)Encoder/Mean_layer/BiasAdd/ReadVariableOpReadVariableOp2encoder_mean_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
Encoder/Mean_layer/BiasAddBiasAdd#Encoder/Mean_layer/MatMul:product:01Encoder/Mean_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
,Encoder/Variance_layer/MatMul/ReadVariableOpReadVariableOp5encoder_variance_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
Encoder/Variance_layer/MatMulMatMul)Encoder/Hidden_layer_2/Selu:activations:04Encoder/Variance_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????  
-Encoder/Variance_layer/BiasAdd/ReadVariableOpReadVariableOp6encoder_variance_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0؛
Encoder/Variance_layer/BiasAddBiasAdd'Encoder/Variance_layer/MatMul:product:05Encoder/Variance_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? s
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
 *  ?ص
9Encoder/Encoder_output/random_normal/RandomStandardNormalRandomStandardNormal%Encoder/Encoder_output/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed??م)*
seed2?حo?
(Encoder/Encoder_output/random_normal/mulMulBEncoder/Encoder_output/random_normal/RandomStandardNormal:output:04Encoder/Encoder_output/random_normal/stddev:output:0*
T0*'
_output_shapes
:????????? ء
$Encoder/Encoder_output/random_normalAddV2,Encoder/Encoder_output/random_normal/mul:z:02Encoder/Encoder_output/random_normal/mean:output:0*
T0*'
_output_shapes
:????????? e
 Encoder/Encoder_output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
Encoder/Encoder_output/truedivRealDiv'Encoder/Variance_layer/BiasAdd:output:0)Encoder/Encoder_output/truediv/y:output:0*
T0*'
_output_shapes
:????????? w
Encoder/Encoder_output/ExpExp"Encoder/Encoder_output/truediv:z:0*
T0*'
_output_shapes
:????????? 
Encoder/Encoder_output/mulMul(Encoder/Encoder_output/random_normal:z:0Encoder/Encoder_output/Exp:y:0*
T0*'
_output_shapes
:????????? 
Encoder/Encoder_output/addAddV2Encoder/Encoder_output/mul:z:0#Encoder/Mean_layer/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 
*model/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp3model_hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0،
model/Hidden_layer_1/MatMulMatMulEncoder/Encoder_output/add:z:02model/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
+model/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp4model_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0?
model/Hidden_layer_1/BiasAddBiasAdd%model/Hidden_layer_1/MatMul:product:03model/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????{
model/Hidden_layer_1/SeluSelu%model/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
*model/Batchnorm_1/batchnorm/ReadVariableOpReadVariableOp3model_batchnorm_1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0f
!model/Batchnorm_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:?
model/Batchnorm_1/batchnorm/addAddV22model/Batchnorm_1/batchnorm/ReadVariableOp:value:0*model/Batchnorm_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:u
!model/Batchnorm_1/batchnorm/RsqrtRsqrt#model/Batchnorm_1/batchnorm/add:z:0*
T0*
_output_shapes	
:?
.model/Batchnorm_1/batchnorm/mul/ReadVariableOpReadVariableOp7model_batchnorm_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0?
model/Batchnorm_1/batchnorm/mulMul%model/Batchnorm_1/batchnorm/Rsqrt:y:06model/Batchnorm_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?
!model/Batchnorm_1/batchnorm/mul_1Mul'model/Hidden_layer_1/Selu:activations:0#model/Batchnorm_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????
,model/Batchnorm_1/batchnorm/ReadVariableOp_1ReadVariableOp5model_batchnorm_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0?
!model/Batchnorm_1/batchnorm/mul_2Mul4model/Batchnorm_1/batchnorm/ReadVariableOp_1:value:0#model/Batchnorm_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:
,model/Batchnorm_1/batchnorm/ReadVariableOp_2ReadVariableOp5model_batchnorm_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0?
model/Batchnorm_1/batchnorm/subSub4model/Batchnorm_1/batchnorm/ReadVariableOp_2:value:0%model/Batchnorm_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?
!model/Batchnorm_1/batchnorm/add_1AddV2%model/Batchnorm_1/batchnorm/mul_1:z:0#model/Batchnorm_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????}
model/LeakyLU_layer_1/LeakyRelu	LeakyRelu%model/Batchnorm_1/batchnorm/add_1:z:0*(
_output_shapes
:????????? 
*model/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp3model_hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0؛
model/Hidden_layer_2/MatMulMatMul-model/LeakyLU_layer_1/LeakyRelu:activations:02model/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
+model/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp4model_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0?
model/Hidden_layer_2/BiasAddBiasAdd%model/Hidden_layer_2/MatMul:product:03model/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????{
model/Hidden_layer_2/SeluSelu%model/Hidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
*model/Batchnorm_2/batchnorm/ReadVariableOpReadVariableOp3model_batchnorm_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0f
!model/Batchnorm_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:?
model/Batchnorm_2/batchnorm/addAddV22model/Batchnorm_2/batchnorm/ReadVariableOp:value:0*model/Batchnorm_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:u
!model/Batchnorm_2/batchnorm/RsqrtRsqrt#model/Batchnorm_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?
.model/Batchnorm_2/batchnorm/mul/ReadVariableOpReadVariableOp7model_batchnorm_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0?
model/Batchnorm_2/batchnorm/mulMul%model/Batchnorm_2/batchnorm/Rsqrt:y:06model/Batchnorm_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?
!model/Batchnorm_2/batchnorm/mul_1Mul'model/Hidden_layer_2/Selu:activations:0#model/Batchnorm_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????
,model/Batchnorm_2/batchnorm/ReadVariableOp_1ReadVariableOp5model_batchnorm_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0?
!model/Batchnorm_2/batchnorm/mul_2Mul4model/Batchnorm_2/batchnorm/ReadVariableOp_1:value:0#model/Batchnorm_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:
,model/Batchnorm_2/batchnorm/ReadVariableOp_2ReadVariableOp5model_batchnorm_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0?
model/Batchnorm_2/batchnorm/subSub4model/Batchnorm_2/batchnorm/ReadVariableOp_2:value:0%model/Batchnorm_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?
!model/Batchnorm_2/batchnorm/add_1AddV2%model/Batchnorm_2/batchnorm/mul_1:z:0#model/Batchnorm_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????{
model/Leaky_layer_2/LeakyRelu	LeakyRelu%model/Batchnorm_2/batchnorm/add_1:z:0*(
_output_shapes
:?????????
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0?
model/dense/MatMulMatMul+model/Leaky_layer_2/LeakyRelu:activations:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
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
:??????????
NoOpNoOp.^Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_1/MatMul/ReadVariableOp.^Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_2/MatMul/ReadVariableOp*^Encoder/Mean_layer/BiasAdd/ReadVariableOp)^Encoder/Mean_layer/MatMul/ReadVariableOp.^Encoder/Variance_layer/BiasAdd/ReadVariableOp-^Encoder/Variance_layer/MatMul/ReadVariableOp+^model/Batchnorm_1/batchnorm/ReadVariableOp-^model/Batchnorm_1/batchnorm/ReadVariableOp_1-^model/Batchnorm_1/batchnorm/ReadVariableOp_2/^model/Batchnorm_1/batchnorm/mul/ReadVariableOp+^model/Batchnorm_2/batchnorm/ReadVariableOp-^model/Batchnorm_2/batchnorm/ReadVariableOp_1-^model/Batchnorm_2/batchnorm/ReadVariableOp_2/^model/Batchnorm_2/batchnorm/mul/ReadVariableOp,^model/Hidden_layer_1/BiasAdd/ReadVariableOp+^model/Hidden_layer_1/MatMul/ReadVariableOp,^model/Hidden_layer_2/BiasAdd/ReadVariableOp+^model/Hidden_layer_2/MatMul/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 2^
-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_1/MatMul/ReadVariableOp,Encoder/Hidden_layer_1/MatMul/ReadVariableOp2^
-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_2/MatMul/ReadVariableOp,Encoder/Hidden_layer_2/MatMul/ReadVariableOp2V
)Encoder/Mean_layer/BiasAdd/ReadVariableOp)Encoder/Mean_layer/BiasAdd/ReadVariableOp2T
(Encoder/Mean_layer/MatMul/ReadVariableOp(Encoder/Mean_layer/MatMul/ReadVariableOp2^
-Encoder/Variance_layer/BiasAdd/ReadVariableOp-Encoder/Variance_layer/BiasAdd/ReadVariableOp2\
,Encoder/Variance_layer/MatMul/ReadVariableOp,Encoder/Variance_layer/MatMul/ReadVariableOp2X
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
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ج6
?
D__inference_Encoder_layer_call_and_return_conditional_losses_6661039

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

identity_2?%Hidden_layer_1/BiasAdd/ReadVariableOp?$Hidden_layer_1/MatMul/ReadVariableOp?%Hidden_layer_2/BiasAdd/ReadVariableOp?$Hidden_layer_2/MatMul/ReadVariableOp?!Mean_layer/BiasAdd/ReadVariableOp? Mean_layer/MatMul/ReadVariableOp?%Variance_layer/BiasAdd/ReadVariableOp?$Variance_layer/MatMul/ReadVariableOpd
Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  y
Flatten_layer/ReshapeReshapeinputsFlatten_layer/Const:output:0*
T0*(
_output_shapes
:?????????
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0 
Hidden_layer_1/MatMulMatMulFlatten_layer/Reshape:output:0,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????o
Hidden_layer_1/SeluSeluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0?
Hidden_layer_2/MatMulMatMul!Hidden_layer_1/Selu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dn
Hidden_layer_2/SeluSeluHidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
 Mean_layer/MatMul/ReadVariableOpReadVariableOp)mean_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0
Mean_layer/MatMulMatMul!Hidden_layer_2/Selu:activations:0(Mean_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
!Mean_layer/BiasAdd/ReadVariableOpReadVariableOp*mean_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Mean_layer/BiasAddBiasAddMean_layer/MatMul:product:0)Mean_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
$Variance_layer/MatMul/ReadVariableOpReadVariableOp-variance_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0?
Variance_layer/MatMulMatMul!Hidden_layer_2/Selu:activations:0,Variance_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 
%Variance_layer/BiasAdd/ReadVariableOpReadVariableOp.variance_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
Variance_layer/BiasAddBiasAddVariance_layer/MatMul:product:0-Variance_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? c
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
 *  ?ئ
1Encoder_output/random_normal/RandomStandardNormalRandomStandardNormalEncoder_output/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed??م)*
seed2?ٌسأ
 Encoder_output/random_normal/mulMul:Encoder_output/random_normal/RandomStandardNormal:output:0,Encoder_output/random_normal/stddev:output:0*
T0*'
_output_shapes
:????????? ?
Encoder_output/random_normalAddV2$Encoder_output/random_normal/mul:z:0*Encoder_output/random_normal/mean:output:0*
T0*'
_output_shapes
:????????? ]
Encoder_output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
Encoder_output/truedivRealDivVariance_layer/BiasAdd:output:0!Encoder_output/truediv/y:output:0*
T0*'
_output_shapes
:????????? g
Encoder_output/ExpExpEncoder_output/truediv:z:0*
T0*'
_output_shapes
:????????? 
Encoder_output/mulMul Encoder_output/random_normal:z:0Encoder_output/Exp:y:0*
T0*'
_output_shapes
:????????? 
Encoder_output/addAddV2Encoder_output/mul:z:0Mean_layer/BiasAdd:output:0*
T0*'
_output_shapes
:????????? j
IdentityIdentityMean_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? p

Identity_1IdentityVariance_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? g

Identity_2IdentityEncoder_output/add:z:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp&^Hidden_layer_1/BiasAdd/ReadVariableOp%^Hidden_layer_1/MatMul/ReadVariableOp&^Hidden_layer_2/BiasAdd/ReadVariableOp%^Hidden_layer_2/MatMul/ReadVariableOp"^Mean_layer/BiasAdd/ReadVariableOp!^Mean_layer/MatMul/ReadVariableOp&^Variance_layer/BiasAdd/ReadVariableOp%^Variance_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2N
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
:?????????
 
_user_specified_nameinputs
¤I
?
B__inference_model_layer_call_and_return_conditional_losses_6661268

inputs@
-hidden_layer_1_matmul_readvariableop_resource:	 =
.hidden_layer_1_biasadd_readvariableop_resource:	<
-batchnorm_1_batchnorm_readvariableop_resource:	@
1batchnorm_1_batchnorm_mul_readvariableop_resource:	>
/batchnorm_1_batchnorm_readvariableop_1_resource:	>
/batchnorm_1_batchnorm_readvariableop_2_resource:	A
-hidden_layer_2_matmul_readvariableop_resource:
=
.hidden_layer_2_biasadd_readvariableop_resource:	<
-batchnorm_2_batchnorm_readvariableop_resource:	@
1batchnorm_2_batchnorm_mul_readvariableop_resource:	>
/batchnorm_2_batchnorm_readvariableop_1_resource:	>
/batchnorm_2_batchnorm_readvariableop_2_resource:	7
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity?$Batchnorm_1/batchnorm/ReadVariableOp?&Batchnorm_1/batchnorm/ReadVariableOp_1?&Batchnorm_1/batchnorm/ReadVariableOp_2?(Batchnorm_1/batchnorm/mul/ReadVariableOp?$Batchnorm_2/batchnorm/ReadVariableOp?&Batchnorm_2/batchnorm/ReadVariableOp_1?&Batchnorm_2/batchnorm/ReadVariableOp_2?(Batchnorm_2/batchnorm/mul/ReadVariableOp?%Hidden_layer_1/BiasAdd/ReadVariableOp?$Hidden_layer_1/MatMul/ReadVariableOp?%Hidden_layer_2/BiasAdd/ReadVariableOp?$Hidden_layer_2/MatMul/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
Hidden_layer_1/MatMulMatMulinputs,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????o
Hidden_layer_1/SeluSeluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
$Batchnorm_1/batchnorm/ReadVariableOpReadVariableOp-batchnorm_1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0`
Batchnorm_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
Batchnorm_1/batchnorm/addAddV2,Batchnorm_1/batchnorm/ReadVariableOp:value:0$Batchnorm_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:i
Batchnorm_1/batchnorm/RsqrtRsqrtBatchnorm_1/batchnorm/add:z:0*
T0*
_output_shapes	
:
(Batchnorm_1/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0
Batchnorm_1/batchnorm/mulMulBatchnorm_1/batchnorm/Rsqrt:y:00Batchnorm_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:
Batchnorm_1/batchnorm/mul_1Mul!Hidden_layer_1/Selu:activations:0Batchnorm_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????
&Batchnorm_1/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0
Batchnorm_1/batchnorm/mul_2Mul.Batchnorm_1/batchnorm/ReadVariableOp_1:value:0Batchnorm_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:
&Batchnorm_1/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0
Batchnorm_1/batchnorm/subSub.Batchnorm_1/batchnorm/ReadVariableOp_2:value:0Batchnorm_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
Batchnorm_1/batchnorm/add_1AddV2Batchnorm_1/batchnorm/mul_1:z:0Batchnorm_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????q
LeakyLU_layer_1/LeakyRelu	LeakyReluBatchnorm_1/batchnorm/add_1:z:0*(
_output_shapes
:?????????
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0?
Hidden_layer_2/MatMulMatMul'LeakyLU_layer_1/LeakyRelu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????o
Hidden_layer_2/SeluSeluHidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
$Batchnorm_2/batchnorm/ReadVariableOpReadVariableOp-batchnorm_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0`
Batchnorm_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
Batchnorm_2/batchnorm/addAddV2,Batchnorm_2/batchnorm/ReadVariableOp:value:0$Batchnorm_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:i
Batchnorm_2/batchnorm/RsqrtRsqrtBatchnorm_2/batchnorm/add:z:0*
T0*
_output_shapes	
:
(Batchnorm_2/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0
Batchnorm_2/batchnorm/mulMulBatchnorm_2/batchnorm/Rsqrt:y:00Batchnorm_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:
Batchnorm_2/batchnorm/mul_1Mul!Hidden_layer_2/Selu:activations:0Batchnorm_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:?????????
&Batchnorm_2/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0
Batchnorm_2/batchnorm/mul_2Mul.Batchnorm_2/batchnorm/ReadVariableOp_1:value:0Batchnorm_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:
&Batchnorm_2/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0
Batchnorm_2/batchnorm/subSub.Batchnorm_2/batchnorm/ReadVariableOp_2:value:0Batchnorm_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
Batchnorm_2/batchnorm/add_1AddV2Batchnorm_2/batchnorm/mul_1:z:0Batchnorm_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:?????????o
Leaky_layer_2/LeakyRelu	LeakyReluBatchnorm_2/batchnorm/add_1:z:0*(
_output_shapes
:?????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/MatMulMatMul%Leaky_layer_2/LeakyRelu:activations:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
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
:?????????ى
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

آ
%__inference_signature_wrapper_6660644
encoder_input
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:	 
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:


unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:
identity?StatefulPartitionedCallح
StatefulPartitionedCallStatefulPartitionedCallencoder_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_6659328o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_nameEncoder_input
?

?
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6661319

inputs1
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
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
:?????????dP
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:?????????da
IdentityIdentitySelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

y
0__inference_Encoder_output_layer_call_fn_6661363
inputs_0
inputs_1
identity?StatefulPartitionedCallس
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6659425o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:????????? :????????? 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:????????? 
"
_user_specified_name
inputs/1
ط
 
0__inference_Hidden_layer_1_layer_call_fn_6661288

inputs
unknown:

	unknown_0:	
identity?StatefulPartitionedCallف
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659354p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6659354

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity?BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
SeluSeluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentitySelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs"؟L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default¤
K
Encoder_input:
serving_default_Encoder_input:0?????????9
model0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
ي
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_network
 
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
 layer_with_weights-4
 layer-7
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'	optimizer"
_tf_keras_network
ئ
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513
614
715
816
917
:18
;19
<20
=21"
trackable_list_wrapper
X
(0
)1
*2
+3
,4
-5
.6
/7"
trackable_list_wrapper
 "
trackable_list_wrapper
ت
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
غ
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32ُ
)__inference_model_2_layer_call_fn_6660284
)__inference_model_2_layer_call_fn_6660699
)__inference_model_2_layer_call_fn_6660748
)__inference_model_2_layer_call_fn_6660483?
???
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
kwonlydefaults? 
annotations? *
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
ئ
Gtrace_0
Htrace_1
Itrace_2
Jtrace_32?
D__inference_model_2_layer_call_and_return_conditional_losses_6660846
D__inference_model_2_layer_call_and_return_conditional_losses_6660944
D__inference_model_2_layer_call_and_return_conditional_losses_6660535
D__inference_model_2_layer_call_and_return_conditional_losses_6660587?
???
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
kwonlydefaults? 
annotations? *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
سBذ
"__inference__wrapped_model_6659328Encoder_input"
?
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotations? *
 
?
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_rate(m?)m?*m?+m،,m­-m?.m?/m?(v?)v?*v?+v?,v?-v?.v?/v?"
	optimizer
,
Pserving_default"
signature_map
?
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
؛
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

(kernel
)bias"
_tf_keras_layer
؛
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
؛
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
؛
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
?
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
X
(0
)1
*2
+3
,4
-5
.6
/7"
trackable_list_wrapper
X
(0
)1
*2
+3
,4
-5
.6
/7"
trackable_list_wrapper
 "
trackable_list_wrapper
­
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
غ
ztrace_0
{trace_1
|trace_2
}trace_32ُ
)__inference_Encoder_layer_call_fn_6659453
)__inference_Encoder_layer_call_fn_6660969
)__inference_Encoder_layer_call_fn_6660994
)__inference_Encoder_layer_call_fn_6659609?
???
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
kwonlydefaults? 
annotations? *
 zztrace_0z{trace_1z|trace_2z}trace_3
ت
~trace_0
trace_1
trace_2
trace_32?
D__inference_Encoder_layer_call_and_return_conditional_losses_6661039
D__inference_Encoder_layer_call_and_return_conditional_losses_6661084
D__inference_Encoder_layer_call_and_return_conditional_losses_6659637
D__inference_Encoder_layer_call_and_return_conditional_losses_6659665?
???
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
kwonlydefaults? 
annotations? *
 z~trace_0ztrace_1ztrace_2ztrace_3
"
_tf_keras_input_layer
ء
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

0kernel
1bias"
_tf_keras_layer
ّ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	2gamma
3beta
4moving_mean
5moving_variance"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ء
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

6kernel
7bias"
_tf_keras_layer
ّ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses
	?axis
	8gamma
9beta
:moving_mean
;moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
¤regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
ء
?	variables
?trainable_variables
?regularization_losses
?	keras_api
،__call__
+­&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer

00
11
22
33
44
55
66
77
88
99
:10
;11
<12
=13"
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
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
غ
?trace_0
?trace_1
?trace_2
?trace_32ه
'__inference_model_layer_call_fn_6659923
'__inference_model_layer_call_fn_6661117
'__inference_model_layer_call_fn_6661150
'__inference_model_layer_call_fn_6660103?
???
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
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
ئ
?trace_0
?trace_1
?trace_2
?trace_32س
B__inference_model_layer_call_and_return_conditional_losses_6661209
B__inference_model_layer_call_and_return_conditional_losses_6661268
B__inference_model_layer_call_and_return_conditional_losses_6660142
B__inference_model_layer_call_and_return_conditional_losses_6660181?
???
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
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
 
	؛iter
?beta_1
?beta_2

?decay
؟learning_rate0m?1m?2m؛3m?6m?7m?8m؟9m?<mء=mآ0vأ1vؤ2vإ3vئ6vا7vب8vة9vت<vث=vج"
	optimizer
):'
2Hidden_layer_1/kernel
": 2Hidden_layer_1/bias
(:&	d2Hidden_layer_2/kernel
!:d2Hidden_layer_2/bias
#:!d 2Mean_layer/kernel
: 2Mean_layer/bias
':%d 2Variance_layer/kernel
!: 2Variance_layer/bias
(:&	 2Hidden_layer_1/kernel
": 2Hidden_layer_1/bias
 :2Batchnorm_1/gamma
:2Batchnorm_1/beta
(:& (2Batchnorm_1/moving_mean
,:* (2Batchnorm_1/moving_variance
):'
2Hidden_layer_2/kernel
": 2Hidden_layer_2/bias
 :2Batchnorm_2/gamma
:2Batchnorm_2/beta
(:& (2Batchnorm_2/moving_mean
,:* (2Batchnorm_2/moving_variance
:	2dense/kernel
:2
dense/bias

00
11
22
33
44
55
66
77
88
99
:10
;11
<12
=13"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B?
)__inference_model_2_layer_call_fn_6660284Encoder_input"?
???
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
kwonlydefaults? 
annotations? *
 
?B?
)__inference_model_2_layer_call_fn_6660699inputs"?
???
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
kwonlydefaults? 
annotations? *
 
?B?
)__inference_model_2_layer_call_fn_6660748inputs"?
???
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
kwonlydefaults? 
annotations? *
 
B?
)__inference_model_2_layer_call_fn_6660483Encoder_input"?
???
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
kwonlydefaults? 
annotations? *
 
B
D__inference_model_2_layer_call_and_return_conditional_losses_6660846inputs"?
???
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
kwonlydefaults? 
annotations? *
 
B
D__inference_model_2_layer_call_and_return_conditional_losses_6660944inputs"?
???
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
kwonlydefaults? 
annotations? *
 
B
D__inference_model_2_layer_call_and_return_conditional_losses_6660535Encoder_input"?
???
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
kwonlydefaults? 
annotations? *
 
B
D__inference_model_2_layer_call_and_return_conditional_losses_6660587Encoder_input"?
???
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
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
زBد
%__inference_signature_wrapper_6660644Encoder_input"
?
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
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ءnon_trainable_variables
آlayers
أmetrics
 ؤlayer_regularization_losses
إlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
?
ئtrace_02ض
/__inference_Flatten_layer_layer_call_fn_6661273?
?
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
annotations? *
 zئtrace_0

اtrace_02ّ
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6661279?
?
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
annotations? *
 zاtrace_0
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
بnon_trainable_variables
ةlayers
تmetrics
 ثlayer_regularization_losses
جlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
?
حtrace_02ط
0__inference_Hidden_layer_1_layer_call_fn_6661288?
?
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
annotations? *
 zحtrace_0

خtrace_02ْ
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6661299?
?
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
annotations? *
 zخtrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
دnon_trainable_variables
ذlayers
رmetrics
 زlayer_regularization_losses
سlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
?
شtrace_02ط
0__inference_Hidden_layer_2_layer_call_fn_6661308?
?
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
annotations? *
 zشtrace_0

صtrace_02ْ
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6661319?
?
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
annotations? *
 zصtrace_0
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
?
ضnon_trainable_variables
طlayers
ظmetrics
 عlayer_regularization_losses
غlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ْ
?trace_02س
,__inference_Mean_layer_layer_call_fn_6661328?
?
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
annotations? *
 z?trace_0

?trace_02َ
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6661338?
?
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
annotations? *
 z?trace_0
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ـlayer_regularization_losses
فlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
?
قtrace_02ط
0__inference_Variance_layer_layer_call_fn_6661347?
?
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
annotations? *
 zقtrace_0

كtrace_02ْ
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6661357?
?
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
annotations? *
 zكtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
لnon_trainable_variables
مlayers
نmetrics
 هlayer_regularization_losses
وlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
?
ىtrace_02ط
0__inference_Encoder_output_layer_call_fn_6661363?
?
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
annotations? *
 zىtrace_0

يtrace_02ْ
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6661379?
?
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
annotations? *
 zيtrace_0
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B?
)__inference_Encoder_layer_call_fn_6659453Encoder_input"?
???
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
kwonlydefaults? 
annotations? *
 
?B?
)__inference_Encoder_layer_call_fn_6660969inputs"?
???
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
kwonlydefaults? 
annotations? *
 
?B?
)__inference_Encoder_layer_call_fn_6660994inputs"?
???
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
kwonlydefaults? 
annotations? *
 
B?
)__inference_Encoder_layer_call_fn_6659609Encoder_input"?
???
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
kwonlydefaults? 
annotations? *
 
B
D__inference_Encoder_layer_call_and_return_conditional_losses_6661039inputs"?
???
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
kwonlydefaults? 
annotations? *
 
B
D__inference_Encoder_layer_call_and_return_conditional_losses_6661084inputs"?
???
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
kwonlydefaults? 
annotations? *
 
B
D__inference_Encoder_layer_call_and_return_conditional_losses_6659637Encoder_input"?
???
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
kwonlydefaults? 
annotations? *
 
B
D__inference_Encoder_layer_call_and_return_conditional_losses_6659665Encoder_input"?
???
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
kwonlydefaults? 
annotations? *
 
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ًnon_trainable_variables
ٌlayers
ٍmetrics
 َlayer_regularization_losses
ُlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
?
ِtrace_02ط
0__inference_Hidden_layer_1_layer_call_fn_6661388?
?
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
annotations? *
 zِtrace_0

ّtrace_02ْ
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6661399?
?
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
annotations? *
 zّtrace_0
<
20
31
42
53"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ْnon_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ذ
?trace_0
?trace_12
-__inference_Batchnorm_1_layer_call_fn_6661412
-__inference_Batchnorm_1_layer_call_fn_6661425?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1

?trace_0
?trace_12ث
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6661445
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6661465?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
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
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
?
trace_02ظ
1__inference_LeakyLU_layer_1_layer_call_fn_6661470?
?
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
annotations? *
 ztrace_0

trace_02?
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6661475?
?
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
annotations? *
 ztrace_0
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
?
trace_02ط
0__inference_Hidden_layer_2_layer_call_fn_6661484?
?
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
annotations? *
 ztrace_0

trace_02ْ
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6661495?
?
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
annotations? *
 ztrace_0
<
80
91
:2
;3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
ذ
trace_0
trace_12
-__inference_Batchnorm_2_layer_call_fn_6661508
-__inference_Batchnorm_2_layer_call_fn_6661521?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 ztrace_0ztrace_1

trace_0
trace_12ث
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6661541
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6661561?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
?trainable_variables
¤regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
trace_02ض
/__inference_Leaky_layer_2_layer_call_fn_6661566?
?
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
annotations? *
 ztrace_0

trace_02ّ
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6661571?
?
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
annotations? *
 ztrace_0
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
?trainable_variables
?regularization_losses
،__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
ٍ
trace_02خ
'__inference_dense_layer_call_fn_6661580?
?
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
annotations? *
 ztrace_0

trace_02ى
B__inference_dense_layer_call_and_return_conditional_losses_6661591?
?
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
annotations? *
 ztrace_0

00
11
22
33
44
55
66
77
88
99
:10
;11
<12
=13"
trackable_list_wrapper
X
0
1
2
3
4
5
6
 7"
trackable_list_wrapper
(
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
'__inference_model_layer_call_fn_6659923Input_Discriminator"?
???
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
kwonlydefaults? 
annotations? *
 
?B?
'__inference_model_layer_call_fn_6661117inputs"?
???
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
kwonlydefaults? 
annotations? *
 
?B?
'__inference_model_layer_call_fn_6661150inputs"?
???
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
kwonlydefaults? 
annotations? *
 
B
'__inference_model_layer_call_fn_6660103Input_Discriminator"?
???
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
kwonlydefaults? 
annotations? *
 
B
B__inference_model_layer_call_and_return_conditional_losses_6661209inputs"?
???
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
kwonlydefaults? 
annotations? *
 
B
B__inference_model_layer_call_and_return_conditional_losses_6661268inputs"?
???
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
kwonlydefaults? 
annotations? *
 
?B
B__inference_model_layer_call_and_return_conditional_losses_6660142Input_Discriminator"?
???
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
kwonlydefaults? 
annotations? *
 
?B
B__inference_model_layer_call_and_return_conditional_losses_6660181Input_Discriminator"?
???
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
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
R
?	variables
?	keras_api

?total

¤count"
_tf_keras_metric
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
كBـ
/__inference_Flatten_layer_layer_call_fn_6661273inputs"?
?
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
annotations? *
 
?B?
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6661279inputs"?
?
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
لBف
0__inference_Hidden_layer_1_layer_call_fn_6661288inputs"?
?
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
annotations? *
 
?B?
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6661299inputs"?
?
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
لBف
0__inference_Hidden_layer_2_layer_call_fn_6661308inputs"?
?
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
annotations? *
 
?B?
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6661319inputs"?
?
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
ـB?
,__inference_Mean_layer_layer_call_fn_6661328inputs"?
?
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
annotations? *
 
?B?
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6661338inputs"?
?
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
لBف
0__inference_Variance_layer_layer_call_fn_6661347inputs"?
?
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
annotations? *
 
?B?
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6661357inputs"?
?
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
ِBٍ
0__inference_Encoder_output_layer_call_fn_6661363inputs/0inputs/1"?
?
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
annotations? *
 
B
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6661379inputs/0inputs/1"?
?
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
annotations? *
 
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
لBف
0__inference_Hidden_layer_1_layer_call_fn_6661388inputs"?
?
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
annotations? *
 
?B?
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6661399inputs"?
?
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
annotations? *
 
<
20
31
42
53"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?Bِ
-__inference_Batchnorm_1_layer_call_fn_6661412inputs"?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
?Bِ
-__inference_Batchnorm_1_layer_call_fn_6661425inputs"?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
B
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6661445inputs"?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
B
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6661465inputs"?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
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
مBق
1__inference_LeakyLU_layer_1_layer_call_fn_6661470inputs"?
?
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
annotations? *
 
B?
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6661475inputs"?
?
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
annotations? *
 
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
لBف
0__inference_Hidden_layer_2_layer_call_fn_6661484inputs"?
?
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
annotations? *
 
?B?
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6661495inputs"?
?
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
annotations? *
 
<
80
91
:2
;3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?Bِ
-__inference_Batchnorm_2_layer_call_fn_6661508inputs"?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
?Bِ
-__inference_Batchnorm_2_layer_call_fn_6661521inputs"?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
B
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6661541inputs"?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults? 
annotations? *
 
B
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6661561inputs"?
???
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
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
كBـ
/__inference_Leaky_layer_2_layer_call_fn_6661566inputs"?
?
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
annotations? *
 
?B?
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6661571inputs"?
?
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
annotations? *
 
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?Bظ
'__inference_dense_layer_call_fn_6661580inputs"?
?
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
annotations? *
 
?B?
B__inference_dense_layer_call_and_return_conditional_losses_6661591inputs"?
?
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
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
0
?0
¤1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
.:,
2Adam/Hidden_layer_1/kernel/m
':%2Adam/Hidden_layer_1/bias/m
-:+	d2Adam/Hidden_layer_2/kernel/m
&:$d2Adam/Hidden_layer_2/bias/m
(:&d 2Adam/Mean_layer/kernel/m
":  2Adam/Mean_layer/bias/m
,:*d 2Adam/Variance_layer/kernel/m
&:$ 2Adam/Variance_layer/bias/m
.:,
2Adam/Hidden_layer_1/kernel/v
':%2Adam/Hidden_layer_1/bias/v
-:+	d2Adam/Hidden_layer_2/kernel/v
&:$d2Adam/Hidden_layer_2/bias/v
(:&d 2Adam/Mean_layer/kernel/v
":  2Adam/Mean_layer/bias/v
,:*d 2Adam/Variance_layer/kernel/v
&:$ 2Adam/Variance_layer/bias/v
-:+	 2Adam/Hidden_layer_1/kernel/m
':%2Adam/Hidden_layer_1/bias/m
%:#2Adam/Batchnorm_1/gamma/m
$:"2Adam/Batchnorm_1/beta/m
.:,
2Adam/Hidden_layer_2/kernel/m
':%2Adam/Hidden_layer_2/bias/m
%:#2Adam/Batchnorm_2/gamma/m
$:"2Adam/Batchnorm_2/beta/m
$:"	2Adam/dense/kernel/m
:2Adam/dense/bias/m
-:+	 2Adam/Hidden_layer_1/kernel/v
':%2Adam/Hidden_layer_1/bias/v
%:#2Adam/Batchnorm_1/gamma/v
$:"2Adam/Batchnorm_1/beta/v
.:,
2Adam/Hidden_layer_2/kernel/v
':%2Adam/Hidden_layer_2/bias/v
%:#2Adam/Batchnorm_2/gamma/v
$:"2Adam/Batchnorm_2/beta/v
$:"	2Adam/dense/kernel/v
:2Adam/dense/bias/v?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6661445d52434?1
*?'
!
inputs?????????
p 
? "&?#

0?????????
 ?
H__inference_Batchnorm_1_layer_call_and_return_conditional_losses_6661465d52434?1
*?'
!
inputs?????????
p
? "&?#

0?????????
 
-__inference_Batchnorm_1_layer_call_fn_6661412W52434?1
*?'
!
inputs?????????
p 
? "?????????
-__inference_Batchnorm_1_layer_call_fn_6661425W52434?1
*?'
!
inputs?????????
p
? "??????????
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6661541d;8:94?1
*?'
!
inputs?????????
p 
? "&?#

0?????????
 ?
H__inference_Batchnorm_2_layer_call_and_return_conditional_losses_6661561d;8:94?1
*?'
!
inputs?????????
p
? "&?#

0?????????
 
-__inference_Batchnorm_2_layer_call_fn_6661508W;8:94?1
*?'
!
inputs?????????
p 
? "?????????
-__inference_Batchnorm_2_layer_call_fn_6661521W;8:94?1
*?'
!
inputs?????????
p
? "?????????
D__inference_Encoder_layer_call_and_return_conditional_losses_6659637?()*+,-./B??
8?5
+(
Encoder_input?????????
p 

 
? "j?g
`]

0/0????????? 

0/1????????? 

0/2????????? 
 
D__inference_Encoder_layer_call_and_return_conditional_losses_6659665?()*+,-./B??
8?5
+(
Encoder_input?????????
p

 
? "j?g
`]

0/0????????? 

0/1????????? 

0/2????????? 
 ?
D__inference_Encoder_layer_call_and_return_conditional_losses_6661039?()*+,-./;?8
1?.
$!
inputs?????????
p 

 
? "j?g
`]

0/0????????? 

0/1????????? 

0/2????????? 
 ?
D__inference_Encoder_layer_call_and_return_conditional_losses_6661084?()*+,-./;?8
1?.
$!
inputs?????????
p

 
? "j?g
`]

0/0????????? 

0/1????????? 

0/2????????? 
 ظ
)__inference_Encoder_layer_call_fn_6659453?()*+,-./B??
8?5
+(
Encoder_input?????????
p 

 
? "ZW

0????????? 

1????????? 

2????????? ظ
)__inference_Encoder_layer_call_fn_6659609?()*+,-./B??
8?5
+(
Encoder_input?????????
p

 
? "ZW

0????????? 

1????????? 

2????????? ر
)__inference_Encoder_layer_call_fn_6660969?()*+,-./;?8
1?.
$!
inputs?????????
p 

 
? "ZW

0????????? 

1????????? 

2????????? ر
)__inference_Encoder_layer_call_fn_6660994?()*+,-./;?8
1?.
$!
inputs?????????
p

 
? "ZW

0????????? 

1????????? 

2????????? س
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6661379Z?W
P?M
KH
"
inputs/0????????? 
"
inputs/1????????? 
? "%?"

0????????? 
 ?
0__inference_Encoder_output_layer_call_fn_6661363vZ?W
P?M
KH
"
inputs/0????????? 
"
inputs/1????????? 
? "????????? ?
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6661279]3?0
)?&
$!
inputs?????????
? "&?#

0?????????
 
/__inference_Flatten_layer_layer_call_fn_6661273P3?0
)?&
$!
inputs?????????
? "?????????­
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6661299^()0?-
&?#
!
inputs?????????
? "&?#

0?????????
 ،
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6661399]01/?,
%?"
 
inputs????????? 
? "&?#

0?????????
 
0__inference_Hidden_layer_1_layer_call_fn_6661288Q()0?-
&?#
!
inputs?????????
? "?????????
0__inference_Hidden_layer_1_layer_call_fn_6661388P01/?,
%?"
 
inputs????????? 
? "?????????،
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6661319]*+0?-
&?#
!
inputs?????????
? "%?"

0?????????d
 ­
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6661495^670?-
&?#
!
inputs?????????
? "&?#

0?????????
 
0__inference_Hidden_layer_2_layer_call_fn_6661308P*+0?-
&?#
!
inputs?????????
? "?????????d
0__inference_Hidden_layer_2_layer_call_fn_6661484Q670?-
&?#
!
inputs?????????
? "??????????
L__inference_LeakyLU_layer_1_layer_call_and_return_conditional_losses_6661475Z0?-
&?#
!
inputs?????????
? "&?#

0?????????
 
1__inference_LeakyLU_layer_1_layer_call_fn_6661470M0?-
&?#
!
inputs?????????
? "??????????
J__inference_Leaky_layer_2_layer_call_and_return_conditional_losses_6661571Z0?-
&?#
!
inputs?????????
? "&?#

0?????????
 
/__inference_Leaky_layer_2_layer_call_fn_6661566M0?-
&?#
!
inputs?????????
? "??????????
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6661338\,-/?,
%?"
 
inputs?????????d
? "%?"

0????????? 
 
,__inference_Mean_layer_layer_call_fn_6661328O,-/?,
%?"
 
inputs?????????d
? "????????? ?
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6661357\.//?,
%?"
 
inputs?????????d
? "%?"

0????????? 
 
0__inference_Variance_layer_layer_call_fn_6661347O.//?,
%?"
 
inputs?????????d
? "????????? ?
"__inference__wrapped_model_6659328()*+,-./01524367;8:9<=:?7
0?-
+(
Encoder_input?????????
? "-?*
(
model
model??????????
B__inference_dense_layer_call_and_return_conditional_losses_6661591]<=0?-
&?#
!
inputs?????????
? "%?"

0?????????
 {
'__inference_dense_layer_call_fn_6661580P<=0?-
&?#
!
inputs?????????
? "?????????ج
D__inference_model_2_layer_call_and_return_conditional_losses_6660535()*+,-./01524367;8:9<=B??
8?5
+(
Encoder_input?????????
p 

 
? "%?"

0?????????
 ج
D__inference_model_2_layer_call_and_return_conditional_losses_6660587()*+,-./01524367;8:9<=B??
8?5
+(
Encoder_input?????????
p

 
? "%?"

0?????????
 ؤ
D__inference_model_2_layer_call_and_return_conditional_losses_6660846|()*+,-./01524367;8:9<=;?8
1?.
$!
inputs?????????
p 

 
? "%?"

0?????????
 ؤ
D__inference_model_2_layer_call_and_return_conditional_losses_6660944|()*+,-./01524367;8:9<=;?8
1?.
$!
inputs?????????
p

 
? "%?"

0?????????
 ?
)__inference_model_2_layer_call_fn_6660284v()*+,-./01524367;8:9<=B??
8?5
+(
Encoder_input?????????
p 

 
? "??????????
)__inference_model_2_layer_call_fn_6660483v()*+,-./01524367;8:9<=B??
8?5
+(
Encoder_input?????????
p

 
? "?????????
)__inference_model_2_layer_call_fn_6660699o()*+,-./01524367;8:9<=;?8
1?.
$!
inputs?????????
p 

 
? "?????????
)__inference_model_2_layer_call_fn_6660748o()*+,-./01524367;8:9<=;?8
1?.
$!
inputs?????????
p

 
? "?????????أ
B__inference_model_layer_call_and_return_conditional_losses_6660142}01524367;8:9<=D?A
:?7
-*
Input_Discriminator????????? 
p 

 
? "%?"

0?????????
 أ
B__inference_model_layer_call_and_return_conditional_losses_6660181}01524367;8:9<=D?A
:?7
-*
Input_Discriminator????????? 
p

 
? "%?"

0?????????
 ?
B__inference_model_layer_call_and_return_conditional_losses_6661209p01524367;8:9<=7?4
-?*
 
inputs????????? 
p 

 
? "%?"

0?????????
 ?
B__inference_model_layer_call_and_return_conditional_losses_6661268p01524367;8:9<=7?4
-?*
 
inputs????????? 
p

 
? "%?"

0?????????
 
'__inference_model_layer_call_fn_6659923p01524367;8:9<=D?A
:?7
-*
Input_Discriminator????????? 
p 

 
? "?????????
'__inference_model_layer_call_fn_6660103p01524367;8:9<=D?A
:?7
-*
Input_Discriminator????????? 
p

 
? "?????????
'__inference_model_layer_call_fn_6661117c01524367;8:9<=7?4
-?*
 
inputs????????? 
p 

 
? "?????????
'__inference_model_layer_call_fn_6661150c01524367;8:9<=7?4
-?*
 
inputs????????? 
p

 
? "??????????
%__inference_signature_wrapper_6660644()*+,-./01524367;8:9<=K?H
? 
A?>
<
Encoder_input+(
Encoder_input?????????"-?*
(
model
model?????????