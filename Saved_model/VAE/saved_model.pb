ú
Ý
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018¢

Adam/Decoder_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/Decoder_output/bias/v

.Adam/Decoder_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/Decoder_output/bias/v*
_output_shapes	
:*
dtype0

Adam/Decoder_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Decoder_output/kernel/v

0Adam/Decoder_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Decoder_output/kernel/v* 
_output_shapes
:
*
dtype0

Adam/Hidden_layer_2_d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/Hidden_layer_2_d/bias/v

0Adam/Hidden_layer_2_d/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2_d/bias/v*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_2_d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*/
shared_name Adam/Hidden_layer_2_d/kernel/v

2Adam/Hidden_layer_2_d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2_d/kernel/v*
_output_shapes
:	d*
dtype0

Adam/Hidden_layer_1_d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*-
shared_nameAdam/Hidden_layer_1_d/bias/v

0Adam/Hidden_layer_1_d/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1_d/bias/v*
_output_shapes
:d*
dtype0

Adam/Hidden_layer_1_d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*d*/
shared_name Adam/Hidden_layer_1_d/kernel/v

2Adam/Hidden_layer_1_d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1_d/kernel/v*
_output_shapes

:*d*
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

Adam/Hidden_layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_nameAdam/Hidden_layer_2/bias/v

.Adam/Hidden_layer_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/bias/v*
_output_shapes
:d*
dtype0

Adam/Hidden_layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*-
shared_nameAdam/Hidden_layer_2/kernel/v

0Adam/Hidden_layer_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/kernel/v*
_output_shapes
:	d*
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

Adam/Hidden_layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Hidden_layer_1/kernel/v

0Adam/Hidden_layer_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/kernel/v* 
_output_shapes
:
*
dtype0

Adam/Decoder_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/Decoder_output/bias/m

.Adam/Decoder_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/Decoder_output/bias/m*
_output_shapes	
:*
dtype0

Adam/Decoder_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Decoder_output/kernel/m

0Adam/Decoder_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Decoder_output/kernel/m* 
_output_shapes
:
*
dtype0

Adam/Hidden_layer_2_d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/Hidden_layer_2_d/bias/m

0Adam/Hidden_layer_2_d/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2_d/bias/m*
_output_shapes	
:*
dtype0

Adam/Hidden_layer_2_d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*/
shared_name Adam/Hidden_layer_2_d/kernel/m

2Adam/Hidden_layer_2_d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2_d/kernel/m*
_output_shapes
:	d*
dtype0

Adam/Hidden_layer_1_d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*-
shared_nameAdam/Hidden_layer_1_d/bias/m

0Adam/Hidden_layer_1_d/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1_d/bias/m*
_output_shapes
:d*
dtype0

Adam/Hidden_layer_1_d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*d*/
shared_name Adam/Hidden_layer_1_d/kernel/m

2Adam/Hidden_layer_1_d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1_d/kernel/m*
_output_shapes

:*d*
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

Adam/Hidden_layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_nameAdam/Hidden_layer_2/bias/m

.Adam/Hidden_layer_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/bias/m*
_output_shapes
:d*
dtype0

Adam/Hidden_layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*-
shared_nameAdam/Hidden_layer_2/kernel/m

0Adam/Hidden_layer_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_2/kernel/m*
_output_shapes
:	d*
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

Adam/Hidden_layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Hidden_layer_1/kernel/m

0Adam/Hidden_layer_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_1/kernel/m* 
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
Èr
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*r
valueùqBöq Bïq
Á
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
Ó
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 

!layer-0
"layer_with_weights-0
"layer-1
#layer_with_weights-1
#layer-2
$layer_with_weights-2
$layer-3
%layer-4
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
j
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913*
j
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913*
* 
°
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
?trace_0
@trace_1
Atrace_2
Btrace_3* 
6
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_3* 
* 
Ü
Giter

Hbeta_1

Ibeta_2
	Jdecay
Klearning_rate,mõ-mö.m÷/mø0mù1mú2mû3mü4mý5mþ6mÿ7m8m9m,v-v.v/v0v1v2v3v4v5v6v7v8v9v*

Lserving_default* 

M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses* 
¦
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

,kernel
-bias*
¦
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

.kernel
/bias*
¦
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

0kernel
1bias*
¦
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

2kernel
3bias*

k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses* 
<
,0
-1
.2
/3
04
15
26
37*
<
,0
-1
.2
/3
04
15
26
37*
* 

qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
vtrace_0
wtrace_1
xtrace_2
ytrace_3* 
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
* 
* 
* 

~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

4kernel
5bias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

6kernel
7bias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

8kernel
9bias*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
.
40
51
62
73
84
95*
.
40
51
62
73
84
95*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
:
¢trace_0
£trace_1
¤trace_2
¥trace_3* 
:
¦trace_0
§trace_1
¨trace_2
©trace_3* 
UO
VARIABLE_VALUEHidden_layer_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEHidden_layer_1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEHidden_layer_2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEHidden_layer_2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEMean_layer/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEMean_layer/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEVariance_layer/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEVariance_layer/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEHidden_layer_1_d/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEHidden_layer_1_d/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEHidden_layer_2_d/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEHidden_layer_2_d/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEDecoder_output/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEDecoder_output/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

ª0*
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
* 
* 
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 

°trace_0* 

±trace_0* 

,0
-1*

,0
-1*
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

·trace_0* 

¸trace_0* 

.0
/1*

.0
/1*
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

¾trace_0* 

¿trace_0* 

00
11*

00
11*
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

Åtrace_0* 

Ætrace_0* 

20
31*

20
31*
* 

Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

Ìtrace_0* 

Ítrace_0* 
* 
* 
* 

Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 

Ótrace_0* 

Ôtrace_0* 
* 
5
0
1
2
3
4
5
6*
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
40
51*

40
51*
* 

Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Útrace_0* 

Ûtrace_0* 

60
71*

60
71*
* 

Ünon_trainable_variables
Ýlayers
Þmetrics
 ßlayer_regularization_losses
àlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

átrace_0* 

âtrace_0* 

80
91*

80
91*
* 

ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ètrace_0* 

étrace_0* 
* 
* 
* 

ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ïtrace_0* 

ðtrace_0* 
* 
'
!0
"1
#2
$3
%4*
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
<
ñ	variables
ò	keras_api

ótotal

ôcount*
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

ó0
ô1*

ñ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Hidden_layer_1/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_2/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Hidden_layer_2/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/Mean_layer/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/Mean_layer/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Variance_layer/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Variance_layer/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/Hidden_layer_1_d/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_1_d/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Hidden_layer_2_d/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/Hidden_layer_2_d/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/Decoder_output/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/Decoder_output/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Hidden_layer_1/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_2/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Hidden_layer_2/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/Mean_layer/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/Mean_layer/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Variance_layer/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Variance_layer/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/Hidden_layer_1_d/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_1_d/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/Hidden_layer_2_d/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/Hidden_layer_2_d/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/Decoder_output/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/Decoder_output/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_Encoder_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
~
serving_default_Lable_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

«
StatefulPartitionedCallStatefulPartitionedCallserving_default_Encoder_inputserving_default_Lable_inputHidden_layer_1/kernelHidden_layer_1/biasHidden_layer_2/kernelHidden_layer_2/biasMean_layer/kernelMean_layer/biasVariance_layer/kernelVariance_layer/biasHidden_layer_1_d/kernelHidden_layer_1_d/biasHidden_layer_2_d/kernelHidden_layer_2_d/biasDecoder_output/kernelDecoder_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_6656543
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ô
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)Hidden_layer_1/kernel/Read/ReadVariableOp'Hidden_layer_1/bias/Read/ReadVariableOp)Hidden_layer_2/kernel/Read/ReadVariableOp'Hidden_layer_2/bias/Read/ReadVariableOp%Mean_layer/kernel/Read/ReadVariableOp#Mean_layer/bias/Read/ReadVariableOp)Variance_layer/kernel/Read/ReadVariableOp'Variance_layer/bias/Read/ReadVariableOp+Hidden_layer_1_d/kernel/Read/ReadVariableOp)Hidden_layer_1_d/bias/Read/ReadVariableOp+Hidden_layer_2_d/kernel/Read/ReadVariableOp)Hidden_layer_2_d/bias/Read/ReadVariableOp)Decoder_output/kernel/Read/ReadVariableOp'Decoder_output/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0Adam/Hidden_layer_1/kernel/m/Read/ReadVariableOp.Adam/Hidden_layer_1/bias/m/Read/ReadVariableOp0Adam/Hidden_layer_2/kernel/m/Read/ReadVariableOp.Adam/Hidden_layer_2/bias/m/Read/ReadVariableOp,Adam/Mean_layer/kernel/m/Read/ReadVariableOp*Adam/Mean_layer/bias/m/Read/ReadVariableOp0Adam/Variance_layer/kernel/m/Read/ReadVariableOp.Adam/Variance_layer/bias/m/Read/ReadVariableOp2Adam/Hidden_layer_1_d/kernel/m/Read/ReadVariableOp0Adam/Hidden_layer_1_d/bias/m/Read/ReadVariableOp2Adam/Hidden_layer_2_d/kernel/m/Read/ReadVariableOp0Adam/Hidden_layer_2_d/bias/m/Read/ReadVariableOp0Adam/Decoder_output/kernel/m/Read/ReadVariableOp.Adam/Decoder_output/bias/m/Read/ReadVariableOp0Adam/Hidden_layer_1/kernel/v/Read/ReadVariableOp.Adam/Hidden_layer_1/bias/v/Read/ReadVariableOp0Adam/Hidden_layer_2/kernel/v/Read/ReadVariableOp.Adam/Hidden_layer_2/bias/v/Read/ReadVariableOp,Adam/Mean_layer/kernel/v/Read/ReadVariableOp*Adam/Mean_layer/bias/v/Read/ReadVariableOp0Adam/Variance_layer/kernel/v/Read/ReadVariableOp.Adam/Variance_layer/bias/v/Read/ReadVariableOp2Adam/Hidden_layer_1_d/kernel/v/Read/ReadVariableOp0Adam/Hidden_layer_1_d/bias/v/Read/ReadVariableOp2Adam/Hidden_layer_2_d/kernel/v/Read/ReadVariableOp0Adam/Hidden_layer_2_d/bias/v/Read/ReadVariableOp0Adam/Decoder_output/kernel/v/Read/ReadVariableOp.Adam/Decoder_output/bias/v/Read/ReadVariableOpConst*>
Tin7
523	*
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
 __inference__traced_save_6657378
û
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_layer_1/kernelHidden_layer_1/biasHidden_layer_2/kernelHidden_layer_2/biasMean_layer/kernelMean_layer/biasVariance_layer/kernelVariance_layer/biasHidden_layer_1_d/kernelHidden_layer_1_d/biasHidden_layer_2_d/kernelHidden_layer_2_d/biasDecoder_output/kernelDecoder_output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/Hidden_layer_1/kernel/mAdam/Hidden_layer_1/bias/mAdam/Hidden_layer_2/kernel/mAdam/Hidden_layer_2/bias/mAdam/Mean_layer/kernel/mAdam/Mean_layer/bias/mAdam/Variance_layer/kernel/mAdam/Variance_layer/bias/mAdam/Hidden_layer_1_d/kernel/mAdam/Hidden_layer_1_d/bias/mAdam/Hidden_layer_2_d/kernel/mAdam/Hidden_layer_2_d/bias/mAdam/Decoder_output/kernel/mAdam/Decoder_output/bias/mAdam/Hidden_layer_1/kernel/vAdam/Hidden_layer_1/bias/vAdam/Hidden_layer_2/kernel/vAdam/Hidden_layer_2/bias/vAdam/Mean_layer/kernel/vAdam/Mean_layer/bias/vAdam/Variance_layer/kernel/vAdam/Variance_layer/bias/vAdam/Hidden_layer_1_d/kernel/vAdam/Hidden_layer_1_d/bias/vAdam/Hidden_layer_2_d/kernel/vAdam/Hidden_layer_2_d/bias/vAdam/Decoder_output/kernel/vAdam/Decoder_output/bias/v*=
Tin6
422*
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
#__inference__traced_restore_6657535ú 
×
 
0__inference_Decoder_output_layer_call_fn_6657178

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
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6656012p
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
­

ÿ
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6657189

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
Ð
x
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6655720

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
seed2üÌ
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
Î	
ü
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6655698

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
åÂ
ð
#__inference__traced_restore_6657535
file_prefix:
&assignvariableop_hidden_layer_1_kernel:
5
&assignvariableop_1_hidden_layer_1_bias:	;
(assignvariableop_2_hidden_layer_2_kernel:	d4
&assignvariableop_3_hidden_layer_2_bias:d6
$assignvariableop_4_mean_layer_kernel:d 0
"assignvariableop_5_mean_layer_bias: :
(assignvariableop_6_variance_layer_kernel:d 4
&assignvariableop_7_variance_layer_bias: <
*assignvariableop_8_hidden_layer_1_d_kernel:*d6
(assignvariableop_9_hidden_layer_1_d_bias:d>
+assignvariableop_10_hidden_layer_2_d_kernel:	d8
)assignvariableop_11_hidden_layer_2_d_bias:	=
)assignvariableop_12_decoder_output_kernel:
6
'assignvariableop_13_decoder_output_bias:	'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: D
0assignvariableop_21_adam_hidden_layer_1_kernel_m:
=
.assignvariableop_22_adam_hidden_layer_1_bias_m:	C
0assignvariableop_23_adam_hidden_layer_2_kernel_m:	d<
.assignvariableop_24_adam_hidden_layer_2_bias_m:d>
,assignvariableop_25_adam_mean_layer_kernel_m:d 8
*assignvariableop_26_adam_mean_layer_bias_m: B
0assignvariableop_27_adam_variance_layer_kernel_m:d <
.assignvariableop_28_adam_variance_layer_bias_m: D
2assignvariableop_29_adam_hidden_layer_1_d_kernel_m:*d>
0assignvariableop_30_adam_hidden_layer_1_d_bias_m:dE
2assignvariableop_31_adam_hidden_layer_2_d_kernel_m:	d?
0assignvariableop_32_adam_hidden_layer_2_d_bias_m:	D
0assignvariableop_33_adam_decoder_output_kernel_m:
=
.assignvariableop_34_adam_decoder_output_bias_m:	D
0assignvariableop_35_adam_hidden_layer_1_kernel_v:
=
.assignvariableop_36_adam_hidden_layer_1_bias_v:	C
0assignvariableop_37_adam_hidden_layer_2_kernel_v:	d<
.assignvariableop_38_adam_hidden_layer_2_bias_v:d>
,assignvariableop_39_adam_mean_layer_kernel_v:d 8
*assignvariableop_40_adam_mean_layer_bias_v: B
0assignvariableop_41_adam_variance_layer_kernel_v:d <
.assignvariableop_42_adam_variance_layer_bias_v: D
2assignvariableop_43_adam_hidden_layer_1_d_kernel_v:*d>
0assignvariableop_44_adam_hidden_layer_1_d_bias_v:dE
2assignvariableop_45_adam_hidden_layer_2_d_kernel_v:	d?
0assignvariableop_46_adam_hidden_layer_2_d_bias_v:	D
0assignvariableop_47_adam_decoder_output_kernel_v:
=
.assignvariableop_48_adam_decoder_output_bias_v:	
identity_50¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*°
value¦B£2B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÔ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Þ
_output_shapesË
È::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	[
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
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp*assignvariableop_8_hidden_layer_1_d_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp(assignvariableop_9_hidden_layer_1_d_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp+assignvariableop_10_hidden_layer_2_d_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp)assignvariableop_11_hidden_layer_2_d_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp)assignvariableop_12_decoder_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp'assignvariableop_13_decoder_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_hidden_layer_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp.assignvariableop_22_adam_hidden_layer_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_23AssignVariableOp0assignvariableop_23_adam_hidden_layer_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_hidden_layer_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_mean_layer_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_mean_layer_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_variance_layer_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp.assignvariableop_28_adam_variance_layer_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_29AssignVariableOp2assignvariableop_29_adam_hidden_layer_1_d_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_hidden_layer_1_d_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_31AssignVariableOp2assignvariableop_31_adam_hidden_layer_2_d_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_32AssignVariableOp0assignvariableop_32_adam_hidden_layer_2_d_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_33AssignVariableOp0assignvariableop_33_adam_decoder_output_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp.assignvariableop_34_adam_decoder_output_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_35AssignVariableOp0assignvariableop_35_adam_hidden_layer_1_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp.assignvariableop_36_adam_hidden_layer_1_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_37AssignVariableOp0assignvariableop_37_adam_hidden_layer_2_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp.assignvariableop_38_adam_hidden_layer_2_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_mean_layer_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_mean_layer_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_41AssignVariableOp0assignvariableop_41_adam_variance_layer_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adam_variance_layer_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_43AssignVariableOp2assignvariableop_43_adam_hidden_layer_1_d_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_44AssignVariableOp0assignvariableop_44_adam_hidden_layer_1_d_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_45AssignVariableOp2assignvariableop_45_adam_hidden_layer_2_d_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_46AssignVariableOp0assignvariableop_46_adam_hidden_layer_2_d_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_47AssignVariableOp0assignvariableop_47_adam_decoder_output_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp.assignvariableop_48_adam_decoder_output_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_50IdentityIdentity_49:output:0^NoOp_1*
T0*
_output_shapes
: ò
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_50Identity_50:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_48AssignVariableOp_482(
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
Ä
f
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6657029

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

y
0__inference_Encoder_output_layer_call_fn_6657113
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
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6655720o
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
¦

ý
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6655666

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
Þ

f
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6656031

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
Ð

0__inference_Variance_layer_layer_call_fn_6657097

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
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6655698o
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
	

)__inference_Decoder_layer_call_fn_6656156
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656124s
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
Ö
ò
%__inference_VAE_layer_call_fn_6656577
inputs_0
inputs_1
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:*d
	unknown_8:d
	unknown_9:	d

unknown_10:	

unknown_11:


unknown_12:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_VAE_layer_call_and_return_conditional_losses_6656247s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/1
­

ÿ
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6656012

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
¦

ý
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657069

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
³
K
/__inference_Reshape_layer_layer_call_fn_6657194

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
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6656031d
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
õa

 __inference__traced_save_6657378
file_prefix4
0savev2_hidden_layer_1_kernel_read_readvariableop2
.savev2_hidden_layer_1_bias_read_readvariableop4
0savev2_hidden_layer_2_kernel_read_readvariableop2
.savev2_hidden_layer_2_bias_read_readvariableop0
,savev2_mean_layer_kernel_read_readvariableop.
*savev2_mean_layer_bias_read_readvariableop4
0savev2_variance_layer_kernel_read_readvariableop2
.savev2_variance_layer_bias_read_readvariableop6
2savev2_hidden_layer_1_d_kernel_read_readvariableop4
0savev2_hidden_layer_1_d_bias_read_readvariableop6
2savev2_hidden_layer_2_d_kernel_read_readvariableop4
0savev2_hidden_layer_2_d_bias_read_readvariableop4
0savev2_decoder_output_kernel_read_readvariableop2
.savev2_decoder_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_adam_hidden_layer_1_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer_1_bias_m_read_readvariableop;
7savev2_adam_hidden_layer_2_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer_2_bias_m_read_readvariableop7
3savev2_adam_mean_layer_kernel_m_read_readvariableop5
1savev2_adam_mean_layer_bias_m_read_readvariableop;
7savev2_adam_variance_layer_kernel_m_read_readvariableop9
5savev2_adam_variance_layer_bias_m_read_readvariableop=
9savev2_adam_hidden_layer_1_d_kernel_m_read_readvariableop;
7savev2_adam_hidden_layer_1_d_bias_m_read_readvariableop=
9savev2_adam_hidden_layer_2_d_kernel_m_read_readvariableop;
7savev2_adam_hidden_layer_2_d_bias_m_read_readvariableop;
7savev2_adam_decoder_output_kernel_m_read_readvariableop9
5savev2_adam_decoder_output_bias_m_read_readvariableop;
7savev2_adam_hidden_layer_1_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer_1_bias_v_read_readvariableop;
7savev2_adam_hidden_layer_2_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer_2_bias_v_read_readvariableop7
3savev2_adam_mean_layer_kernel_v_read_readvariableop5
1savev2_adam_mean_layer_bias_v_read_readvariableop;
7savev2_adam_variance_layer_kernel_v_read_readvariableop9
5savev2_adam_variance_layer_bias_v_read_readvariableop=
9savev2_adam_hidden_layer_1_d_kernel_v_read_readvariableop;
7savev2_adam_hidden_layer_1_d_bias_v_read_readvariableop=
9savev2_adam_hidden_layer_2_d_kernel_v_read_readvariableop;
7savev2_adam_hidden_layer_2_d_bias_v_read_readvariableop;
7savev2_adam_decoder_output_kernel_v_read_readvariableop9
5savev2_adam_decoder_output_bias_v_read_readvariableop
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*°
value¦B£2B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÑ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¿
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer_1_kernel_read_readvariableop.savev2_hidden_layer_1_bias_read_readvariableop0savev2_hidden_layer_2_kernel_read_readvariableop.savev2_hidden_layer_2_bias_read_readvariableop,savev2_mean_layer_kernel_read_readvariableop*savev2_mean_layer_bias_read_readvariableop0savev2_variance_layer_kernel_read_readvariableop.savev2_variance_layer_bias_read_readvariableop2savev2_hidden_layer_1_d_kernel_read_readvariableop0savev2_hidden_layer_1_d_bias_read_readvariableop2savev2_hidden_layer_2_d_kernel_read_readvariableop0savev2_hidden_layer_2_d_bias_read_readvariableop0savev2_decoder_output_kernel_read_readvariableop.savev2_decoder_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_adam_hidden_layer_1_kernel_m_read_readvariableop5savev2_adam_hidden_layer_1_bias_m_read_readvariableop7savev2_adam_hidden_layer_2_kernel_m_read_readvariableop5savev2_adam_hidden_layer_2_bias_m_read_readvariableop3savev2_adam_mean_layer_kernel_m_read_readvariableop1savev2_adam_mean_layer_bias_m_read_readvariableop7savev2_adam_variance_layer_kernel_m_read_readvariableop5savev2_adam_variance_layer_bias_m_read_readvariableop9savev2_adam_hidden_layer_1_d_kernel_m_read_readvariableop7savev2_adam_hidden_layer_1_d_bias_m_read_readvariableop9savev2_adam_hidden_layer_2_d_kernel_m_read_readvariableop7savev2_adam_hidden_layer_2_d_bias_m_read_readvariableop7savev2_adam_decoder_output_kernel_m_read_readvariableop5savev2_adam_decoder_output_bias_m_read_readvariableop7savev2_adam_hidden_layer_1_kernel_v_read_readvariableop5savev2_adam_hidden_layer_1_bias_v_read_readvariableop7savev2_adam_hidden_layer_2_kernel_v_read_readvariableop5savev2_adam_hidden_layer_2_bias_v_read_readvariableop3savev2_adam_mean_layer_kernel_v_read_readvariableop1savev2_adam_mean_layer_bias_v_read_readvariableop7savev2_adam_variance_layer_kernel_v_read_readvariableop5savev2_adam_variance_layer_bias_v_read_readvariableop9savev2_adam_hidden_layer_1_d_kernel_v_read_readvariableop7savev2_adam_hidden_layer_1_d_bias_v_read_readvariableop9savev2_adam_hidden_layer_2_d_kernel_v_read_readvariableop7savev2_adam_hidden_layer_2_d_bias_v_read_readvariableop7savev2_adam_decoder_output_kernel_v_read_readvariableop5savev2_adam_decoder_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	
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

identity_1Identity_1:output:0*
_input_shapes
ý: :
::	d:d:d : :d : :*d:d:	d::
:: : : : : : : :
::	d:d:d : :d : :*d:d:	d::
::
::	d:d:d : :d : :*d:d:	d::
:: 2(
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
: :$	 

_output_shapes

:*d: 


_output_shapes
:d:%!

_output_shapes
:	d:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::
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
: :&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	d: 

_output_shapes
:d:$ 

_output_shapes

:d : 

_output_shapes
: :$ 

_output_shapes

:d : 

_output_shapes
: :$ 

_output_shapes

:*d: 

_output_shapes
:d:% !

_output_shapes
:	d:!!

_output_shapes	
::&""
 
_output_shapes
:
:!#

_output_shapes	
::&$"
 
_output_shapes
:
:!%

_output_shapes	
::%&!

_output_shapes
:	d: '

_output_shapes
:d:$( 

_output_shapes

:d : )

_output_shapes
: :$* 

_output_shapes

:d : +

_output_shapes
: :$, 

_output_shapes

:*d: -

_output_shapes
:d:%.!

_output_shapes
:	d:!/

_output_shapes	
::&0"
 
_output_shapes
:
:!1

_output_shapes	
::2

_output_shapes
: 
¤

þ
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6655978

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
®

ÿ
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657049

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
 #

D__inference_Encoder_layer_call_and_return_conditional_losses_6655960
encoder_input*
hidden_layer_1_6655936:
%
hidden_layer_1_6655938:	)
hidden_layer_2_6655941:	d$
hidden_layer_2_6655943:d$
mean_layer_6655946:d  
mean_layer_6655948: (
variance_layer_6655951:d $
variance_layer_6655953: 
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
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6655636¬
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6655936hidden_layer_1_6655938*
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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6655649´
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6655941hidden_layer_2_6655943*
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
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6655666¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6655946mean_layer_6655948*
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
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6655682´
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6655951variance_layer_6655953*
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
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6655698¬
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
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6655720z
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
î
ú
%__inference_VAE_layer_call_fn_6656278
encoder_input
lable_input
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:*d
	unknown_8:d
	unknown_9:	d

unknown_10:	

unknown_11:


unknown_12:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallencoder_inputlable_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_VAE_layer_call_and_return_conditional_losses_6656247s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%
_user_specified_nameLable_input
×
z
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6657129
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
 *  ?§
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ªû^
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
Ê	
ø
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6657088

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
¶
_
3__inference_Concatenate_layer_layer_call_fn_6656909
inputs_0
inputs_1
identityÆ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656231`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ
:Q M
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
Î	
ü
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6657107

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
*
â
D__inference_Decoder_layer_call_and_return_conditional_losses_6656984

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
Ô

2__inference_Hidden_layer_1_d_layer_call_fn_6657138

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
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6655978o
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
j
ú
@__inference_VAE_layer_call_and_return_conditional_losses_6656763
inputs_0
inputs_1I
5encoder_hidden_layer_1_matmul_readvariableop_resource:
E
6encoder_hidden_layer_1_biasadd_readvariableop_resource:	H
5encoder_hidden_layer_2_matmul_readvariableop_resource:	dD
6encoder_hidden_layer_2_biasadd_readvariableop_resource:dC
1encoder_mean_layer_matmul_readvariableop_resource:d @
2encoder_mean_layer_biasadd_readvariableop_resource: G
5encoder_variance_layer_matmul_readvariableop_resource:d D
6encoder_variance_layer_biasadd_readvariableop_resource: I
7decoder_hidden_layer_1_d_matmul_readvariableop_resource:*dF
8decoder_hidden_layer_1_d_biasadd_readvariableop_resource:dJ
7decoder_hidden_layer_2_d_matmul_readvariableop_resource:	dG
8decoder_hidden_layer_2_d_biasadd_readvariableop_resource:	I
5decoder_decoder_output_matmul_readvariableop_resource:
E
6decoder_decoder_output_biasadd_readvariableop_resource:	
identity¢-Decoder/Decoder_output/BiasAdd/ReadVariableOp¢,Decoder/Decoder_output/MatMul/ReadVariableOp¢/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp¢.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp¢/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp¢.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp¢-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp¢,Encoder/Hidden_layer_1/MatMul/ReadVariableOp¢-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp¢,Encoder/Hidden_layer_2/MatMul/ReadVariableOp¢)Encoder/Mean_layer/BiasAdd/ReadVariableOp¢(Encoder/Mean_layer/MatMul/ReadVariableOp¢-Encoder/Variance_layer/BiasAdd/ReadVariableOp¢,Encoder/Variance_layer/MatMul/ReadVariableOpl
Encoder/Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
Encoder/Flatten_layer/ReshapeReshapeinputs_0$Encoder/Flatten_layer/Const:output:0*
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
 *  ?Ö
9Encoder/Encoder_output/random_normal/RandomStandardNormalRandomStandardNormal%Encoder/Encoder_output/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¦¥ÜÛ
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
:ÿÿÿÿÿÿÿÿÿ _
Concatenate_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :±
Concatenate_layer/concatConcatV2Encoder/Encoder_output/add:z:0inputs_1&Concatenate_layer/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*¦
.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOpReadVariableOp7decoder_hidden_layer_1_d_matmul_readvariableop_resource*
_output_shapes

:*d*
dtype0¶
Decoder/Hidden_layer_1_d/MatMulMatMul!Concatenate_layer/concat:output:06Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp:value:0*
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
:ÿÿÿÿÿÿÿÿÿß
NoOpNoOp.^Decoder/Decoder_output/BiasAdd/ReadVariableOp-^Decoder/Decoder_output/MatMul/ReadVariableOp0^Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp/^Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp0^Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp/^Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp.^Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_1/MatMul/ReadVariableOp.^Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_2/MatMul/ReadVariableOp*^Encoder/Mean_layer/BiasAdd/ReadVariableOp)^Encoder/Mean_layer/MatMul/ReadVariableOp.^Encoder/Variance_layer/BiasAdd/ReadVariableOp-^Encoder/Variance_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 2^
-Decoder/Decoder_output/BiasAdd/ReadVariableOp-Decoder/Decoder_output/BiasAdd/ReadVariableOp2\
,Decoder/Decoder_output/MatMul/ReadVariableOp,Decoder/Decoder_output/MatMul/ReadVariableOp2b
/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp2`
.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp2b
/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp2`
.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp2^
-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_1/MatMul/ReadVariableOp,Encoder/Hidden_layer_1/MatMul/ReadVariableOp2^
-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_2/MatMul/ReadVariableOp,Encoder/Hidden_layer_2/MatMul/ReadVariableOp2V
)Encoder/Mean_layer/BiasAdd/ReadVariableOp)Encoder/Mean_layer/BiasAdd/ReadVariableOp2T
(Encoder/Mean_layer/MatMul/ReadVariableOp(Encoder/Mean_layer/MatMul/ReadVariableOp2^
-Encoder/Variance_layer/BiasAdd/ReadVariableOp-Encoder/Variance_layer/BiasAdd/ReadVariableOp2\
,Encoder/Variance_layer/MatMul/ReadVariableOp,Encoder/Variance_layer/MatMul/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/1
î
ú
%__inference_VAE_layer_call_fn_6656425
encoder_input
lable_input
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:*d
	unknown_8:d
	unknown_9:	d

unknown_10:	

unknown_11:


unknown_12:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallencoder_inputlable_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_VAE_layer_call_and_return_conditional_losses_6656360s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%
_user_specified_nameLable_input
ö
ß
D__inference_Decoder_layer_call_and_return_conditional_losses_6656124

inputs*
hidden_layer_1_d_6656107:*d&
hidden_layer_1_d_6656109:d+
hidden_layer_2_d_6656112:	d'
hidden_layer_2_d_6656114:	*
decoder_output_6656117:
%
decoder_output_6656119:	
identity¢&Decoder_output/StatefulPartitionedCall¢(Hidden_layer_1_d/StatefulPartitionedCall¢(Hidden_layer_2_d/StatefulPartitionedCall
(Hidden_layer_1_d/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_d_6656107hidden_layer_1_d_6656109*
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
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6655978¿
(Hidden_layer_2_d/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_1_d/StatefulPartitionedCall:output:0hidden_layer_2_d_6656112hidden_layer_2_d_6656114*
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
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6655995·
&Decoder_output/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_2_d/StatefulPartitionedCall:output:0decoder_output_6656117decoder_output_6656119*
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
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6656012ð
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
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6656031y
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
 p
Ô
"__inference__wrapped_model_6655623
encoder_input
lable_inputM
9vae_encoder_hidden_layer_1_matmul_readvariableop_resource:
I
:vae_encoder_hidden_layer_1_biasadd_readvariableop_resource:	L
9vae_encoder_hidden_layer_2_matmul_readvariableop_resource:	dH
:vae_encoder_hidden_layer_2_biasadd_readvariableop_resource:dG
5vae_encoder_mean_layer_matmul_readvariableop_resource:d D
6vae_encoder_mean_layer_biasadd_readvariableop_resource: K
9vae_encoder_variance_layer_matmul_readvariableop_resource:d H
:vae_encoder_variance_layer_biasadd_readvariableop_resource: M
;vae_decoder_hidden_layer_1_d_matmul_readvariableop_resource:*dJ
<vae_decoder_hidden_layer_1_d_biasadd_readvariableop_resource:dN
;vae_decoder_hidden_layer_2_d_matmul_readvariableop_resource:	dK
<vae_decoder_hidden_layer_2_d_biasadd_readvariableop_resource:	M
9vae_decoder_decoder_output_matmul_readvariableop_resource:
I
:vae_decoder_decoder_output_biasadd_readvariableop_resource:	
identity¢1VAE/Decoder/Decoder_output/BiasAdd/ReadVariableOp¢0VAE/Decoder/Decoder_output/MatMul/ReadVariableOp¢3VAE/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp¢2VAE/Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp¢3VAE/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp¢2VAE/Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp¢1VAE/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp¢0VAE/Encoder/Hidden_layer_1/MatMul/ReadVariableOp¢1VAE/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp¢0VAE/Encoder/Hidden_layer_2/MatMul/ReadVariableOp¢-VAE/Encoder/Mean_layer/BiasAdd/ReadVariableOp¢,VAE/Encoder/Mean_layer/MatMul/ReadVariableOp¢1VAE/Encoder/Variance_layer/BiasAdd/ReadVariableOp¢0VAE/Encoder/Variance_layer/MatMul/ReadVariableOpp
VAE/Encoder/Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
!VAE/Encoder/Flatten_layer/ReshapeReshapeencoder_input(VAE/Encoder/Flatten_layer/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0VAE/Encoder/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp9vae_encoder_hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ä
!VAE/Encoder/Hidden_layer_1/MatMulMatMul*VAE/Encoder/Flatten_layer/Reshape:output:08VAE/Encoder/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
1VAE/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp:vae_encoder_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0È
"VAE/Encoder/Hidden_layer_1/BiasAddBiasAdd+VAE/Encoder/Hidden_layer_1/MatMul:product:09VAE/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
VAE/Encoder/Hidden_layer_1/SeluSelu+VAE/Encoder/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
0VAE/Encoder/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp9vae_encoder_hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0Æ
!VAE/Encoder/Hidden_layer_2/MatMulMatMul-VAE/Encoder/Hidden_layer_1/Selu:activations:08VAE/Encoder/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
1VAE/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp:vae_encoder_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Ç
"VAE/Encoder/Hidden_layer_2/BiasAddBiasAdd+VAE/Encoder/Hidden_layer_2/MatMul:product:09VAE/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
VAE/Encoder/Hidden_layer_2/SeluSelu+VAE/Encoder/Hidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
,VAE/Encoder/Mean_layer/MatMul/ReadVariableOpReadVariableOp5vae_encoder_mean_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0¾
VAE/Encoder/Mean_layer/MatMulMatMul-VAE/Encoder/Hidden_layer_2/Selu:activations:04VAE/Encoder/Mean_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-VAE/Encoder/Mean_layer/BiasAdd/ReadVariableOpReadVariableOp6vae_encoder_mean_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
VAE/Encoder/Mean_layer/BiasAddBiasAdd'VAE/Encoder/Mean_layer/MatMul:product:05VAE/Encoder/Mean_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
0VAE/Encoder/Variance_layer/MatMul/ReadVariableOpReadVariableOp9vae_encoder_variance_layer_matmul_readvariableop_resource*
_output_shapes

:d *
dtype0Æ
!VAE/Encoder/Variance_layer/MatMulMatMul-VAE/Encoder/Hidden_layer_2/Selu:activations:08VAE/Encoder/Variance_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
1VAE/Encoder/Variance_layer/BiasAdd/ReadVariableOpReadVariableOp:vae_encoder_variance_layer_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ç
"VAE/Encoder/Variance_layer/BiasAddBiasAdd+VAE/Encoder/Variance_layer/MatMul:product:09VAE/Encoder/Variance_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
 VAE/Encoder/Encoder_output/ShapeShape+VAE/Encoder/Variance_layer/BiasAdd:output:0*
T0*
_output_shapes
:r
-VAE/Encoder/Encoder_output/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    t
/VAE/Encoder/Encoder_output/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Þ
=VAE/Encoder/Encoder_output/random_normal/RandomStandardNormalRandomStandardNormal)VAE/Encoder/Encoder_output/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2±õÚç
,VAE/Encoder/Encoder_output/random_normal/mulMulFVAE/Encoder/Encoder_output/random_normal/RandomStandardNormal:output:08VAE/Encoder/Encoder_output/random_normal/stddev:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Í
(VAE/Encoder/Encoder_output/random_normalAddV20VAE/Encoder/Encoder_output/random_normal/mul:z:06VAE/Encoder/Encoder_output/random_normal/mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
$VAE/Encoder/Encoder_output/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @»
"VAE/Encoder/Encoder_output/truedivRealDiv+VAE/Encoder/Variance_layer/BiasAdd:output:0-VAE/Encoder/Encoder_output/truediv/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
VAE/Encoder/Encoder_output/ExpExp&VAE/Encoder/Encoder_output/truediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ©
VAE/Encoder/Encoder_output/mulMul,VAE/Encoder/Encoder_output/random_normal:z:0"VAE/Encoder/Encoder_output/Exp:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
VAE/Encoder/Encoder_output/addAddV2"VAE/Encoder/Encoder_output/mul:z:0'VAE/Encoder/Mean_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
!VAE/Concatenate_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :À
VAE/Concatenate_layer/concatConcatV2"VAE/Encoder/Encoder_output/add:z:0lable_input*VAE/Concatenate_layer/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*®
2VAE/Decoder/Hidden_layer_1_d/MatMul/ReadVariableOpReadVariableOp;vae_decoder_hidden_layer_1_d_matmul_readvariableop_resource*
_output_shapes

:*d*
dtype0Â
#VAE/Decoder/Hidden_layer_1_d/MatMulMatMul%VAE/Concatenate_layer/concat:output:0:VAE/Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¬
3VAE/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOpReadVariableOp<vae_decoder_hidden_layer_1_d_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Í
$VAE/Decoder/Hidden_layer_1_d/BiasAddBiasAdd-VAE/Decoder/Hidden_layer_1_d/MatMul:product:0;VAE/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
!VAE/Decoder/Hidden_layer_1_d/SeluSelu-VAE/Decoder/Hidden_layer_1_d/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¯
2VAE/Decoder/Hidden_layer_2_d/MatMul/ReadVariableOpReadVariableOp;vae_decoder_hidden_layer_2_d_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0Í
#VAE/Decoder/Hidden_layer_2_d/MatMulMatMul/VAE/Decoder/Hidden_layer_1_d/Selu:activations:0:VAE/Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
3VAE/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOpReadVariableOp<vae_decoder_hidden_layer_2_d_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Î
$VAE/Decoder/Hidden_layer_2_d/BiasAddBiasAdd-VAE/Decoder/Hidden_layer_2_d/MatMul:product:0;VAE/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!VAE/Decoder/Hidden_layer_2_d/SeluSelu-VAE/Decoder/Hidden_layer_2_d/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
0VAE/Decoder/Decoder_output/MatMul/ReadVariableOpReadVariableOp9vae_decoder_decoder_output_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0É
!VAE/Decoder/Decoder_output/MatMulMatMul/VAE/Decoder/Hidden_layer_2_d/Selu:activations:08VAE/Decoder/Decoder_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
1VAE/Decoder/Decoder_output/BiasAdd/ReadVariableOpReadVariableOp:vae_decoder_decoder_output_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0È
"VAE/Decoder/Decoder_output/BiasAddBiasAdd+VAE/Decoder/Decoder_output/MatMul:product:09VAE/Decoder/Decoder_output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"VAE/Decoder/Decoder_output/SigmoidSigmoid+VAE/Decoder/Decoder_output/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
VAE/Decoder/Reshape_layer/ShapeShape&VAE/Decoder/Decoder_output/Sigmoid:y:0*
T0*
_output_shapes
:w
-VAE/Decoder/Reshape_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/VAE/Decoder/Reshape_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/VAE/Decoder/Reshape_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'VAE/Decoder/Reshape_layer/strided_sliceStridedSlice(VAE/Decoder/Reshape_layer/Shape:output:06VAE/Decoder/Reshape_layer/strided_slice/stack:output:08VAE/Decoder/Reshape_layer/strided_slice/stack_1:output:08VAE/Decoder/Reshape_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)VAE/Decoder/Reshape_layer/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :k
)VAE/Decoder/Reshape_layer/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :÷
'VAE/Decoder/Reshape_layer/Reshape/shapePack0VAE/Decoder/Reshape_layer/strided_slice:output:02VAE/Decoder/Reshape_layer/Reshape/shape/1:output:02VAE/Decoder/Reshape_layer/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:¼
!VAE/Decoder/Reshape_layer/ReshapeReshape&VAE/Decoder/Decoder_output/Sigmoid:y:00VAE/Decoder/Reshape_layer/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
IdentityIdentity*VAE/Decoder/Reshape_layer/Reshape:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp2^VAE/Decoder/Decoder_output/BiasAdd/ReadVariableOp1^VAE/Decoder/Decoder_output/MatMul/ReadVariableOp4^VAE/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp3^VAE/Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp4^VAE/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp3^VAE/Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp2^VAE/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp1^VAE/Encoder/Hidden_layer_1/MatMul/ReadVariableOp2^VAE/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp1^VAE/Encoder/Hidden_layer_2/MatMul/ReadVariableOp.^VAE/Encoder/Mean_layer/BiasAdd/ReadVariableOp-^VAE/Encoder/Mean_layer/MatMul/ReadVariableOp2^VAE/Encoder/Variance_layer/BiasAdd/ReadVariableOp1^VAE/Encoder/Variance_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 2f
1VAE/Decoder/Decoder_output/BiasAdd/ReadVariableOp1VAE/Decoder/Decoder_output/BiasAdd/ReadVariableOp2d
0VAE/Decoder/Decoder_output/MatMul/ReadVariableOp0VAE/Decoder/Decoder_output/MatMul/ReadVariableOp2j
3VAE/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp3VAE/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp2h
2VAE/Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp2VAE/Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp2j
3VAE/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp3VAE/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp2h
2VAE/Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp2VAE/Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp2f
1VAE/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp1VAE/Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp2d
0VAE/Encoder/Hidden_layer_1/MatMul/ReadVariableOp0VAE/Encoder/Hidden_layer_1/MatMul/ReadVariableOp2f
1VAE/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp1VAE/Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp2d
0VAE/Encoder/Hidden_layer_2/MatMul/ReadVariableOp0VAE/Encoder/Hidden_layer_2/MatMul/ReadVariableOp2^
-VAE/Encoder/Mean_layer/BiasAdd/ReadVariableOp-VAE/Encoder/Mean_layer/BiasAdd/ReadVariableOp2\
,VAE/Encoder/Mean_layer/MatMul/ReadVariableOp,VAE/Encoder/Mean_layer/MatMul/ReadVariableOp2f
1VAE/Encoder/Variance_layer/BiasAdd/ReadVariableOp1VAE/Encoder/Variance_layer/BiasAdd/ReadVariableOp2d
0VAE/Encoder/Variance_layer/MatMul/ReadVariableOp0VAE/Encoder/Variance_layer/MatMul/ReadVariableOp:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%
_user_specified_nameLable_input
÷

)__inference_Decoder_layer_call_fn_6656933

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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656034s
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
Þ

f
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6657207

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
³
K
/__inference_Flatten_layer_layer_call_fn_6657023

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
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6655636a
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
 #

D__inference_Encoder_layer_call_and_return_conditional_losses_6655932
encoder_input*
hidden_layer_1_6655908:
%
hidden_layer_1_6655910:	)
hidden_layer_2_6655913:	d$
hidden_layer_2_6655915:d$
mean_layer_6655918:d  
mean_layer_6655920: (
variance_layer_6655923:d $
variance_layer_6655925: 
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
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6655636¬
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6655908hidden_layer_1_6655910*
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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6655649´
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6655913hidden_layer_2_6655915*
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
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6655666¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6655918mean_layer_6655920*
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
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6655682´
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6655923variance_layer_6655925*
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
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6655698¬
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
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6655720z
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

æ
D__inference_Decoder_layer_call_and_return_conditional_losses_6656176
decoder_input*
hidden_layer_1_d_6656159:*d&
hidden_layer_1_d_6656161:d+
hidden_layer_2_d_6656164:	d'
hidden_layer_2_d_6656166:	*
decoder_output_6656169:
%
decoder_output_6656171:	
identity¢&Decoder_output/StatefulPartitionedCall¢(Hidden_layer_1_d/StatefulPartitionedCall¢(Hidden_layer_2_d/StatefulPartitionedCall
(Hidden_layer_1_d/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputhidden_layer_1_d_6656159hidden_layer_1_d_6656161*
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
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6655978¿
(Hidden_layer_2_d/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_1_d/StatefulPartitionedCall:output:0hidden_layer_2_d_6656164hidden_layer_2_d_6656166*
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
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6655995·
&Decoder_output/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_2_d/StatefulPartitionedCall:output:0decoder_output_6656169decoder_output_6656171*
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
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6656012ð
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
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6656031y
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

æ
D__inference_Decoder_layer_call_and_return_conditional_losses_6656196
decoder_input*
hidden_layer_1_d_6656179:*d&
hidden_layer_1_d_6656181:d+
hidden_layer_2_d_6656184:	d'
hidden_layer_2_d_6656186:	*
decoder_output_6656189:
%
decoder_output_6656191:	
identity¢&Decoder_output/StatefulPartitionedCall¢(Hidden_layer_1_d/StatefulPartitionedCall¢(Hidden_layer_2_d/StatefulPartitionedCall
(Hidden_layer_1_d/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputhidden_layer_1_d_6656179hidden_layer_1_d_6656181*
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
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6655978¿
(Hidden_layer_2_d/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_1_d/StatefulPartitionedCall:output:0hidden_layer_2_d_6656184hidden_layer_2_d_6656186*
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
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6655995·
&Decoder_output/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_2_d/StatefulPartitionedCall:output:0decoder_output_6656189decoder_output_6656191*
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
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6656012ð
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
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6656031y
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
È

,__inference_Mean_layer_layer_call_fn_6657078

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
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6655682o
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
Ð
ú
%__inference_signature_wrapper_6656543
encoder_input
lable_input
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:*d
	unknown_8:d
	unknown_9:	d

unknown_10:	

unknown_11:


unknown_12:	
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallencoder_inputlable_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_6655623s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%
_user_specified_nameLable_input
×
 
0__inference_Hidden_layer_1_layer_call_fn_6657038

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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6655649p
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
Ô

@__inference_VAE_layer_call_and_return_conditional_losses_6656360

inputs
inputs_1#
encoder_6656326:

encoder_6656328:	"
encoder_6656330:	d
encoder_6656332:d!
encoder_6656334:d 
encoder_6656336: !
encoder_6656338:d 
encoder_6656340: !
decoder_6656346:*d
decoder_6656348:d"
decoder_6656350:	d
decoder_6656352:	#
decoder_6656354:

decoder_6656356:	
identity¢Decoder/StatefulPartitionedCall¢Encoder/StatefulPartitionedCall
Encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_6656326encoder_6656328encoder_6656330encoder_6656332encoder_6656334encoder_6656336encoder_6656338encoder_6656340*
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655856ø
!Concatenate_layer/PartitionedCallPartitionedCall(Encoder/StatefulPartitionedCall:output:2inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656231ã
Decoder/StatefulPartitionedCallStatefulPartitionedCall*Concatenate_layer/PartitionedCall:output:0decoder_6656346decoder_6656348decoder_6656350decoder_6656352decoder_6656354decoder_6656356*
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656124{
IdentityIdentity(Decoder/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^Decoder/StatefulPartitionedCall ^Encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 2B
Decoder/StatefulPartitionedCallDecoder/StatefulPartitionedCall2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¬


M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6655995

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
Ì6
¯
D__inference_Encoder_layer_call_and_return_conditional_losses_6656903

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
seed2ÆÑÃ
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
®

ÿ
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6655649

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
ö
ß
D__inference_Decoder_layer_call_and_return_conditional_losses_6656034

inputs*
hidden_layer_1_d_6655979:*d&
hidden_layer_1_d_6655981:d+
hidden_layer_2_d_6655996:	d'
hidden_layer_2_d_6655998:	*
decoder_output_6656013:
%
decoder_output_6656015:	
identity¢&Decoder_output/StatefulPartitionedCall¢(Hidden_layer_1_d/StatefulPartitionedCall¢(Hidden_layer_2_d/StatefulPartitionedCall
(Hidden_layer_1_d/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_d_6655979hidden_layer_1_d_6655981*
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
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6655978¿
(Hidden_layer_2_d/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_1_d/StatefulPartitionedCall:output:0hidden_layer_2_d_6655996hidden_layer_2_d_6655998*
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
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6655995·
&Decoder_output/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_2_d/StatefulPartitionedCall:output:0decoder_output_6656013decoder_output_6656015*
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
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6656012ð
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
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6656031y
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
Ç
z
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656916
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ
:Q M
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
ô

@__inference_VAE_layer_call_and_return_conditional_losses_6656463
encoder_input
lable_input#
encoder_6656429:

encoder_6656431:	"
encoder_6656433:	d
encoder_6656435:d!
encoder_6656437:d 
encoder_6656439: !
encoder_6656441:d 
encoder_6656443: !
decoder_6656449:*d
decoder_6656451:d"
decoder_6656453:	d
decoder_6656455:	#
decoder_6656457:

decoder_6656459:	
identity¢Decoder/StatefulPartitionedCall¢Encoder/StatefulPartitionedCall
Encoder/StatefulPartitionedCallStatefulPartitionedCallencoder_inputencoder_6656429encoder_6656431encoder_6656433encoder_6656435encoder_6656437encoder_6656439encoder_6656441encoder_6656443*
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655725û
!Concatenate_layer/PartitionedCallPartitionedCall(Encoder/StatefulPartitionedCall:output:2lable_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656231ã
Decoder/StatefulPartitionedCallStatefulPartitionedCall*Concatenate_layer/PartitionedCall:output:0decoder_6656449decoder_6656451decoder_6656453decoder_6656455decoder_6656457decoder_6656459*
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656034{
IdentityIdentity(Decoder/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^Decoder/StatefulPartitionedCall ^Encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 2B
Decoder/StatefulPartitionedCallDecoder/StatefulPartitionedCall2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%
_user_specified_nameLable_input
#

D__inference_Encoder_layer_call_and_return_conditional_losses_6655856

inputs*
hidden_layer_1_6655832:
%
hidden_layer_1_6655834:	)
hidden_layer_2_6655837:	d$
hidden_layer_2_6655839:d$
mean_layer_6655842:d  
mean_layer_6655844: (
variance_layer_6655847:d $
variance_layer_6655849: 
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
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6655636¬
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6655832hidden_layer_1_6655834*
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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6655649´
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6655837hidden_layer_2_6655839*
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
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6655666¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6655842mean_layer_6655844*
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
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6655682´
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6655847variance_layer_6655849*
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
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6655698¬
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
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6655720z
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
)__inference_Encoder_layer_call_fn_6655748
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655725o
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
Ö
ò
%__inference_VAE_layer_call_fn_6656611
inputs_0
inputs_1
unknown:

	unknown_0:	
	unknown_1:	d
	unknown_2:d
	unknown_3:d 
	unknown_4: 
	unknown_5:d 
	unknown_6: 
	unknown_7:*d
	unknown_8:d
	unknown_9:	d

unknown_10:	

unknown_11:


unknown_12:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_VAE_layer_call_and_return_conditional_losses_6656360s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/1
Ó
ã
)__inference_Encoder_layer_call_fn_6655904
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655856o
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
ô

@__inference_VAE_layer_call_and_return_conditional_losses_6656501
encoder_input
lable_input#
encoder_6656467:

encoder_6656469:	"
encoder_6656471:	d
encoder_6656473:d!
encoder_6656475:d 
encoder_6656477: !
encoder_6656479:d 
encoder_6656481: !
decoder_6656487:*d
decoder_6656489:d"
decoder_6656491:	d
decoder_6656493:	#
decoder_6656495:

decoder_6656497:	
identity¢Decoder/StatefulPartitionedCall¢Encoder/StatefulPartitionedCall
Encoder/StatefulPartitionedCallStatefulPartitionedCallencoder_inputencoder_6656467encoder_6656469encoder_6656471encoder_6656473encoder_6656475encoder_6656477encoder_6656479encoder_6656481*
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655856û
!Concatenate_layer/PartitionedCallPartitionedCall(Encoder/StatefulPartitionedCall:output:2lable_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656231ã
Decoder/StatefulPartitionedCallStatefulPartitionedCall*Concatenate_layer/PartitionedCall:output:0decoder_6656487decoder_6656489decoder_6656491decoder_6656493decoder_6656495decoder_6656497*
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656124{
IdentityIdentity(Decoder/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^Decoder/StatefulPartitionedCall ^Encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 2B
Decoder/StatefulPartitionedCallDecoder/StatefulPartitionedCall2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameEncoder_input:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%
_user_specified_nameLable_input
Ì6
¯
D__inference_Encoder_layer_call_and_return_conditional_losses_6656858

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
seed2âÃÃ
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
#

D__inference_Encoder_layer_call_and_return_conditional_losses_6655725

inputs*
hidden_layer_1_6655650:
%
hidden_layer_1_6655652:	)
hidden_layer_2_6655667:	d$
hidden_layer_2_6655669:d$
mean_layer_6655683:d  
mean_layer_6655685: (
variance_layer_6655699:d $
variance_layer_6655701: 
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
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6655636¬
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall&Flatten_layer/PartitionedCall:output:0hidden_layer_1_6655650hidden_layer_1_6655652*
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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6655649´
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_6655667hidden_layer_2_6655669*
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
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6655666¤
"Mean_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0mean_layer_6655683mean_layer_6655685*
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
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6655682´
&Variance_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0variance_layer_6655699variance_layer_6655701*
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
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6655698¬
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
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6655720z
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
j
ú
@__inference_VAE_layer_call_and_return_conditional_losses_6656687
inputs_0
inputs_1I
5encoder_hidden_layer_1_matmul_readvariableop_resource:
E
6encoder_hidden_layer_1_biasadd_readvariableop_resource:	H
5encoder_hidden_layer_2_matmul_readvariableop_resource:	dD
6encoder_hidden_layer_2_biasadd_readvariableop_resource:dC
1encoder_mean_layer_matmul_readvariableop_resource:d @
2encoder_mean_layer_biasadd_readvariableop_resource: G
5encoder_variance_layer_matmul_readvariableop_resource:d D
6encoder_variance_layer_biasadd_readvariableop_resource: I
7decoder_hidden_layer_1_d_matmul_readvariableop_resource:*dF
8decoder_hidden_layer_1_d_biasadd_readvariableop_resource:dJ
7decoder_hidden_layer_2_d_matmul_readvariableop_resource:	dG
8decoder_hidden_layer_2_d_biasadd_readvariableop_resource:	I
5decoder_decoder_output_matmul_readvariableop_resource:
E
6decoder_decoder_output_biasadd_readvariableop_resource:	
identity¢-Decoder/Decoder_output/BiasAdd/ReadVariableOp¢,Decoder/Decoder_output/MatMul/ReadVariableOp¢/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp¢.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp¢/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp¢.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp¢-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp¢,Encoder/Hidden_layer_1/MatMul/ReadVariableOp¢-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp¢,Encoder/Hidden_layer_2/MatMul/ReadVariableOp¢)Encoder/Mean_layer/BiasAdd/ReadVariableOp¢(Encoder/Mean_layer/MatMul/ReadVariableOp¢-Encoder/Variance_layer/BiasAdd/ReadVariableOp¢,Encoder/Variance_layer/MatMul/ReadVariableOpl
Encoder/Flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
Encoder/Flatten_layer/ReshapeReshapeinputs_0$Encoder/Flatten_layer/Const:output:0*
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
 *  ?Ö
9Encoder/Encoder_output/random_normal/RandomStandardNormalRandomStandardNormal%Encoder/Encoder_output/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2à²¤Û
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
:ÿÿÿÿÿÿÿÿÿ _
Concatenate_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :±
Concatenate_layer/concatConcatV2Encoder/Encoder_output/add:z:0inputs_1&Concatenate_layer/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*¦
.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOpReadVariableOp7decoder_hidden_layer_1_d_matmul_readvariableop_resource*
_output_shapes

:*d*
dtype0¶
Decoder/Hidden_layer_1_d/MatMulMatMul!Concatenate_layer/concat:output:06Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp:value:0*
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
:ÿÿÿÿÿÿÿÿÿß
NoOpNoOp.^Decoder/Decoder_output/BiasAdd/ReadVariableOp-^Decoder/Decoder_output/MatMul/ReadVariableOp0^Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp/^Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp0^Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp/^Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp.^Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_1/MatMul/ReadVariableOp.^Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-^Encoder/Hidden_layer_2/MatMul/ReadVariableOp*^Encoder/Mean_layer/BiasAdd/ReadVariableOp)^Encoder/Mean_layer/MatMul/ReadVariableOp.^Encoder/Variance_layer/BiasAdd/ReadVariableOp-^Encoder/Variance_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 2^
-Decoder/Decoder_output/BiasAdd/ReadVariableOp-Decoder/Decoder_output/BiasAdd/ReadVariableOp2\
,Decoder/Decoder_output/MatMul/ReadVariableOp,Decoder/Decoder_output/MatMul/ReadVariableOp2b
/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp/Decoder/Hidden_layer_1_d/BiasAdd/ReadVariableOp2`
.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp.Decoder/Hidden_layer_1_d/MatMul/ReadVariableOp2b
/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp/Decoder/Hidden_layer_2_d/BiasAdd/ReadVariableOp2`
.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp.Decoder/Hidden_layer_2_d/MatMul/ReadVariableOp2^
-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_1/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_1/MatMul/ReadVariableOp,Encoder/Hidden_layer_1/MatMul/ReadVariableOp2^
-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp-Encoder/Hidden_layer_2/BiasAdd/ReadVariableOp2\
,Encoder/Hidden_layer_2/MatMul/ReadVariableOp,Encoder/Hidden_layer_2/MatMul/ReadVariableOp2V
)Encoder/Mean_layer/BiasAdd/ReadVariableOp)Encoder/Mean_layer/BiasAdd/ReadVariableOp2T
(Encoder/Mean_layer/MatMul/ReadVariableOp(Encoder/Mean_layer/MatMul/ReadVariableOp2^
-Encoder/Variance_layer/BiasAdd/ReadVariableOp-Encoder/Variance_layer/BiasAdd/ReadVariableOp2\
,Encoder/Variance_layer/MatMul/ReadVariableOp,Encoder/Variance_layer/MatMul/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
inputs/1
÷

)__inference_Decoder_layer_call_fn_6656950

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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656124s
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
¤

þ
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6657149

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
	

)__inference_Decoder_layer_call_fn_6656049
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656034s
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
¿
x
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656231

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ
:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¬


M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6657169

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
¾
Ü
)__inference_Encoder_layer_call_fn_6656813

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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655856o
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
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6655636

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
Ø
¡
2__inference_Hidden_layer_2_d_layer_call_fn_6657158

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
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6655995p
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
Ê	
ø
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6655682

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
Ô

@__inference_VAE_layer_call_and_return_conditional_losses_6656247

inputs
inputs_1#
encoder_6656205:

encoder_6656207:	"
encoder_6656209:	d
encoder_6656211:d!
encoder_6656213:d 
encoder_6656215: !
encoder_6656217:d 
encoder_6656219: !
decoder_6656233:*d
decoder_6656235:d"
decoder_6656237:	d
decoder_6656239:	#
decoder_6656241:

decoder_6656243:	
identity¢Decoder/StatefulPartitionedCall¢Encoder/StatefulPartitionedCall
Encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_6656205encoder_6656207encoder_6656209encoder_6656211encoder_6656213encoder_6656215encoder_6656217encoder_6656219*
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655725ø
!Concatenate_layer/PartitionedCallPartitionedCall(Encoder/StatefulPartitionedCall:output:2inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656231ã
Decoder/StatefulPartitionedCallStatefulPartitionedCall*Concatenate_layer/PartitionedCall:output:0decoder_6656233decoder_6656235decoder_6656237decoder_6656239decoder_6656241decoder_6656243*
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656034{
IdentityIdentity(Decoder/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^Decoder/StatefulPartitionedCall ^Encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
: : : : : : : : : : : : : : 2B
Decoder/StatefulPartitionedCallDecoder/StatefulPartitionedCall2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¾
Ü
)__inference_Encoder_layer_call_fn_6656788

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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655725o
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
0__inference_Hidden_layer_2_layer_call_fn_6657058

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
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6655666o
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
*
â
D__inference_Decoder_layer_call_and_return_conditional_losses_6657018

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
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultï
K
Encoder_input:
serving_default_Encoder_input:0ÿÿÿÿÿÿÿÿÿ
C
Lable_input4
serving_default_Lable_input:0ÿÿÿÿÿÿÿÿÿ
?
Decoder4
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:«ß
Ø
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
ê
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
¶
!layer-0
"layer_with_weights-0
"layer-1
#layer_with_weights-1
#layer-2
$layer_with_weights-2
$layer-3
%layer-4
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_network

,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913"
trackable_list_wrapper

,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ê
?trace_0
@trace_1
Atrace_2
Btrace_32ß
%__inference_VAE_layer_call_fn_6656278
%__inference_VAE_layer_call_fn_6656577
%__inference_VAE_layer_call_fn_6656611
%__inference_VAE_layer_call_fn_6656425À
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
 z?trace_0z@trace_1zAtrace_2zBtrace_3
¶
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32Ë
@__inference_VAE_layer_call_and_return_conditional_losses_6656687
@__inference_VAE_layer_call_and_return_conditional_losses_6656763
@__inference_VAE_layer_call_and_return_conditional_losses_6656463
@__inference_VAE_layer_call_and_return_conditional_losses_6656501À
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
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
àBÝ
"__inference__wrapped_model_6655623Encoder_inputLable_input"
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
ë
Giter

Hbeta_1

Ibeta_2
	Jdecay
Klearning_rate,mõ-mö.m÷/mø0mù1mú2mû3mü4mý5mþ6mÿ7m8m9m,v-v.v/v0v1v2v3v4v5v6v7v8v9v"
	optimizer
,
Lserving_default"
signature_map
¥
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
»
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
»
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
»
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

0kernel
1bias"
_tf_keras_layer
»
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
¥
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
X
,0
-1
.2
/3
04
15
26
37"
trackable_list_wrapper
X
,0
-1
.2
/3
04
15
26
37"
trackable_list_wrapper
 "
trackable_list_wrapper
­
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ú
vtrace_0
wtrace_1
xtrace_2
ytrace_32ï
)__inference_Encoder_layer_call_fn_6655748
)__inference_Encoder_layer_call_fn_6656788
)__inference_Encoder_layer_call_fn_6656813
)__inference_Encoder_layer_call_fn_6655904À
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
 zvtrace_0zwtrace_1zxtrace_2zytrace_3
Æ
ztrace_0
{trace_1
|trace_2
}trace_32Û
D__inference_Encoder_layer_call_and_return_conditional_losses_6656858
D__inference_Encoder_layer_call_and_return_conditional_losses_6656903
D__inference_Encoder_layer_call_and_return_conditional_losses_6655932
D__inference_Encoder_layer_call_and_return_conditional_losses_6655960À
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
 zztrace_0z{trace_1z|trace_2z}trace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
ù
trace_02Ú
3__inference_Concatenate_layer_layer_call_fn_6656909¢
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
 ztrace_0

trace_02õ
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656916¢
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
 ztrace_0
"
_tf_keras_input_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

4kernel
5bias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

6kernel
7bias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
J
40
51
62
73
84
95"
trackable_list_wrapper
J
40
51
62
73
84
95"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
â
¢trace_0
£trace_1
¤trace_2
¥trace_32ï
)__inference_Decoder_layer_call_fn_6656049
)__inference_Decoder_layer_call_fn_6656933
)__inference_Decoder_layer_call_fn_6656950
)__inference_Decoder_layer_call_fn_6656156À
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
 z¢trace_0z£trace_1z¤trace_2z¥trace_3
Î
¦trace_0
§trace_1
¨trace_2
©trace_32Û
D__inference_Decoder_layer_call_and_return_conditional_losses_6656984
D__inference_Decoder_layer_call_and_return_conditional_losses_6657018
D__inference_Decoder_layer_call_and_return_conditional_losses_6656176
D__inference_Decoder_layer_call_and_return_conditional_losses_6656196À
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
 z¦trace_0z§trace_1z¨trace_2z©trace_3
):'
2Hidden_layer_1/kernel
": 2Hidden_layer_1/bias
(:&	d2Hidden_layer_2/kernel
!:d2Hidden_layer_2/bias
#:!d 2Mean_layer/kernel
: 2Mean_layer/bias
':%d 2Variance_layer/kernel
!: 2Variance_layer/bias
):'*d2Hidden_layer_1_d/kernel
#:!d2Hidden_layer_1_d/bias
*:(	d2Hidden_layer_2_d/kernel
$:"2Hidden_layer_2_d/bias
):'
2Decoder_output/kernel
": 2Decoder_output/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
(
ª0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
%__inference_VAE_layer_call_fn_6656278Encoder_inputLable_input"À
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
B
%__inference_VAE_layer_call_fn_6656577inputs/0inputs/1"À
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
B
%__inference_VAE_layer_call_fn_6656611inputs/0inputs/1"À
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
B
%__inference_VAE_layer_call_fn_6656425Encoder_inputLable_input"À
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
B
@__inference_VAE_layer_call_and_return_conditional_losses_6656687inputs/0inputs/1"À
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
B
@__inference_VAE_layer_call_and_return_conditional_losses_6656763inputs/0inputs/1"À
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
¦B£
@__inference_VAE_layer_call_and_return_conditional_losses_6656463Encoder_inputLable_input"À
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
¦B£
@__inference_VAE_layer_call_and_return_conditional_losses_6656501Encoder_inputLable_input"À
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÝBÚ
%__inference_signature_wrapper_6656543Encoder_inputLable_input"
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
²
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
õ
°trace_02Ö
/__inference_Flatten_layer_layer_call_fn_6657023¢
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
 z°trace_0

±trace_02ñ
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6657029¢
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
 z±trace_0
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
²
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
ö
·trace_02×
0__inference_Hidden_layer_1_layer_call_fn_6657038¢
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
 z·trace_0

¸trace_02ò
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657049¢
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
 z¸trace_0
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
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
ö
¾trace_02×
0__inference_Hidden_layer_2_layer_call_fn_6657058¢
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
 z¾trace_0

¿trace_02ò
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657069¢
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
 z¿trace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
ò
Åtrace_02Ó
,__inference_Mean_layer_layer_call_fn_6657078¢
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
 zÅtrace_0

Ætrace_02î
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6657088¢
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
 zÆtrace_0
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
ö
Ìtrace_02×
0__inference_Variance_layer_layer_call_fn_6657097¢
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
 zÌtrace_0

Ítrace_02ò
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6657107¢
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
 zÍtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
ö
Ótrace_02×
0__inference_Encoder_output_layer_call_fn_6657113¢
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
 zÓtrace_0

Ôtrace_02ò
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6657129¢
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
 zÔtrace_0
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bÿ
)__inference_Encoder_layer_call_fn_6655748Encoder_input"À
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
)__inference_Encoder_layer_call_fn_6656788inputs"À
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
)__inference_Encoder_layer_call_fn_6656813inputs"À
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
)__inference_Encoder_layer_call_fn_6655904Encoder_input"À
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6656858inputs"À
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6656903inputs"À
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655932Encoder_input"À
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655960Encoder_input"À
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
óBð
3__inference_Concatenate_layer_layer_call_fn_6656909inputs/0inputs/1"¢
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
B
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656916inputs/0inputs/1"¢
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
¸
Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ø
Útrace_02Ù
2__inference_Hidden_layer_1_d_layer_call_fn_6657138¢
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
 zÚtrace_0

Ûtrace_02ô
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6657149¢
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
 zÛtrace_0
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ünon_trainable_variables
Ýlayers
Þmetrics
 ßlayer_regularization_losses
àlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ø
átrace_02Ù
2__inference_Hidden_layer_2_d_layer_call_fn_6657158¢
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
 zátrace_0

âtrace_02ô
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6657169¢
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
 zâtrace_0
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö
ètrace_02×
0__inference_Decoder_output_layer_call_fn_6657178¢
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
 zètrace_0

étrace_02ò
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6657189¢
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
 zétrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
õ
ïtrace_02Ö
/__inference_Reshape_layer_layer_call_fn_6657194¢
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
 zïtrace_0

ðtrace_02ñ
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6657207¢
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
 zðtrace_0
 "
trackable_list_wrapper
C
!0
"1
#2
$3
%4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bÿ
)__inference_Decoder_layer_call_fn_6656049Decoder_input"À
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
)__inference_Decoder_layer_call_fn_6656933inputs"À
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
)__inference_Decoder_layer_call_fn_6656950inputs"À
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
)__inference_Decoder_layer_call_fn_6656156Decoder_input"À
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656984inputs"À
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6657018inputs"À
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656176Decoder_input"À
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656196Decoder_input"À
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
R
ñ	variables
ò	keras_api

ótotal

ôcount"
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
ãBà
/__inference_Flatten_layer_layer_call_fn_6657023inputs"¢
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
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6657029inputs"¢
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
0__inference_Hidden_layer_1_layer_call_fn_6657038inputs"¢
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
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657049inputs"¢
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
0__inference_Hidden_layer_2_layer_call_fn_6657058inputs"¢
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
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657069inputs"¢
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
,__inference_Mean_layer_layer_call_fn_6657078inputs"¢
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
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6657088inputs"¢
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
0__inference_Variance_layer_layer_call_fn_6657097inputs"¢
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
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6657107inputs"¢
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
0__inference_Encoder_output_layer_call_fn_6657113inputs/0inputs/1"¢
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
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6657129inputs/0inputs/1"¢
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
2__inference_Hidden_layer_1_d_layer_call_fn_6657138inputs"¢
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
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6657149inputs"¢
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
2__inference_Hidden_layer_2_d_layer_call_fn_6657158inputs"¢
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
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6657169inputs"¢
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
0__inference_Decoder_output_layer_call_fn_6657178inputs"¢
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
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6657189inputs"¢
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
/__inference_Reshape_layer_layer_call_fn_6657194inputs"¢
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
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6657207inputs"¢
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
0
ó0
ô1"
trackable_list_wrapper
.
ñ	variables"
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
.:,*d2Adam/Hidden_layer_1_d/kernel/m
(:&d2Adam/Hidden_layer_1_d/bias/m
/:-	d2Adam/Hidden_layer_2_d/kernel/m
):'2Adam/Hidden_layer_2_d/bias/m
.:,
2Adam/Decoder_output/kernel/m
':%2Adam/Decoder_output/bias/m
.:,
2Adam/Hidden_layer_1/kernel/v
':%2Adam/Hidden_layer_1/bias/v
-:+	d2Adam/Hidden_layer_2/kernel/v
&:$d2Adam/Hidden_layer_2/bias/v
(:&d 2Adam/Mean_layer/kernel/v
":  2Adam/Mean_layer/bias/v
,:*d 2Adam/Variance_layer/kernel/v
&:$ 2Adam/Variance_layer/bias/v
.:,*d2Adam/Hidden_layer_1_d/kernel/v
(:&d2Adam/Hidden_layer_1_d/bias/v
/:-	d2Adam/Hidden_layer_2_d/kernel/v
):'2Adam/Hidden_layer_2_d/bias/v
.:,
2Adam/Decoder_output/kernel/v
':%2Adam/Decoder_output/bias/vÖ
N__inference_Concatenate_layer_layer_call_and_return_conditional_losses_6656916Z¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ 
"
inputs/1ÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ*
 ­
3__inference_Concatenate_layer_layer_call_fn_6656909vZ¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ 
"
inputs/1ÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿ*»
D__inference_Decoder_layer_call_and_return_conditional_losses_6656176s456789>¢;
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656196s456789>¢;
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6656984l4567897¢4
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
D__inference_Decoder_layer_call_and_return_conditional_losses_6657018l4567897¢4
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
)__inference_Decoder_layer_call_fn_6656049f456789>¢;
4¢1
'$
Decoder_inputÿÿÿÿÿÿÿÿÿ*
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_Decoder_layer_call_fn_6656156f456789>¢;
4¢1
'$
Decoder_inputÿÿÿÿÿÿÿÿÿ*
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_Decoder_layer_call_fn_6656933_4567897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ*
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_Decoder_layer_call_fn_6656950_4567897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ*
p

 
ª "ÿÿÿÿÿÿÿÿÿ­
K__inference_Decoder_output_layer_call_and_return_conditional_losses_6657189^890¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_Decoder_output_layer_call_fn_6657178Q890¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
D__inference_Encoder_layer_call_and_return_conditional_losses_6655932º,-./0123B¢?
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6655960º,-./0123B¢?
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6656858³,-./0123;¢8
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
D__inference_Encoder_layer_call_and_return_conditional_losses_6656903³,-./0123;¢8
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
)__inference_Encoder_layer_call_fn_6655748ª,-./0123B¢?
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
)__inference_Encoder_layer_call_fn_6655904ª,-./0123B¢?
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
)__inference_Encoder_layer_call_fn_6656788£,-./0123;¢8
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
)__inference_Encoder_layer_call_fn_6656813£,-./0123;¢8
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
K__inference_Encoder_output_layer_call_and_return_conditional_losses_6657129Z¢W
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
0__inference_Encoder_output_layer_call_fn_6657113vZ¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ 
"
inputs/1ÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ «
J__inference_Flatten_layer_layer_call_and_return_conditional_losses_6657029]3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_Flatten_layer_layer_call_fn_6657023P3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ­
M__inference_Hidden_layer_1_d_layer_call_and_return_conditional_losses_6657149\45/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
2__inference_Hidden_layer_1_d_layer_call_fn_6657138O45/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª "ÿÿÿÿÿÿÿÿÿd­
K__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_6657049^,-0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_Hidden_layer_1_layer_call_fn_6657038Q,-0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ®
M__inference_Hidden_layer_2_d_layer_call_and_return_conditional_losses_6657169]67/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_Hidden_layer_2_d_layer_call_fn_6657158P67/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ¬
K__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_6657069]./0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
0__inference_Hidden_layer_2_layer_call_fn_6657058P./0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿd§
G__inference_Mean_layer_layer_call_and_return_conditional_losses_6657088\01/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_Mean_layer_layer_call_fn_6657078O01/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ «
J__inference_Reshape_layer_layer_call_and_return_conditional_losses_6657207]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_Reshape_layer_layer_call_fn_6657194P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿð
@__inference_VAE_layer_call_and_return_conditional_losses_6656463«,-./0123456789n¢k
d¢a
WT
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
%"
Lable_inputÿÿÿÿÿÿÿÿÿ

p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ð
@__inference_VAE_layer_call_and_return_conditional_losses_6656501«,-./0123456789n¢k
d¢a
WT
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
%"
Lable_inputÿÿÿÿÿÿÿÿÿ

p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 è
@__inference_VAE_layer_call_and_return_conditional_losses_6656687£,-./0123456789f¢c
\¢Y
OL
&#
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ

p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 è
@__inference_VAE_layer_call_and_return_conditional_losses_6656763£,-./0123456789f¢c
\¢Y
OL
&#
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ

p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 È
%__inference_VAE_layer_call_fn_6656278,-./0123456789n¢k
d¢a
WT
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
%"
Lable_inputÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
%__inference_VAE_layer_call_fn_6656425,-./0123456789n¢k
d¢a
WT
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
%"
Lable_inputÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿÀ
%__inference_VAE_layer_call_fn_6656577,-./0123456789f¢c
\¢Y
OL
&#
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿÀ
%__inference_VAE_layer_call_fn_6656611,-./0123456789f¢c
\¢Y
OL
&#
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ«
K__inference_Variance_layer_layer_call_and_return_conditional_losses_6657107\23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
0__inference_Variance_layer_layer_call_fn_6657097O23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ Ö
"__inference__wrapped_model_6655623¯,-./0123456789f¢c
\¢Y
WT
+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
%"
Lable_inputÿÿÿÿÿÿÿÿÿ

ª "5ª2
0
Decoder%"
Decoderÿÿÿÿÿÿÿÿÿõ
%__inference_signature_wrapper_6656543Ë,-./0123456789¢~
¢ 
wªt
<
Encoder_input+(
Encoder_inputÿÿÿÿÿÿÿÿÿ
4
Lable_input%"
Lable_inputÿÿÿÿÿÿÿÿÿ
"5ª2
0
Decoder%"
Decoderÿÿÿÿÿÿÿÿÿ