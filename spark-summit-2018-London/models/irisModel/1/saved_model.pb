 Ѓ
Г&Џ%
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtypeА
is_initialized
"
dtypetypeШ
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.10.12v1.10.1-0-g4dcfddc5d1ГИ
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
e
dense_inputPlaceholder*
shape:€€€€€€€€€*
dtype0*
_output_shapes

:
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"   
   *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *bЧ'њ*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *bЧ'?*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
е
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_output_shapes

:
*

seed *
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0
ќ
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
а
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:

“
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes

:

¶
dense/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense/kernel*
_class
loc:@dense/kernel*
	container *
shape
:

i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
М
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0
О
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:

И
dense/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:

Ь

dense/biasVarHandleOp*
shared_name
dense/bias*
_class
loc:@dense/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
Д
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:

h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:

Ш
dense/MatMulMatMuldense_inputdense/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( 
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:

Н
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

Y
dense/SigmoidSigmoiddense/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€

£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"
      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *тк-њ*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *тк-?*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
л
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
_output_shapes

:
*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0
÷
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
и
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:

Џ
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:

ђ
dense_1/kernelVarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container 
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
Ф
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0
Ф
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:

М
dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
Ґ
dense_1/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
Г
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
К
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:

Ю
dense_1/MatMulMatMuldense/Sigmoiddense_1/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
У
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
]
dense_1/SoftmaxSoftmaxdense_1/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
\
PlaceholderPlaceholder*
dtype0*
_output_shapes

:
*
shape
:

L
AssignVariableOpAssignVariableOpdense/kernelPlaceholder*
dtype0
n
ReadVariableOpReadVariableOpdense/kernel^AssignVariableOp*
dtype0*
_output_shapes

:

V
Placeholder_1Placeholder*
dtype0*
_output_shapes
:
*
shape:

N
AssignVariableOp_1AssignVariableOp
dense/biasPlaceholder_1*
dtype0
l
ReadVariableOp_1ReadVariableOp
dense/bias^AssignVariableOp_1*
dtype0*
_output_shapes
:

^
Placeholder_2Placeholder*
dtype0*
_output_shapes

:
*
shape
:

R
AssignVariableOp_2AssignVariableOpdense_1/kernelPlaceholder_2*
dtype0
t
ReadVariableOp_2ReadVariableOpdense_1/kernel^AssignVariableOp_2*
_output_shapes

:
*
dtype0
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
P
AssignVariableOp_3AssignVariableOpdense_1/biasPlaceholder_3*
dtype0
n
ReadVariableOp_3ReadVariableOpdense_1/bias^AssignVariableOp_3*
dtype0*
_output_shapes
:
N
VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
N
VarIsInitializedOp_1VarIsInitializedOp
dense/bias*
_output_shapes
: 
R
VarIsInitializedOp_2VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_3VarIsInitializedOpdense_1/bias*
_output_shapes
: 
d
initNoOp^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign
k
)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Г
Adam/iterationsVarHandleOp*
shape: * 
shared_nameAdam/iterations*
dtype0	*
	container *
_output_shapes
: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 
Ч
Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*
dtype0	*"
_class
loc:@Adam/iterations
П
#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
f
!Adam/lr/Initializer/initial_valueConst*
valueB
 *
„#=*
dtype0*
_output_shapes
: 
s
Adam/lrVarHandleOp*
shared_name	Adam/lr*
dtype0*
	container *
_output_shapes
: *
shape: 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
_class
loc:@Adam/lr*
dtype0
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 
j
%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
{
Adam/beta_1VarHandleOp*
	container *
_output_shapes
: *
shape: *
shared_nameAdam/beta_1*
dtype0
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
З
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
Г
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
j
%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
{
Adam/beta_2VarHandleOp*
shape: *
shared_nameAdam/beta_2*
dtype0*
	container *
_output_shapes
: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
З
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0
Г
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
i
$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
y

Adam/decayVarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name
Adam/decay
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
Г
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0
А
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
dtype0*
_output_shapes
: *
_class
loc:@Adam/decay
Г
dense_1_targetPlaceholder*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€
R
ConstConst*
dtype0*
_output_shapes
:*
valueB*  А?
Г
dense_1_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
'loss/dense_1_loss/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
•
loss/dense_1_loss/SumSumdense_1/Softmax'loss/dense_1_loss/Sum/reduction_indices*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims(
~
loss/dense_1_loss/truedivRealDivdense_1/Softmaxloss/dense_1_loss/Sum*
T0*'
_output_shapes
:€€€€€€€€€
\
loss/dense_1_loss/ConstConst*
_output_shapes
: *
valueB
 *Хњ÷3*
dtype0
\
loss/dense_1_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
loss/dense_1_loss/subSubloss/dense_1_loss/sub/xloss/dense_1_loss/Const*
T0*
_output_shapes
: 
Ц
'loss/dense_1_loss/clip_by_value/MinimumMinimumloss/dense_1_loss/truedivloss/dense_1_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€
Ю
loss/dense_1_loss/clip_by_valueMaximum'loss/dense_1_loss/clip_by_value/Minimumloss/dense_1_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€
o
loss/dense_1_loss/LogLogloss/dense_1_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
u
loss/dense_1_loss/mulMuldense_1_targetloss/dense_1_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
k
)loss/dense_1_loss/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ђ
loss/dense_1_loss/Sum_1Sumloss/dense_1_loss/mul)loss/dense_1_loss/Sum_1/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
c
loss/dense_1_loss/NegNegloss/dense_1_loss/Sum_1*#
_output_shapes
:€€€€€€€€€*
T0
k
(loss/dense_1_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
™
loss/dense_1_loss/MeanMeanloss/dense_1_loss/Neg(loss/dense_1_loss/Mean/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
|
loss/dense_1_loss/mul_1Mulloss/dense_1_loss/Meandense_1_sample_weights*
T0*#
_output_shapes
:€€€€€€€€€
a
loss/dense_1_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
К
loss/dense_1_loss/NotEqualNotEqualdense_1_sample_weightsloss/dense_1_loss/NotEqual/y*
T0*#
_output_shapes
:€€€€€€€€€
w
loss/dense_1_loss/CastCastloss/dense_1_loss/NotEqual*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0

c
loss/dense_1_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
С
loss/dense_1_loss/Mean_1Meanloss/dense_1_loss/Castloss/dense_1_loss/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
З
loss/dense_1_loss/truediv_1RealDivloss/dense_1_loss/mul_1loss/dense_1_loss/Mean_1*
T0*#
_output_shapes
:€€€€€€€€€
c
loss/dense_1_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Ц
loss/dense_1_loss/Mean_2Meanloss/dense_1_loss/truediv_1loss/dense_1_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_1_loss/Mean_2*
_output_shapes
: *
T0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ч
metrics/acc/ArgMaxArgMaxdense_1_targetmetrics/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
i
metrics/acc/ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
Ь
metrics/acc/ArgMax_1ArgMaxdense_1/Softmaxmetrics/acc/ArgMax_1/dimension*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0*
output_type0	
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:€€€€€€€€€
h
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*

DstT0*#
_output_shapes
:€€€€€€€€€
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
Г
!training/Adam/gradients/grad_ys_0Const*
valueB
 *  А?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
ґ
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@loss/mul
¶
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_1_loss/Mean_2*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ъ
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ї
Ctraining/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Reshape/shapeConst*
valueB:*+
_class!
loc:@loss/dense_1_loss/Mean_2*
dtype0*
_output_shapes
:
Ъ
=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0*+
_class!
loc:@loss/dense_1_loss/Mean_2
√
;training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/ShapeShapeloss/dense_1_loss/truediv_1*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/dense_1_loss/Mean_2
Ђ
:training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/TileTile=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Reshape;training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Shape*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_2*#
_output_shapes
:€€€€€€€€€
≈
=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Shape_1Shapeloss/dense_1_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_1_loss/Mean_2*
_output_shapes
:
≠
=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Shape_2Const*
valueB *+
_class!
loc:@loss/dense_1_loss/Mean_2*
dtype0*
_output_shapes
: 
≤
;training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/ConstConst*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/dense_1_loss/Mean_2*
dtype0
©
:training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/ProdProd=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Shape_1;training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_1_loss/Mean_2
і
=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/dense_1_loss/Mean_2*
dtype0*
_output_shapes
:
≠
<training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Prod_1Prod=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Shape_2=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Const_1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_1_loss/Mean_2*
_output_shapes
: 
Ѓ
?training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/dense_1_loss/Mean_2*
dtype0*
_output_shapes
: 
Х
=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/MaximumMaximum<training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Prod_1?training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_2*
_output_shapes
: 
У
>training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Prod=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Maximum*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_2*
_output_shapes
: 
я
:training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/CastCast>training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/floordiv*

SrcT0*+
_class!
loc:@loss/dense_1_loss/Mean_2*

DstT0*
_output_shapes
: 
Ы
=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/truedivRealDiv:training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Tile:training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/Cast*
T0*+
_class!
loc:@loss/dense_1_loss/Mean_2*#
_output_shapes
:€€€€€€€€€
≈
>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/ShapeShapeloss/dense_1_loss/mul_1*
_output_shapes
:*
T0*
out_type0*.
_class$
" loc:@loss/dense_1_loss/truediv_1
≥
@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape_1Const*
valueB *.
_class$
" loc:@loss/dense_1_loss/truediv_1*
dtype0*
_output_shapes
: 
÷
Ntraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
В
@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/truedivloss/dense_1_loss/Mean_1*#
_output_shapes
:€€€€€€€€€*
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1
≈
<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/BroadcastGradientArgs*.
_class$
" loc:@loss/dense_1_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
µ
@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape*
T0*
Tshape0*.
_class$
" loc:@loss/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
Ї
<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/NegNegloss/dense_1_loss/mul_1*
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
Г
Btraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Negloss/dense_1_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
Й
Btraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_1loss/dense_1_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
§
<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_1_loss/Mean_2_grad/truedivBtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/RealDiv_2*#
_output_shapes
:€€€€€€€€€*
T0*.
_class$
" loc:@loss/dense_1_loss/truediv_1
≈
>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/BroadcastGradientArgs:1*.
_class$
" loc:@loss/dense_1_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ѓ
Btraining/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*.
_class$
" loc:@loss/dense_1_loss/truediv_1*
_output_shapes
: 
Љ
:training/Adam/gradients/loss/dense_1_loss/mul_1_grad/ShapeShapeloss/dense_1_loss/Mean*
T0*
out_type0**
_class 
loc:@loss/dense_1_loss/mul_1*
_output_shapes
:
Њ
<training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Shape_1Shapedense_1_sample_weights*
T0*
out_type0**
_class 
loc:@loss/dense_1_loss/mul_1*
_output_shapes
:
∆
Jtraining/Adam/gradients/loss/dense_1_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Shape<training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0**
_class 
loc:@loss/dense_1_loss/mul_1
у
8training/Adam/gradients/loss/dense_1_loss/mul_1_grad/MulMul@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Reshapedense_1_sample_weights*#
_output_shapes
:€€€€€€€€€*
T0**
_class 
loc:@loss/dense_1_loss/mul_1
±
8training/Adam/gradients/loss/dense_1_loss/mul_1_grad/SumSum8training/Adam/gradients/loss/dense_1_loss/mul_1_grad/MulJtraining/Adam/gradients/loss/dense_1_loss/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/dense_1_loss/mul_1*
_output_shapes
:
•
<training/Adam/gradients/loss/dense_1_loss/mul_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Sum:training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_1_loss/mul_1*#
_output_shapes
:€€€€€€€€€
х
:training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Mul_1Mulloss/dense_1_loss/Mean@training/Adam/gradients/loss/dense_1_loss/truediv_1_grad/Reshape*
T0**
_class 
loc:@loss/dense_1_loss/mul_1*#
_output_shapes
:€€€€€€€€€
Ј
:training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Sum_1Sum:training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Mul_1Ltraining/Adam/gradients/loss/dense_1_loss/mul_1_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss/dense_1_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ђ
>training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Reshape_1Reshape:training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Sum_1<training/Adam/gradients/loss/dense_1_loss/mul_1_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0**
_class 
loc:@loss/dense_1_loss/mul_1
є
9training/Adam/gradients/loss/dense_1_loss/Mean_grad/ShapeShapeloss/dense_1_loss/Neg*
T0*
out_type0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
:
•
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/SizeConst*
value	B :*)
_class
loc:@loss/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
р
7training/Adam/gradients/loss/dense_1_loss/Mean_grad/addAdd(loss/dense_1_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: 
Д
7training/Adam/gradients/loss/dense_1_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_1_loss/Mean_grad/add8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: 
∞
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_1Const*
valueB: *)
_class
loc:@loss/dense_1_loss/Mean*
dtype0*
_output_shapes
:
ђ
?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/startConst*
value	B : *)
_class
loc:@loss/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
ђ
?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/deltaConst*
_output_shapes
: *
value	B :*)
_class
loc:@loss/dense_1_loss/Mean*
dtype0
—
9training/Adam/gradients/loss/dense_1_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_1_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
:*

Tidx0
Ђ
>training/Adam/gradients/loss/dense_1_loss/Mean_grad/Fill/valueConst*
_output_shapes
: *
value	B :*)
_class
loc:@loss/dense_1_loss/Mean*
dtype0
Э
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_1_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*)
_class
loc:@loss/dense_1_loss/Mean
Ф
Atraining/Adam/gradients/loss/dense_1_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_1_loss/Mean_grad/range7training/Adam/gradients/loss/dense_1_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Fill*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
N*
_output_shapes
:
™
=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum/yConst*
value	B :*)
_class
loc:@loss/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
Ш
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_1_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
:
Р
<training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
:
Ѓ
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/ReshapeReshape<training/Adam/gradients/loss/dense_1_loss/mul_1_grad/ReshapeAtraining/Adam/gradients/loss/dense_1_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*)
_class
loc:@loss/dense_1_loss/Mean*#
_output_shapes
:€€€€€€€€€
¶
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordiv*
T0*)
_class
loc:@loss/dense_1_loss/Mean*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
ї
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_2Shapeloss/dense_1_loss/Neg*
T0*
out_type0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
:
Љ
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_3Shapeloss/dense_1_loss/Mean*
out_type0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
:*
T0
Ѓ
9training/Adam/gradients/loss/dense_1_loss/Mean_grad/ConstConst*
valueB: *)
_class
loc:@loss/dense_1_loss/Mean*
dtype0*
_output_shapes
:
°
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_1_loss/Mean_grad/Const*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
∞
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *)
_class
loc:@loss/dense_1_loss/Mean
•
:training/Adam/gradients/loss/dense_1_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_1_loss/Mean_grad/Const_1*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
ђ
?training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1/yConst*
value	B :*)
_class
loc:@loss/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
С
=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_1_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: 
П
>training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_1_loss/Mean_grad/Maximum_1*)
_class
loc:@loss/dense_1_loss/Mean*
_output_shapes
: *
T0
џ
8training/Adam/gradients/loss/dense_1_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_1_loss/Mean_grad/floordiv_1*)
_class
loc:@loss/dense_1_loss/Mean*

DstT0*
_output_shapes
: *

SrcT0
У
;training/Adam/gradients/loss/dense_1_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_1_loss/Mean_grad/Cast*)
_class
loc:@loss/dense_1_loss/Mean*#
_output_shapes
:€€€€€€€€€*
T0
“
6training/Adam/gradients/loss/dense_1_loss/Neg_grad/NegNeg;training/Adam/gradients/loss/dense_1_loss/Mean_grad/truediv*
T0*(
_class
loc:@loss/dense_1_loss/Neg*#
_output_shapes
:€€€€€€€€€
ї
:training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/ShapeShapeloss/dense_1_loss/mul*
T0*
out_type0**
_class 
loc:@loss/dense_1_loss/Sum_1*
_output_shapes
:
І
9training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/SizeConst*
value	B :**
_class 
loc:@loss/dense_1_loss/Sum_1*
dtype0*
_output_shapes
: 
т
8training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/addAdd)loss/dense_1_loss/Sum_1/reduction_indices9training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Size*
_output_shapes
: *
T0**
_class 
loc:@loss/dense_1_loss/Sum_1
Ж
8training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/modFloorMod8training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/add9training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Size*
_output_shapes
: *
T0**
_class 
loc:@loss/dense_1_loss/Sum_1
Ђ
<training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB **
_class 
loc:@loss/dense_1_loss/Sum_1
Ѓ
@training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/range/startConst*
value	B : **
_class 
loc:@loss/dense_1_loss/Sum_1*
dtype0*
_output_shapes
: 
Ѓ
@training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/range/deltaConst*
value	B :**
_class 
loc:@loss/dense_1_loss/Sum_1*
dtype0*
_output_shapes
: 
÷
:training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/rangeRange@training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/range/start9training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Size@training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/range/delta**
_class 
loc:@loss/dense_1_loss/Sum_1*
_output_shapes
:*

Tidx0
≠
?training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Fill/valueConst*
_output_shapes
: *
value	B :**
_class 
loc:@loss/dense_1_loss/Sum_1*
dtype0
Я
9training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/FillFill<training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Shape_1?training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Fill/value*
T0*

index_type0**
_class 
loc:@loss/dense_1_loss/Sum_1*
_output_shapes
: 
Ъ
Btraining/Adam/gradients/loss/dense_1_loss/Sum_1_grad/DynamicStitchDynamicStitch:training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/range8training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/mod:training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Shape9training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Fill*
T0**
_class 
loc:@loss/dense_1_loss/Sum_1*
N*
_output_shapes
:
ђ
>training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Maximum/yConst*
value	B :**
_class 
loc:@loss/dense_1_loss/Sum_1*
dtype0*
_output_shapes
: 
Ь
<training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/MaximumMaximumBtraining/Adam/gradients/loss/dense_1_loss/Sum_1_grad/DynamicStitch>training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Maximum/y*
T0**
_class 
loc:@loss/dense_1_loss/Sum_1*
_output_shapes
:
Ф
=training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Shape<training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Maximum*
T0**
_class 
loc:@loss/dense_1_loss/Sum_1*
_output_shapes
:
Є
<training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/ReshapeReshape6training/Adam/gradients/loss/dense_1_loss/Neg_grad/NegBtraining/Adam/gradients/loss/dense_1_loss/Sum_1_grad/DynamicStitch*
T0*
Tshape0**
_class 
loc:@loss/dense_1_loss/Sum_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ѓ
9training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/TileTile<training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Reshape=training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/floordiv*
T0**
_class 
loc:@loss/dense_1_loss/Sum_1*'
_output_shapes
:€€€€€€€€€*

Tmultiples0
∞
8training/Adam/gradients/loss/dense_1_loss/mul_grad/ShapeShapedense_1_target*
T0*
out_type0*(
_class
loc:@loss/dense_1_loss/mul*
_output_shapes
:
є
:training/Adam/gradients/loss/dense_1_loss/mul_grad/Shape_1Shapeloss/dense_1_loss/Log*
T0*
out_type0*(
_class
loc:@loss/dense_1_loss/mul*
_output_shapes
:
Њ
Htraining/Adam/gradients/loss/dense_1_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_1_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_1_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_1_loss/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
л
6training/Adam/gradients/loss/dense_1_loss/mul_grad/MulMul9training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Tileloss/dense_1_loss/Log*'
_output_shapes
:€€€€€€€€€*
T0*(
_class
loc:@loss/dense_1_loss/mul
©
6training/Adam/gradients/loss/dense_1_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_1_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_1_loss/mul_grad/BroadcastGradientArgs*(
_class
loc:@loss/dense_1_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
™
:training/Adam/gradients/loss/dense_1_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_1_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_1_loss/mul_grad/Shape*
Tshape0*(
_class
loc:@loss/dense_1_loss/mul*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
ж
8training/Adam/gradients/loss/dense_1_loss/mul_grad/Mul_1Muldense_1_target9training/Adam/gradients/loss/dense_1_loss/Sum_1_grad/Tile*
T0*(
_class
loc:@loss/dense_1_loss/mul*'
_output_shapes
:€€€€€€€€€
ѓ
8training/Adam/gradients/loss/dense_1_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_1_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_1_loss/mul_grad/BroadcastGradientArgs:1*(
_class
loc:@loss/dense_1_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
І
<training/Adam/gradients/loss/dense_1_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_1_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_1_loss/mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/dense_1_loss/mul*'
_output_shapes
:€€€€€€€€€
З
=training/Adam/gradients/loss/dense_1_loss/Log_grad/Reciprocal
Reciprocalloss/dense_1_loss/clip_by_value=^training/Adam/gradients/loss/dense_1_loss/mul_grad/Reshape_1*
T0*(
_class
loc:@loss/dense_1_loss/Log*'
_output_shapes
:€€€€€€€€€
Ц
6training/Adam/gradients/loss/dense_1_loss/Log_grad/mulMul<training/Adam/gradients/loss/dense_1_loss/mul_grad/Reshape_1=training/Adam/gradients/loss/dense_1_loss/Log_grad/Reciprocal*'
_output_shapes
:€€€€€€€€€*
T0*(
_class
loc:@loss/dense_1_loss/Log
Ё
Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ShapeShape'loss/dense_1_loss/clip_by_value/Minimum*
out_type0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
_output_shapes
:*
T0
ї
Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
valueB *2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
dtype0
о
Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_2Shape6training/Adam/gradients/loss/dense_1_loss/Log_grad/mul*
T0*
out_type0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
_output_shapes
:
Ѕ
Htraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
dtype0*
_output_shapes
: 
“
Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
Б
Itraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_1_loss/clip_by_value/Minimumloss/dense_1_loss/Const*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
ж
Rtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
ъ
Ctraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqual6training/Adam/gradients/loss/dense_1_loss/Log_grad/mulBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
ь
Etraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/zeros6training/Adam/gradients/loss/dense_1_loss/Log_grad/mul*
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
‘
@training/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
…
Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
Џ
Btraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
Њ
Ftraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*2
_class(
&$loc:@loss/dense_1_loss/clip_by_value
я
Jtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ShapeShapeloss/dense_1_loss/truediv*
out_type0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*
_output_shapes
:*
T0
Ћ
Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
М
Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape*
T0*
out_type0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*
_output_shapes
:
—
Ptraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
т
Jtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:€€€€€€€€€*
T0*

index_type0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
ы
Ntraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/dense_1_loss/truedivloss/dense_1_loss/sub*'
_output_shapes
:€€€€€€€€€*
T0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
Ж
Ztraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
•
Ktraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
І
Mtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_1_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
ф
Htraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
й
Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape*
Tshape0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€*
T0
ъ
Jtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum*
_output_shapes
:
ё
Ntraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*:
_class0
.,loc:@loss/dense_1_loss/clip_by_value/Minimum
є
<training/Adam/gradients/loss/dense_1_loss/truediv_grad/ShapeShapedense_1/Softmax*
T0*
out_type0*,
_class"
 loc:@loss/dense_1_loss/truediv*
_output_shapes
:
Ѕ
>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape_1Shapeloss/dense_1_loss/Sum*
T0*
out_type0*,
_class"
 loc:@loss/dense_1_loss/truediv*
_output_shapes
:
ќ
Ltraining/Adam/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
О
>training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDivRealDivLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Reshapeloss/dense_1_loss/Sum*'
_output_shapes
:€€€€€€€€€*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv
љ
:training/Adam/gradients/loss/dense_1_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgs*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
±
>training/Adam/gradients/loss/dense_1_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_1_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@loss/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
≤
:training/Adam/gradients/loss/dense_1_loss/truediv_grad/NegNegdense_1/Softmax*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
ю
@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_1_loss/truediv_grad/Negloss/dense_1_loss/Sum*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
Д
@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_1loss/dense_1_loss/Sum*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
±
:training/Adam/gradients/loss/dense_1_loss/truediv_grad/mulMulLtraining/Adam/gradients/loss/dense_1_loss/clip_by_value/Minimum_grad/Reshape@training/Adam/gradients/loss/dense_1_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
љ
<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_1_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_1_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*
_output_shapes
:
Ј
@training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_1_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@loss/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
±
8training/Adam/gradients/loss/dense_1_loss/Sum_grad/ShapeShapedense_1/Softmax*
_output_shapes
:*
T0*
out_type0*(
_class
loc:@loss/dense_1_loss/Sum
£
7training/Adam/gradients/loss/dense_1_loss/Sum_grad/SizeConst*
value	B :*(
_class
loc:@loss/dense_1_loss/Sum*
dtype0*
_output_shapes
: 
к
6training/Adam/gradients/loss/dense_1_loss/Sum_grad/addAdd'loss/dense_1_loss/Sum/reduction_indices7training/Adam/gradients/loss/dense_1_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_1_loss/Sum*
_output_shapes
: 
ю
6training/Adam/gradients/loss/dense_1_loss/Sum_grad/modFloorMod6training/Adam/gradients/loss/dense_1_loss/Sum_grad/add7training/Adam/gradients/loss/dense_1_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_1_loss/Sum*
_output_shapes
: 
І
:training/Adam/gradients/loss/dense_1_loss/Sum_grad/Shape_1Const*
valueB *(
_class
loc:@loss/dense_1_loss/Sum*
dtype0*
_output_shapes
: 
™
>training/Adam/gradients/loss/dense_1_loss/Sum_grad/range/startConst*
value	B : *(
_class
loc:@loss/dense_1_loss/Sum*
dtype0*
_output_shapes
: 
™
>training/Adam/gradients/loss/dense_1_loss/Sum_grad/range/deltaConst*
value	B :*(
_class
loc:@loss/dense_1_loss/Sum*
dtype0*
_output_shapes
: 
ћ
8training/Adam/gradients/loss/dense_1_loss/Sum_grad/rangeRange>training/Adam/gradients/loss/dense_1_loss/Sum_grad/range/start7training/Adam/gradients/loss/dense_1_loss/Sum_grad/Size>training/Adam/gradients/loss/dense_1_loss/Sum_grad/range/delta*

Tidx0*(
_class
loc:@loss/dense_1_loss/Sum*
_output_shapes
:
©
=training/Adam/gradients/loss/dense_1_loss/Sum_grad/Fill/valueConst*
_output_shapes
: *
value	B :*(
_class
loc:@loss/dense_1_loss/Sum*
dtype0
Ч
7training/Adam/gradients/loss/dense_1_loss/Sum_grad/FillFill:training/Adam/gradients/loss/dense_1_loss/Sum_grad/Shape_1=training/Adam/gradients/loss/dense_1_loss/Sum_grad/Fill/value*
T0*

index_type0*(
_class
loc:@loss/dense_1_loss/Sum*
_output_shapes
: 
О
@training/Adam/gradients/loss/dense_1_loss/Sum_grad/DynamicStitchDynamicStitch8training/Adam/gradients/loss/dense_1_loss/Sum_grad/range6training/Adam/gradients/loss/dense_1_loss/Sum_grad/mod8training/Adam/gradients/loss/dense_1_loss/Sum_grad/Shape7training/Adam/gradients/loss/dense_1_loss/Sum_grad/Fill*
T0*(
_class
loc:@loss/dense_1_loss/Sum*
N*
_output_shapes
:
®
<training/Adam/gradients/loss/dense_1_loss/Sum_grad/Maximum/yConst*
value	B :*(
_class
loc:@loss/dense_1_loss/Sum*
dtype0*
_output_shapes
: 
Ф
:training/Adam/gradients/loss/dense_1_loss/Sum_grad/MaximumMaximum@training/Adam/gradients/loss/dense_1_loss/Sum_grad/DynamicStitch<training/Adam/gradients/loss/dense_1_loss/Sum_grad/Maximum/y*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_1_loss/Sum
М
;training/Adam/gradients/loss/dense_1_loss/Sum_grad/floordivFloorDiv8training/Adam/gradients/loss/dense_1_loss/Sum_grad/Shape:training/Adam/gradients/loss/dense_1_loss/Sum_grad/Maximum*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_1_loss/Sum
Љ
:training/Adam/gradients/loss/dense_1_loss/Sum_grad/ReshapeReshape@training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape_1@training/Adam/gradients/loss/dense_1_loss/Sum_grad/DynamicStitch*
T0*
Tshape0*(
_class
loc:@loss/dense_1_loss/Sum*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
¶
7training/Adam/gradients/loss/dense_1_loss/Sum_grad/TileTile:training/Adam/gradients/loss/dense_1_loss/Sum_grad/Reshape;training/Adam/gradients/loss/dense_1_loss/Sum_grad/floordiv*'
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0*(
_class
loc:@loss/dense_1_loss/Sum
Ж
training/Adam/gradients/AddNAddN>training/Adam/gradients/loss/dense_1_loss/truediv_grad/Reshape7training/Adam/gradients/loss/dense_1_loss/Sum_grad/Tile*
T0*,
_class"
 loc:@loss/dense_1_loss/truediv*
N*'
_output_shapes
:€€€€€€€€€
Љ
0training/Adam/gradients/dense_1/Softmax_grad/mulMultraining/Adam/gradients/AddNdense_1/Softmax*
T0*"
_class
loc:@dense_1/Softmax*'
_output_shapes
:€€€€€€€€€
∞
Btraining/Adam/gradients/dense_1/Softmax_grad/Sum/reduction_indicesConst*
valueB:*"
_class
loc:@dense_1/Softmax*
dtype0*
_output_shapes
:
Ь
0training/Adam/gradients/dense_1/Softmax_grad/SumSum0training/Adam/gradients/dense_1/Softmax_grad/mulBtraining/Adam/gradients/dense_1/Softmax_grad/Sum/reduction_indices*
T0*"
_class
loc:@dense_1/Softmax*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
ѓ
:training/Adam/gradients/dense_1/Softmax_grad/Reshape/shapeConst*
valueB"€€€€   *"
_class
loc:@dense_1/Softmax*
dtype0*
_output_shapes
:
С
4training/Adam/gradients/dense_1/Softmax_grad/ReshapeReshape0training/Adam/gradients/dense_1/Softmax_grad/Sum:training/Adam/gradients/dense_1/Softmax_grad/Reshape/shape*
Tshape0*"
_class
loc:@dense_1/Softmax*'
_output_shapes
:€€€€€€€€€*
T0
б
0training/Adam/gradients/dense_1/Softmax_grad/subSubtraining/Adam/gradients/AddN4training/Adam/gradients/dense_1/Softmax_grad/Reshape*
T0*"
_class
loc:@dense_1/Softmax*'
_output_shapes
:€€€€€€€€€
“
2training/Adam/gradients/dense_1/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_1/Softmax_grad/subdense_1/Softmax*"
_class
loc:@dense_1/Softmax*'
_output_shapes
:€€€€€€€€€*
T0
џ
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Softmax_grad/mul_1*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
К
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Softmax_grad/mul_1dense_1/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul
у
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense/Sigmoid2training/Adam/gradients/dense_1/Softmax_grad/mul_1*
T0*!
_class
loc:@dense_1/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( 
№
6training/Adam/gradients/dense/Sigmoid_grad/SigmoidGradSigmoidGraddense/Sigmoid2training/Adam/gradients/dense_1/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€
*
T0* 
_class
loc:@dense/Sigmoid
џ
6training/Adam/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad6training/Adam/gradients/dense/Sigmoid_grad/SigmoidGrad*
T0* 
_class
loc:@dense/BiasAdd*
data_formatNHWC*
_output_shapes
:

И
0training/Adam/gradients/dense/MatMul_grad/MatMulMatMul6training/Adam/gradients/dense/Sigmoid_grad/SigmoidGraddense/MatMul/ReadVariableOp*
transpose_b(*
T0*
_class
loc:@dense/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€
с
2training/Adam/gradients/dense/MatMul_grad/MatMul_1MatMuldense_input6training/Adam/gradients/dense/Sigmoid_grad/SigmoidGrad*
_class
loc:@dense/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( *
T0
U
training/Adam/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	
И
training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
_output_shapes
: *
dtype0	
m
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

DstT0*
_output_shapes
: *

SrcT0	
X
training/Adam/add/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_2Const*
_output_shapes
: *
valueB
 *  А*
dtype0
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 
Г
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
_output_shapes
: *
dtype0
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
_output_shapes
: *
T0
h
training/Adam/zerosConst*
valueB
*    *
dtype0*
_output_shapes

:

Щ
training/Adam/VariableVarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape
:
*'
shared_nametraining/Adam/Variable
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
Ц
training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
dtype0
ђ
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes

:

b
training/Adam/zeros_1Const*
dtype0*
_output_shapes
:
*
valueB
*    
Щ
training/Adam/Variable_1VarHandleOp*)
shared_nametraining/Adam/Variable_1*
dtype0*
	container *
_output_shapes
: *
shape:

Б
9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
Ю
training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0
Ѓ
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
:

j
training/Adam/zeros_2Const*
valueB
*    *
dtype0*
_output_shapes

:

Э
training/Adam/Variable_2VarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape
:
*)
shared_nametraining/Adam/Variable_2
Б
9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
Ю
training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0
≤
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes

:

b
training/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_3VarHandleOp*
	container *
_output_shapes
: *
shape:*)
shared_nametraining/Adam/Variable_3*
dtype0
Б
9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
Ю
training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0
Ѓ
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
:
j
training/Adam/zeros_4Const*
_output_shapes

:
*
valueB
*    *
dtype0
Э
training/Adam/Variable_4VarHandleOp*
shape
:
*)
shared_nametraining/Adam/Variable_4*
dtype0*
	container *
_output_shapes
: 
Б
9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
Ю
training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0
≤
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes

:

b
training/Adam/zeros_5Const*
valueB
*    *
dtype0*
_output_shapes
:

Щ
training/Adam/Variable_5VarHandleOp*
shape:
*)
shared_nametraining/Adam/Variable_5*
dtype0*
	container *
_output_shapes
: 
Б
9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
Ю
training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0
Ѓ
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
:

j
training/Adam/zeros_6Const*
valueB
*    *
dtype0*
_output_shapes

:

Э
training/Adam/Variable_6VarHandleOp*
shape
:
*)
shared_nametraining/Adam/Variable_6*
dtype0*
	container *
_output_shapes
: 
Б
9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
Ю
training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0
≤
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes

:

b
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes
:
Щ
training/Adam/Variable_7VarHandleOp*
shape:*)
shared_nametraining/Adam/Variable_7*
dtype0*
	container *
_output_shapes
: 
Б
9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
Ю
training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0
Ѓ
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
:
o
%training/Adam/zeros_8/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ш
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes
:
Щ
training/Adam/Variable_8VarHandleOp*)
shared_nametraining/Adam/Variable_8*
dtype0*
	container *
_output_shapes
: *
shape:
Б
9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
Ю
training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*
dtype0*+
_class!
loc:@training/Adam/Variable_8
Ѓ
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
:
o
%training/Adam/zeros_9/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ш
training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
_output_shapes
:*
T0*

index_type0
Щ
training/Adam/Variable_9VarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape:*)
shared_nametraining/Adam/Variable_9
Б
9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
Ю
training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9
Ѓ
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_10/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
_output_shapes
:*
T0*

index_type0
Ы
training/Adam/Variable_10VarHandleOp*
	container *
_output_shapes
: *
shape:**
shared_nametraining/Adam/Variable_10*
dtype0
Г
:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
Ґ
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10
±
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
_output_shapes
:*
T0*

index_type0
Ы
training/Adam/Variable_11VarHandleOp*
shape:**
shared_nametraining/Adam/Variable_11*
dtype0*
	container *
_output_shapes
: 
Г
:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
Ґ
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0
±
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
:
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*
_output_shapes

:

З
training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0*
_output_shapes

:

b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_2/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 
М
training/Adam/mul_2Multraining/Adam/sub_22training/Adam/gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
_output_shapes

:
*
T0
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
{
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0*
_output_shapes

:

З
training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0*
_output_shapes

:

b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
_output_shapes
: *
T0
{
training/Adam/SquareSquare2training/Adam/gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes

:

m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes

:

k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes

:

Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Е
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0*
_output_shapes

:

П
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
_output_shapes

:
*
T0
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
_output_shapes

:
*
T0
Z
training/Adam/add_3/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes

:

u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes

:

k
training/Adam/ReadVariableOp_6ReadVariableOpdense/kernel*
dtype0*
_output_shapes

:

|
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0*
_output_shapes

:

l
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add_1*
dtype0
Ц
training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
_output_shapes

:
*
dtype0
p
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_4training/Adam/add_2*
dtype0
Ъ
training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_4!^training/Adam/AssignVariableOp_1*
dtype0*
_output_shapes

:

d
 training/Adam/AssignVariableOp_2AssignVariableOpdense/kerneltraining/Adam/sub_4*
dtype0
О
training/Adam/ReadVariableOp_9ReadVariableOpdense/kernel!^training/Adam/AssignVariableOp_2*
dtype0*
_output_shapes

:

c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*
_output_shapes
:

Д
training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes
:

c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_5/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
М
training/Adam/mul_7Multraining/Adam/sub_56training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes
:
*
T0
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*
_output_shapes
:

Д
training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes
:

c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
}
training/Adam/Square_1Square6training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes
:
*
T0
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:

h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes
:
*
T0
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Б
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
T0*
_output_shapes
:

Л
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
_output_shapes
:
*
T0
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes
:
*
T0
Z
training/Adam/add_6/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
:

r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes
:
*
T0
f
training/Adam/ReadVariableOp_14ReadVariableOp
dense/bias*
dtype0*
_output_shapes
:

y
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes
:

p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_4*
dtype0
Ч
training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes
:

p
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_5training/Adam/add_5*
dtype0
Ч
training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_5!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes
:

b
 training/Adam/AssignVariableOp_5AssignVariableOp
dense/biastraining/Adam/sub_7*
dtype0
Й
training/Adam/ReadVariableOp_17ReadVariableOp
dense/bias!^training/Adam/AssignVariableOp_5*
_output_shapes
:
*
dtype0
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
|
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*
_output_shapes

:

К
training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes

:

c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
_output_shapes
: *
T0
П
training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes

:

c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
|
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*
_output_shapes

:

К
training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes

:

c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training/Adam/Square_2Square4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes

:
*
T0
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes

:

l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes

:

Z
training/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_8Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Е
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
T0*
_output_shapes

:

П
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
_output_shapes

:
*
T0
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes

:

Z
training/Adam/add_9/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes

:

v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes

:

n
training/Adam/ReadVariableOp_22ReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:

~
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes

:

p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_7*
dtype0
Ы
training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
_output_shapes

:
*
dtype0
p
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_6training/Adam/add_8*
dtype0
Ы
training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_6!^training/Adam/AssignVariableOp_7*
_output_shapes

:
*
dtype0
g
 training/Adam/AssignVariableOp_8AssignVariableOpdense_1/kerneltraining/Adam/sub_10*
dtype0
С
training/Adam/ReadVariableOp_25ReadVariableOpdense_1/kernel!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes

:

c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
_output_shapes
:*
dtype0
Ж
training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
Р
training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes
:
Ж
training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes
:*
T0
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Г
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
_output_shapes
:*
T0
Л
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
_output_shapes
:*
T0
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:
[
training/Adam/add_12/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
:*
T0
h
training/Adam/ReadVariableOp_30ReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
_output_shapes
:*
T0
q
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_10*
dtype0
Ч
training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:
r
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_7training/Adam/add_11*
dtype0
Ш
training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_7"^training/Adam/AssignVariableOp_10*
_output_shapes
:*
dtype0
f
!training/Adam/AssignVariableOp_11AssignVariableOpdense_1/biastraining/Adam/sub_13*
dtype0
М
training/Adam/ReadVariableOp_33ReadVariableOpdense_1/bias"^training/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:
н
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
S
VarIsInitializedOp_4VarIsInitializedOpAdam/iterations*
_output_shapes
: 
K
VarIsInitializedOp_5VarIsInitializedOpAdam/lr*
_output_shapes
: 
O
VarIsInitializedOp_6VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
O
VarIsInitializedOp_7VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
N
VarIsInitializedOp_8VarIsInitializedOp
Adam/decay*
_output_shapes
: 
Z
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
]
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
]
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
]
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
]
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
]
VarIsInitializedOp_14VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
]
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
]
VarIsInitializedOp_16VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
]
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
]
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
^
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
^
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
О
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
N
Placeholder_4Placeholder*
shape: *
dtype0	*
_output_shapes
: 
S
AssignVariableOp_4AssignVariableOpAdam/iterationsPlaceholder_4*
dtype0	
m
ReadVariableOp_4ReadVariableOpAdam/iterations^AssignVariableOp_4*
dtype0	*
_output_shapes
: 
^
Placeholder_5Placeholder*
dtype0*
_output_shapes

:
*
shape
:

Z
AssignVariableOp_5AssignVariableOptraining/Adam/VariablePlaceholder_5*
dtype0
|
ReadVariableOp_5ReadVariableOptraining/Adam/Variable^AssignVariableOp_5*
dtype0*
_output_shapes

:

V
Placeholder_6Placeholder*
shape:
*
dtype0*
_output_shapes
:

\
AssignVariableOp_6AssignVariableOptraining/Adam/Variable_1Placeholder_6*
dtype0
z
ReadVariableOp_6ReadVariableOptraining/Adam/Variable_1^AssignVariableOp_6*
dtype0*
_output_shapes
:

^
Placeholder_7Placeholder*
shape
:
*
dtype0*
_output_shapes

:

\
AssignVariableOp_7AssignVariableOptraining/Adam/Variable_2Placeholder_7*
dtype0
~
ReadVariableOp_7ReadVariableOptraining/Adam/Variable_2^AssignVariableOp_7*
dtype0*
_output_shapes

:

V
Placeholder_8Placeholder*
dtype0*
_output_shapes
:*
shape:
\
AssignVariableOp_8AssignVariableOptraining/Adam/Variable_3Placeholder_8*
dtype0
z
ReadVariableOp_8ReadVariableOptraining/Adam/Variable_3^AssignVariableOp_8*
dtype0*
_output_shapes
:
^
Placeholder_9Placeholder*
shape
:
*
dtype0*
_output_shapes

:

\
AssignVariableOp_9AssignVariableOptraining/Adam/Variable_4Placeholder_9*
dtype0
~
ReadVariableOp_9ReadVariableOptraining/Adam/Variable_4^AssignVariableOp_9*
dtype0*
_output_shapes

:

W
Placeholder_10Placeholder*
dtype0*
_output_shapes
:
*
shape:

^
AssignVariableOp_10AssignVariableOptraining/Adam/Variable_5Placeholder_10*
dtype0
|
ReadVariableOp_10ReadVariableOptraining/Adam/Variable_5^AssignVariableOp_10*
dtype0*
_output_shapes
:

_
Placeholder_11Placeholder*
dtype0*
_output_shapes

:
*
shape
:

^
AssignVariableOp_11AssignVariableOptraining/Adam/Variable_6Placeholder_11*
dtype0
А
ReadVariableOp_11ReadVariableOptraining/Adam/Variable_6^AssignVariableOp_11*
dtype0*
_output_shapes

:

W
Placeholder_12Placeholder*
dtype0*
_output_shapes
:*
shape:
^
AssignVariableOp_12AssignVariableOptraining/Adam/Variable_7Placeholder_12*
dtype0
|
ReadVariableOp_12ReadVariableOptraining/Adam/Variable_7^AssignVariableOp_12*
_output_shapes
:*
dtype0
W
Placeholder_13Placeholder*
dtype0*
_output_shapes
:*
shape:
^
AssignVariableOp_13AssignVariableOptraining/Adam/Variable_8Placeholder_13*
dtype0
|
ReadVariableOp_13ReadVariableOptraining/Adam/Variable_8^AssignVariableOp_13*
dtype0*
_output_shapes
:
W
Placeholder_14Placeholder*
dtype0*
_output_shapes
:*
shape:
^
AssignVariableOp_14AssignVariableOptraining/Adam/Variable_9Placeholder_14*
dtype0
|
ReadVariableOp_14ReadVariableOptraining/Adam/Variable_9^AssignVariableOp_14*
dtype0*
_output_shapes
:
W
Placeholder_15Placeholder*
dtype0*
_output_shapes
:*
shape:
_
AssignVariableOp_15AssignVariableOptraining/Adam/Variable_10Placeholder_15*
dtype0
}
ReadVariableOp_15ReadVariableOptraining/Adam/Variable_10^AssignVariableOp_15*
dtype0*
_output_shapes
:
W
Placeholder_16Placeholder*
dtype0*
_output_shapes
:*
shape:
_
AssignVariableOp_16AssignVariableOptraining/Adam/Variable_11Placeholder_16*
dtype0
}
ReadVariableOp_16ReadVariableOptraining/Adam/Variable_11^AssignVariableOp_16*
dtype0*
_output_shapes
:
ж
init_2NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
p
dense_1_inputPlaceholder*
dtype0*'
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
o
dense_1_1/random_uniform/shapeConst*
_output_shapes
:*
valueB"   
   *
dtype0
a
dense_1_1/random_uniform/minConst*
valueB
 *bЧ'њ*
dtype0*
_output_shapes
: 
a
dense_1_1/random_uniform/maxConst*
valueB
 *bЧ'?*
dtype0*
_output_shapes
: 
ђ
&dense_1_1/random_uniform/RandomUniformRandomUniformdense_1_1/random_uniform/shape*
seed2л”Б*
_output_shapes

:
*
seed±€е)*
T0*
dtype0
А
dense_1_1/random_uniform/subSubdense_1_1/random_uniform/maxdense_1_1/random_uniform/min*
T0*
_output_shapes
: 
Т
dense_1_1/random_uniform/mulMul&dense_1_1/random_uniform/RandomUniformdense_1_1/random_uniform/sub*
T0*
_output_shapes

:

Д
dense_1_1/random_uniformAdddense_1_1/random_uniform/muldense_1_1/random_uniform/min*
T0*
_output_shapes

:

Д
dense_1_1/kernel
VariableV2*
dtype0*
	container *
_output_shapes

:
*
shape
:
*
shared_name 
ƒ
dense_1_1/kernel/AssignAssigndense_1_1/kerneldense_1_1/random_uniform*
use_locking(*
T0*#
_class
loc:@dense_1_1/kernel*
validate_shape(*
_output_shapes

:

Б
dense_1_1/kernel/readIdentitydense_1_1/kernel*
T0*#
_class
loc:@dense_1_1/kernel*
_output_shapes

:

\
dense_1_1/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

z
dense_1_1/bias
VariableV2*
dtype0*
	container *
_output_shapes
:
*
shape:
*
shared_name 
±
dense_1_1/bias/AssignAssigndense_1_1/biasdense_1_1/Const*
use_locking(*
T0*!
_class
loc:@dense_1_1/bias*
validate_shape(*
_output_shapes
:

w
dense_1_1/bias/readIdentitydense_1_1/bias*
T0*!
_class
loc:@dense_1_1/bias*
_output_shapes
:

Ш
dense_1_1/MatMulMatMuldense_1_inputdense_1_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( 
М
dense_1_1/BiasAddBiasAdddense_1_1/MatMuldense_1_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

a
dense_1_1/SigmoidSigmoiddense_1_1/BiasAdd*'
_output_shapes
:€€€€€€€€€
*
T0
m
dense_2/random_uniform/shapeConst*
valueB"
      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *тк-њ
_
dense_2/random_uniform/maxConst*
valueB
 *тк-?*
dtype0*
_output_shapes
: 
®
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seed±€е)*
T0*
dtype0*
seed2√пТ*
_output_shapes

:

z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
М
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes

:
*
T0
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes

:

В
dense_2/kernel
VariableV2*
	container *
_output_shapes

:
*
shape
:
*
shared_name *
dtype0
Љ
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
{
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:

Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
©
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
_output_shapes
:*
T0
Ш
dense_2/MatMulMatMuldense_1_1/Sigmoiddense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( 
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
a
Adam_1/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
u
Adam_1/iterations
VariableV2*
shared_name *
dtype0	*
	container *
_output_shapes
: *
shape: 
∆
Adam_1/iterations/AssignAssignAdam_1/iterationsAdam_1/iterations/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*$
_class
loc:@Adam_1/iterations
|
Adam_1/iterations/readIdentityAdam_1/iterations*
T0	*$
_class
loc:@Adam_1/iterations*
_output_shapes
: 
\
Adam_1/lr/initial_valueConst*
valueB
 *
„#=*
dtype0*
_output_shapes
: 
m
	Adam_1/lr
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
¶
Adam_1/lr/AssignAssign	Adam_1/lrAdam_1/lr/initial_value*
_class
loc:@Adam_1/lr*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
d
Adam_1/lr/readIdentity	Adam_1/lr*
T0*
_class
loc:@Adam_1/lr*
_output_shapes
: 
`
Adam_1/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
q
Adam_1/beta_1
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
ґ
Adam_1/beta_1/AssignAssignAdam_1/beta_1Adam_1/beta_1/initial_value* 
_class
loc:@Adam_1/beta_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
p
Adam_1/beta_1/readIdentityAdam_1/beta_1*
T0* 
_class
loc:@Adam_1/beta_1*
_output_shapes
: 
`
Adam_1/beta_2/initial_valueConst*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
q
Adam_1/beta_2
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
ґ
Adam_1/beta_2/AssignAssignAdam_1/beta_2Adam_1/beta_2/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@Adam_1/beta_2
p
Adam_1/beta_2/readIdentityAdam_1/beta_2*
T0* 
_class
loc:@Adam_1/beta_2*
_output_shapes
: 
_
Adam_1/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
Adam_1/decay
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
≤
Adam_1/decay/AssignAssignAdam_1/decayAdam_1/decay/initial_value*
use_locking(*
T0*
_class
loc:@Adam_1/decay*
validate_shape(*
_output_shapes
: 
m
Adam_1/decay/readIdentityAdam_1/decay*
T0*
_class
loc:@Adam_1/decay*
_output_shapes
: 
Г
dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€
q
dense_2_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
t
)loss_1/dense_2_loss/Sum/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
©
loss_1/dense_2_loss/SumSumdense_2/Softmax)loss_1/dense_2_loss/Sum/reduction_indices*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims(
В
loss_1/dense_2_loss/truedivRealDivdense_2/Softmaxloss_1/dense_2_loss/Sum*'
_output_shapes
:€€€€€€€€€*
T0
^
loss_1/dense_2_loss/ConstConst*
_output_shapes
: *
valueB
 *Хњ÷3*
dtype0
^
loss_1/dense_2_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
loss_1/dense_2_loss/subSubloss_1/dense_2_loss/sub/xloss_1/dense_2_loss/Const*
T0*
_output_shapes
: 
Ь
)loss_1/dense_2_loss/clip_by_value/MinimumMinimumloss_1/dense_2_loss/truedivloss_1/dense_2_loss/sub*'
_output_shapes
:€€€€€€€€€*
T0
§
!loss_1/dense_2_loss/clip_by_valueMaximum)loss_1/dense_2_loss/clip_by_value/Minimumloss_1/dense_2_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€
s
loss_1/dense_2_loss/LogLog!loss_1/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€
y
loss_1/dense_2_loss/mulMuldense_2_targetloss_1/dense_2_loss/Log*'
_output_shapes
:€€€€€€€€€*
T0
v
+loss_1/dense_2_loss/Sum_1/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
±
loss_1/dense_2_loss/Sum_1Sumloss_1/dense_2_loss/mul+loss_1/dense_2_loss/Sum_1/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
g
loss_1/dense_2_loss/NegNegloss_1/dense_2_loss/Sum_1*
T0*#
_output_shapes
:€€€€€€€€€
m
*loss_1/dense_2_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
∞
loss_1/dense_2_loss/MeanMeanloss_1/dense_2_loss/Neg*loss_1/dense_2_loss/Mean/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
А
loss_1/dense_2_loss/mul_1Mulloss_1/dense_2_loss/Meandense_2_sample_weights*
T0*#
_output_shapes
:€€€€€€€€€
c
loss_1/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
О
loss_1/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss_1/dense_2_loss/NotEqual/y*
T0*#
_output_shapes
:€€€€€€€€€
{
loss_1/dense_2_loss/CastCastloss_1/dense_2_loss/NotEqual*

SrcT0
*

DstT0*#
_output_shapes
:€€€€€€€€€
e
loss_1/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ч
loss_1/dense_2_loss/Mean_1Meanloss_1/dense_2_loss/Castloss_1/dense_2_loss/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Н
loss_1/dense_2_loss/truediv_1RealDivloss_1/dense_2_loss/mul_1loss_1/dense_2_loss/Mean_1*
T0*#
_output_shapes
:€€€€€€€€€
e
loss_1/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Ь
loss_1/dense_2_loss/Mean_2Meanloss_1/dense_2_loss/truediv_1loss_1/dense_2_loss/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Q
loss_1/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
\

loss_1/mulMulloss_1/mul/xloss_1/dense_2_loss/Mean_2*
_output_shapes
: *
T0
i
metrics_1/acc/ArgMax/dimensionConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
Ы
metrics_1/acc/ArgMaxArgMaxdense_2_targetmetrics_1/acc/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0
k
 metrics_1/acc/ArgMax_1/dimensionConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
†
metrics_1/acc/ArgMax_1ArgMaxdense_2/Softmax metrics_1/acc/ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0
x
metrics_1/acc/EqualEqualmetrics_1/acc/ArgMaxmetrics_1/acc/ArgMax_1*
T0	*#
_output_shapes
:€€€€€€€€€
l
metrics_1/acc/CastCastmetrics_1/acc/Equal*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0

]
metrics_1/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Б
metrics_1/acc/MeanMeanmetrics_1/acc/Castmetrics_1/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Б
training_1/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss_1/mul*
dtype0*
_output_shapes
: 
З
#training_1/Adam/gradients/grad_ys_0Const*
valueB
 *  А?*
_class
loc:@loss_1/mul*
dtype0*
_output_shapes
: 
Њ
training_1/Adam/gradients/FillFilltraining_1/Adam/gradients/Shape#training_1/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss_1/mul*
_output_shapes
: 
∞
-training_1/Adam/gradients/loss_1/mul_grad/MulMultraining_1/Adam/gradients/Fillloss_1/dense_2_loss/Mean_2*
_output_shapes
: *
T0*
_class
loc:@loss_1/mul
§
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Multraining_1/Adam/gradients/Fillloss_1/mul/x*
T0*
_class
loc:@loss_1/mul*
_output_shapes
: 
ј
Gtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Reshape/shapeConst*
valueB:*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
dtype0*
_output_shapes
:
®
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/ReshapeReshape/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Gtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
_output_shapes
:
Ћ
?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/ShapeShapeloss_1/dense_2_loss/truediv_1*
_output_shapes
:*
T0*
out_type0*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2
є
>training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/TileTileAtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Reshape?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Shape*

Tmultiples0*
T0*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*#
_output_shapes
:€€€€€€€€€
Ќ
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Shape_1Shapeloss_1/dense_2_loss/truediv_1*
T0*
out_type0*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
_output_shapes
:
≥
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Shape_2Const*
valueB *-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
dtype0*
_output_shapes
: 
Є
?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/ConstConst*
valueB: *-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
dtype0*
_output_shapes
:
Ј
>training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/ProdProdAtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Shape_1?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Const*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Ї
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Const_1Const*
valueB: *-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
dtype0*
_output_shapes
:
ї
@training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Prod_1ProdAtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Shape_2Atraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Const_1*
T0*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
_output_shapes
: *

Tidx0*
	keep_dims( 
і
Ctraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
dtype0*
_output_shapes
: 
£
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/MaximumMaximum@training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Prod_1Ctraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Maximum/y*
T0*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
_output_shapes
: 
°
Btraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/floordivFloorDiv>training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/ProdAtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Maximum*
T0*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*
_output_shapes
: 
й
>training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/CastCastBtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/floordiv*

SrcT0*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*

DstT0*
_output_shapes
: 
©
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/truedivRealDiv>training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Tile>training_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/Cast*
T0*-
_class#
!loc:@loss_1/dense_2_loss/Mean_2*#
_output_shapes
:€€€€€€€€€
Ќ
Btraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/ShapeShapeloss_1/dense_2_loss/mul_1*
T0*
out_type0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1*
_output_shapes
:
є
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Shape_1Const*
valueB *0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1*
dtype0*
_output_shapes
: 
д
Rtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/ShapeDtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1
О
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/RealDivRealDivAtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/truedivloss_1/dense_2_loss/Mean_1*
T0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
”
@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/SumSumDtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/RealDivRtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1*
_output_shapes
:
√
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/ReshapeReshape@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/SumBtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Shape*
T0*
Tshape0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
¬
@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/NegNegloss_1/dense_2_loss/mul_1*
T0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
П
Ftraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Negloss_1/dense_2_loss/Mean_1*#
_output_shapes
:€€€€€€€€€*
T0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1
Х
Ftraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/RealDiv_2RealDivFtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/RealDiv_1loss_1/dense_2_loss/Mean_1*
T0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
≤
@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/mulMulAtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_2_grad/truedivFtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/RealDiv_2*#
_output_shapes
:€€€€€€€€€*
T0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1
”
Btraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Sum_1Sum@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/mulTtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Љ
Ftraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Reshape_1ReshapeBtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Sum_1Dtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*0
_class&
$"loc:@loss_1/dense_2_loss/truediv_1*
_output_shapes
: 
ƒ
>training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/ShapeShapeloss_1/dense_2_loss/Mean*
T0*
out_type0*,
_class"
 loc:@loss_1/dense_2_loss/mul_1*
_output_shapes
:
ƒ
@training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Shape_1Shapedense_2_sample_weights*
T0*
out_type0*,
_class"
 loc:@loss_1/dense_2_loss/mul_1*
_output_shapes
:
‘
Ntraining_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Shape@training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Shape_1*
T0*,
_class"
 loc:@loss_1/dense_2_loss/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
э
<training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/MulMulDtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*#
_output_shapes
:€€€€€€€€€*
T0*,
_class"
 loc:@loss_1/dense_2_loss/mul_1
њ
<training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/SumSum<training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/MulNtraining_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/BroadcastGradientArgs*
T0*,
_class"
 loc:@loss_1/dense_2_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
≥
@training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/ReshapeReshape<training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Sum>training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@loss_1/dense_2_loss/mul_1*#
_output_shapes
:€€€€€€€€€
Б
>training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Mul_1Mulloss_1/dense_2_loss/MeanDtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_1_grad/Reshape*
T0*,
_class"
 loc:@loss_1/dense_2_loss/mul_1*#
_output_shapes
:€€€€€€€€€
≈
>training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Sum_1Sum>training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Mul_1Ptraining_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/BroadcastGradientArgs:1*
T0*,
_class"
 loc:@loss_1/dense_2_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
є
Btraining_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Reshape_1Reshape>training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Sum_1@training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*,
_class"
 loc:@loss_1/dense_2_loss/mul_1
Ѕ
=training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/ShapeShapeloss_1/dense_2_loss/Neg*
T0*
out_type0*+
_class!
loc:@loss_1/dense_2_loss/Mean*
_output_shapes
:
Ђ
<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/SizeConst*
value	B :*+
_class!
loc:@loss_1/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
ь
;training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/addAdd*loss_1/dense_2_loss/Mean/reduction_indices<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Size*+
_class!
loc:@loss_1/dense_2_loss/Mean*
_output_shapes
: *
T0
Т
;training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/modFloorMod;training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/add<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Size*
_output_shapes
: *
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean
ґ
?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB: *+
_class!
loc:@loss_1/dense_2_loss/Mean
≤
Ctraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/range/startConst*
_output_shapes
: *
value	B : *+
_class!
loc:@loss_1/dense_2_loss/Mean*
dtype0
≤
Ctraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/range/deltaConst*
value	B :*+
_class!
loc:@loss_1/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
г
=training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/rangeRangeCtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/range/start<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/SizeCtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/range/delta*

Tidx0*+
_class!
loc:@loss_1/dense_2_loss/Mean*
_output_shapes
:
±
Btraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Fill/valueConst*
value	B :*+
_class!
loc:@loss_1/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
Ђ
<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/FillFill?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Shape_1Btraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@loss_1/dense_2_loss/Mean*
_output_shapes
: 
™
Etraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch=training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/range;training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/mod=training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Shape<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Fill*
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean*
N*
_output_shapes
:
∞
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss_1/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
¶
?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/MaximumMaximumEtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/DynamicStitchAtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Maximum/y*
_output_shapes
:*
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean
Ю
@training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/floordivFloorDiv=training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Shape?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Maximum*
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean*
_output_shapes
:
Љ
?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/ReshapeReshape@training_1/Adam/gradients/loss_1/dense_2_loss/mul_1_grad/ReshapeEtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@loss_1/dense_2_loss/Mean*#
_output_shapes
:€€€€€€€€€
і
<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/TileTile?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Reshape@training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/floordiv*

Tmultiples0*
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean*#
_output_shapes
:€€€€€€€€€
√
?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Shape_2Shapeloss_1/dense_2_loss/Neg*
T0*
out_type0*+
_class!
loc:@loss_1/dense_2_loss/Mean*
_output_shapes
:
ƒ
?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Shape_3Shapeloss_1/dense_2_loss/Mean*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss_1/dense_2_loss/Mean
і
=training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/ConstConst*
valueB: *+
_class!
loc:@loss_1/dense_2_loss/Mean*
dtype0*
_output_shapes
:
ѓ
<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/ProdProd?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Shape_2=training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Const*
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
ґ
?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *+
_class!
loc:@loss_1/dense_2_loss/Mean*
dtype0
≥
>training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Prod_1Prod?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Shape_3?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean
≤
Ctraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Maximum_1/yConst*
value	B :*+
_class!
loc:@loss_1/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
Я
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Maximum_1Maximum>training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Prod_1Ctraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Maximum_1/y*
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean*
_output_shapes
: 
Э
Btraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/floordiv_1FloorDiv<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/ProdAtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Maximum_1*
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean*
_output_shapes
: 
е
<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/CastCastBtraining_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss_1/dense_2_loss/Mean*

DstT0*
_output_shapes
: 
°
?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/truedivRealDiv<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Tile<training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/Cast*
T0*+
_class!
loc:@loss_1/dense_2_loss/Mean*#
_output_shapes
:€€€€€€€€€
№
:training_1/Adam/gradients/loss_1/dense_2_loss/Neg_grad/NegNeg?training_1/Adam/gradients/loss_1/dense_2_loss/Mean_grad/truediv*
T0**
_class 
loc:@loss_1/dense_2_loss/Neg*#
_output_shapes
:€€€€€€€€€
√
>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/ShapeShapeloss_1/dense_2_loss/mul*
T0*
out_type0*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
_output_shapes
:
≠
=training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/SizeConst*
value	B :*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 
ю
<training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/addAdd+loss_1/dense_2_loss/Sum_1/reduction_indices=training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Size*
T0*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
_output_shapes
: 
Ф
<training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/modFloorMod<training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/add=training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Size*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
_output_shapes
: *
T0
±
@training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Shape_1Const*
valueB *,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 
і
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/range/startConst*
value	B : *,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 
і
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/range/deltaConst*
value	B :*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 
и
>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/rangeRangeDtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/range/start=training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/SizeDtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/range/delta*

Tidx0*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
_output_shapes
:
≥
Ctraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Fill/valueConst*
value	B :*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 
≠
=training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/FillFill@training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Shape_1Ctraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Fill/value*
T0*

index_type0*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
_output_shapes
: 
∞
Ftraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/DynamicStitchDynamicStitch>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/range<training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/mod>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Shape=training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Fill*
T0*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
N*
_output_shapes
:
≤
Btraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Maximum/yConst*
value	B :*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 
™
@training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/MaximumMaximumFtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/DynamicStitchBtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Maximum/y*
T0*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
_output_shapes
:
Ґ
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/floordivFloorDiv>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Shape@training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Maximum*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1*
_output_shapes
:*
T0
∆
@training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/ReshapeReshape:training_1/Adam/gradients/loss_1/dense_2_loss/Neg_grad/NegFtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/DynamicStitch*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1
Љ
=training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/TileTile@training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/ReshapeAtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/floordiv*'
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0*,
_class"
 loc:@loss_1/dense_2_loss/Sum_1
ґ
<training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/ShapeShapedense_2_target*
out_type0**
_class 
loc:@loss_1/dense_2_loss/mul*
_output_shapes
:*
T0
Ѕ
>training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Shape_1Shapeloss_1/dense_2_loss/Log*
_output_shapes
:*
T0*
out_type0**
_class 
loc:@loss_1/dense_2_loss/mul
ћ
Ltraining_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Shape>training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Shape_1*
T0**
_class 
loc:@loss_1/dense_2_loss/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ч
:training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/MulMul=training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Tileloss_1/dense_2_loss/Log*'
_output_shapes
:€€€€€€€€€*
T0**
_class 
loc:@loss_1/dense_2_loss/mul
Ј
:training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/SumSum:training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/MulLtraining_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss_1/dense_2_loss/mul*
_output_shapes
:
Є
>training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/ReshapeReshape:training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Sum<training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss_1/dense_2_loss/mul*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
р
<training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Mul_1Muldense_2_target=training_1/Adam/gradients/loss_1/dense_2_loss/Sum_1_grad/Tile*
T0**
_class 
loc:@loss_1/dense_2_loss/mul*'
_output_shapes
:€€€€€€€€€
љ
<training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Sum_1Sum<training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Mul_1Ntraining_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss_1/dense_2_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
µ
@training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Reshape_1Reshape<training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Sum_1>training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss_1/dense_2_loss/mul*'
_output_shapes
:€€€€€€€€€
У
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Log_grad/Reciprocal
Reciprocal!loss_1/dense_2_loss/clip_by_valueA^training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Reshape_1*
T0**
_class 
loc:@loss_1/dense_2_loss/Log*'
_output_shapes
:€€€€€€€€€
§
:training_1/Adam/gradients/loss_1/dense_2_loss/Log_grad/mulMul@training_1/Adam/gradients/loss_1/dense_2_loss/mul_grad/Reshape_1Atraining_1/Adam/gradients/loss_1/dense_2_loss/Log_grad/Reciprocal*
T0**
_class 
loc:@loss_1/dense_2_loss/Log*'
_output_shapes
:€€€€€€€€€
е
Ftraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/ShapeShape)loss_1/dense_2_loss/clip_by_value/Minimum*
T0*
out_type0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value*
_output_shapes
:
Ѕ
Htraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Shape_1Const*
valueB *4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value*
dtype0*
_output_shapes
: 
ш
Htraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Shape_2Shape:training_1/Adam/gradients/loss_1/dense_2_loss/Log_grad/mul*
T0*
out_type0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value*
_output_shapes
:
«
Ltraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value
а
Ftraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/zerosFillHtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Shape_2Ltraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
Л
Mtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual)loss_1/dense_2_loss/clip_by_value/Minimumloss_1/dense_2_loss/Const*
T0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
ф
Vtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/ShapeHtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value
М
Gtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/SelectSelectMtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/GreaterEqual:training_1/Adam/gradients/loss_1/dense_2_loss/Log_grad/mulFtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/zeros*
T0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
О
Itraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Select_1SelectMtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/GreaterEqualFtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/zeros:training_1/Adam/gradients/loss_1/dense_2_loss/Log_grad/mul*
T0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
в
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/SumSumGtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/SelectVtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value
„
Htraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/ReshapeReshapeDtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/SumFtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Shape*
Tshape0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
и
Ftraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Sum_1SumItraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Select_1Xtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value
ћ
Jtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeFtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Sum_1Htraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*4
_class*
(&loc:@loss_1/dense_2_loss/clip_by_value
з
Ntraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapeloss_1/dense_2_loss/truediv*
T0*
out_type0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
—
Ptraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
Ц
Ptraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeHtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Reshape*
out_type0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*
T0
„
Ttraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
А
Ntraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/zerosFillPtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Ttraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
Е
Rtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss_1/dense_2_loss/truedivloss_1/dense_2_loss/sub*
T0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
Ф
^training_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsNtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/ShapePtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ј
Otraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectRtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/LessEqualHtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/ReshapeNtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:€€€€€€€€€*
T0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum
є
Qtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectRtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/LessEqualNtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/zerosHtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value_grad/Reshape*
T0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
В
Ltraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/SumSumOtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Select^training_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
ч
Ptraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeLtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/SumNtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum
И
Ntraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumQtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Select_1`training_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
м
Rtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeNtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ptraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*<
_class2
0.loc:@loss_1/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 
њ
@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/ShapeShapedense_2/Softmax*
out_type0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*
_output_shapes
:*
T0
…
Btraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Shape_1Shapeloss_1/dense_2_loss/Sum*
T0*
out_type0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*
_output_shapes
:
№
Ptraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/ShapeBtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*.
_class$
" loc:@loss_1/dense_2_loss/truediv
Ъ
Btraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/RealDivRealDivPtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/Reshapeloss_1/dense_2_loss/Sum*
T0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€
Ћ
>training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/SumSumBtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/RealDivPtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*
_output_shapes
:
њ
Btraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/ReshapeReshape>training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Sum@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Shape*
T0*
Tshape0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€
Є
>training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/NegNegdense_2/Softmax*'
_output_shapes
:€€€€€€€€€*
T0*.
_class$
" loc:@loss_1/dense_2_loss/truediv
К
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/RealDiv_1RealDiv>training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Negloss_1/dense_2_loss/Sum*
T0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€
Р
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/RealDiv_2RealDivDtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/RealDiv_1loss_1/dense_2_loss/Sum*
T0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€
њ
>training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/mulMulPtraining_1/Adam/gradients/loss_1/dense_2_loss/clip_by_value/Minimum_grad/ReshapeDtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/RealDiv_2*
T0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€
Ћ
@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Sum_1Sum>training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/mulRtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
≈
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Reshape_1Reshape@training_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Sum_1Btraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*.
_class$
" loc:@loss_1/dense_2_loss/truediv
Ј
<training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/ShapeShapedense_2/Softmax*
T0*
out_type0**
_class 
loc:@loss_1/dense_2_loss/Sum*
_output_shapes
:
©
;training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/SizeConst*
value	B :**
_class 
loc:@loss_1/dense_2_loss/Sum*
dtype0*
_output_shapes
: 
ц
:training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/addAdd)loss_1/dense_2_loss/Sum/reduction_indices;training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Size*
T0**
_class 
loc:@loss_1/dense_2_loss/Sum*
_output_shapes
: 
М
:training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/modFloorMod:training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/add;training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Size*
T0**
_class 
loc:@loss_1/dense_2_loss/Sum*
_output_shapes
: 
≠
>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Shape_1Const*
valueB **
_class 
loc:@loss_1/dense_2_loss/Sum*
dtype0*
_output_shapes
: 
∞
Btraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : **
_class 
loc:@loss_1/dense_2_loss/Sum
∞
Btraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :**
_class 
loc:@loss_1/dense_2_loss/Sum
ё
<training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/rangeRangeBtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/range/start;training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/SizeBtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/range/delta*
_output_shapes
:*

Tidx0**
_class 
loc:@loss_1/dense_2_loss/Sum
ѓ
Atraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :**
_class 
loc:@loss_1/dense_2_loss/Sum
•
;training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/FillFill>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Shape_1Atraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Fill/value*
T0*

index_type0**
_class 
loc:@loss_1/dense_2_loss/Sum*
_output_shapes
: 
§
Dtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/DynamicStitchDynamicStitch<training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/range:training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/mod<training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Shape;training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Fill*
_output_shapes
:*
T0**
_class 
loc:@loss_1/dense_2_loss/Sum*
N
Ѓ
@training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Maximum/yConst*
value	B :**
_class 
loc:@loss_1/dense_2_loss/Sum*
dtype0*
_output_shapes
: 
Ґ
>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/MaximumMaximumDtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/DynamicStitch@training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Maximum/y*
T0**
_class 
loc:@loss_1/dense_2_loss/Sum*
_output_shapes
:
Ъ
?training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/floordivFloorDiv<training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Shape>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Maximum*
T0**
_class 
loc:@loss_1/dense_2_loss/Sum*
_output_shapes
:
 
>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/ReshapeReshapeDtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Reshape_1Dtraining_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/DynamicStitch*
T0*
Tshape0**
_class 
loc:@loss_1/dense_2_loss/Sum*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
і
;training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/TileTile>training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Reshape?training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/floordiv*
T0**
_class 
loc:@loss_1/dense_2_loss/Sum*'
_output_shapes
:€€€€€€€€€*

Tmultiples0
Т
training_1/Adam/gradients/AddNAddNBtraining_1/Adam/gradients/loss_1/dense_2_loss/truediv_grad/Reshape;training_1/Adam/gradients/loss_1/dense_2_loss/Sum_grad/Tile*
T0*.
_class$
" loc:@loss_1/dense_2_loss/truediv*
N*'
_output_shapes
:€€€€€€€€€
ј
2training_1/Adam/gradients/dense_2/Softmax_grad/mulMultraining_1/Adam/gradients/AddNdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:€€€€€€€€€
≤
Dtraining_1/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*
valueB:*"
_class
loc:@dense_2/Softmax*
dtype0*
_output_shapes
:
Ґ
2training_1/Adam/gradients/dense_2/Softmax_grad/SumSum2training_1/Adam/gradients/dense_2/Softmax_grad/mulDtraining_1/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indices*
T0*"
_class
loc:@dense_2/Softmax*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
±
<training_1/Adam/gradients/dense_2/Softmax_grad/Reshape/shapeConst*
valueB"€€€€   *"
_class
loc:@dense_2/Softmax*
dtype0*
_output_shapes
:
Ч
6training_1/Adam/gradients/dense_2/Softmax_grad/ReshapeReshape2training_1/Adam/gradients/dense_2/Softmax_grad/Sum<training_1/Adam/gradients/dense_2/Softmax_grad/Reshape/shape*
Tshape0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:€€€€€€€€€*
T0
з
2training_1/Adam/gradients/dense_2/Softmax_grad/subSubtraining_1/Adam/gradients/AddN6training_1/Adam/gradients/dense_2/Softmax_grad/Reshape*'
_output_shapes
:€€€€€€€€€*
T0*"
_class
loc:@dense_2/Softmax
÷
4training_1/Adam/gradients/dense_2/Softmax_grad/mul_1Mul2training_1/Adam/gradients/dense_2/Softmax_grad/subdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:€€€€€€€€€
я
:training_1/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad4training_1/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
:
Д
4training_1/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul4training_1/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*!
_class
loc:@dense_2/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b(*
T0
ы
6training_1/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1_1/Sigmoid4training_1/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*!
_class
loc:@dense_2/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( 
м
<training_1/Adam/gradients/dense_1_1/Sigmoid_grad/SigmoidGradSigmoidGraddense_1_1/Sigmoid4training_1/Adam/gradients/dense_2/MatMul_grad/MatMul*
T0*$
_class
loc:@dense_1_1/Sigmoid*'
_output_shapes
:€€€€€€€€€

л
<training_1/Adam/gradients/dense_1_1/BiasAdd_grad/BiasAddGradBiasAddGrad<training_1/Adam/gradients/dense_1_1/Sigmoid_grad/SigmoidGrad*
_output_shapes
:
*
T0*$
_class
loc:@dense_1_1/BiasAdd*
data_formatNHWC
Т
6training_1/Adam/gradients/dense_1_1/MatMul_grad/MatMulMatMul<training_1/Adam/gradients/dense_1_1/Sigmoid_grad/SigmoidGraddense_1_1/kernel/read*
T0*#
_class
loc:@dense_1_1/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b(
Г
8training_1/Adam/gradients/dense_1_1/MatMul_grad/MatMul_1MatMuldense_1_input<training_1/Adam/gradients/dense_1_1/Sigmoid_grad/SigmoidGrad*
T0*#
_class
loc:@dense_1_1/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( 
a
training_1/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
і
training_1/Adam/AssignAdd	AssignAddAdam_1/iterationstraining_1/Adam/AssignAdd/value*
T0	*$
_class
loc:@Adam_1/iterations*
_output_shapes
: *
use_locking( 
d
training_1/Adam/CastCastAdam_1/iterations/read*

SrcT0	*

DstT0*
_output_shapes
: 
Z
training_1/Adam/add/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
h
training_1/Adam/addAddtraining_1/Adam/Casttraining_1/Adam/add/y*
T0*
_output_shapes
: 
d
training_1/Adam/PowPowAdam_1/beta_2/readtraining_1/Adam/add*
T0*
_output_shapes
: 
Z
training_1/Adam/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
g
training_1/Adam/subSubtraining_1/Adam/sub/xtraining_1/Adam/Pow*
T0*
_output_shapes
: 
Z
training_1/Adam/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
\
training_1/Adam/Const_1Const*
valueB
 *  А*
dtype0*
_output_shapes
: 

%training_1/Adam/clip_by_value/MinimumMinimumtraining_1/Adam/subtraining_1/Adam/Const_1*
_output_shapes
: *
T0
З
training_1/Adam/clip_by_valueMaximum%training_1/Adam/clip_by_value/Minimumtraining_1/Adam/Const*
T0*
_output_shapes
: 
\
training_1/Adam/SqrtSqrttraining_1/Adam/clip_by_value*
_output_shapes
: *
T0
f
training_1/Adam/Pow_1PowAdam_1/beta_1/readtraining_1/Adam/add*
T0*
_output_shapes
: 
\
training_1/Adam/sub_1/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
m
training_1/Adam/sub_1Subtraining_1/Adam/sub_1/xtraining_1/Adam/Pow_1*
_output_shapes
: *
T0
p
training_1/Adam/truedivRealDivtraining_1/Adam/Sqrttraining_1/Adam/sub_1*
_output_shapes
: *
T0
d
training_1/Adam/mulMulAdam_1/lr/readtraining_1/Adam/truediv*
T0*
_output_shapes
: 
j
training_1/Adam/zerosConst*
dtype0*
_output_shapes

:
*
valueB
*    
М
training_1/Adam/Variable
VariableV2*
shape
:
*
shared_name *
dtype0*
	container *
_output_shapes

:

ў
training_1/Adam/Variable/AssignAssigntraining_1/Adam/Variabletraining_1/Adam/zeros*
use_locking(*
T0*+
_class!
loc:@training_1/Adam/Variable*
validate_shape(*
_output_shapes

:

Щ
training_1/Adam/Variable/readIdentitytraining_1/Adam/Variable*
T0*+
_class!
loc:@training_1/Adam/Variable*
_output_shapes

:

d
training_1/Adam/zeros_1Const*
dtype0*
_output_shapes
:
*
valueB
*    
Ж
training_1/Adam/Variable_1
VariableV2*
shape:
*
shared_name *
dtype0*
	container *
_output_shapes
:

Ё
!training_1/Adam/Variable_1/AssignAssigntraining_1/Adam/Variable_1training_1/Adam/zeros_1*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_1
Ы
training_1/Adam/Variable_1/readIdentitytraining_1/Adam/Variable_1*
T0*-
_class#
!loc:@training_1/Adam/Variable_1*
_output_shapes
:

l
training_1/Adam/zeros_2Const*
valueB
*    *
dtype0*
_output_shapes

:

О
training_1/Adam/Variable_2
VariableV2*
dtype0*
	container *
_output_shapes

:
*
shape
:
*
shared_name 
б
!training_1/Adam/Variable_2/AssignAssigntraining_1/Adam/Variable_2training_1/Adam/zeros_2*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_2*
validate_shape(*
_output_shapes

:

Я
training_1/Adam/Variable_2/readIdentitytraining_1/Adam/Variable_2*
_output_shapes

:
*
T0*-
_class#
!loc:@training_1/Adam/Variable_2
d
training_1/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:
Ж
training_1/Adam/Variable_3
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
Ё
!training_1/Adam/Variable_3/AssignAssigntraining_1/Adam/Variable_3training_1/Adam/zeros_3*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_3*
validate_shape(*
_output_shapes
:
Ы
training_1/Adam/Variable_3/readIdentitytraining_1/Adam/Variable_3*
T0*-
_class#
!loc:@training_1/Adam/Variable_3*
_output_shapes
:
l
training_1/Adam/zeros_4Const*
valueB
*    *
dtype0*
_output_shapes

:

О
training_1/Adam/Variable_4
VariableV2*
shape
:
*
shared_name *
dtype0*
	container *
_output_shapes

:

б
!training_1/Adam/Variable_4/AssignAssigntraining_1/Adam/Variable_4training_1/Adam/zeros_4*-
_class#
!loc:@training_1/Adam/Variable_4*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0
Я
training_1/Adam/Variable_4/readIdentitytraining_1/Adam/Variable_4*
_output_shapes

:
*
T0*-
_class#
!loc:@training_1/Adam/Variable_4
d
training_1/Adam/zeros_5Const*
valueB
*    *
dtype0*
_output_shapes
:

Ж
training_1/Adam/Variable_5
VariableV2*
shape:
*
shared_name *
dtype0*
	container *
_output_shapes
:

Ё
!training_1/Adam/Variable_5/AssignAssigntraining_1/Adam/Variable_5training_1/Adam/zeros_5*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_5*
validate_shape(*
_output_shapes
:

Ы
training_1/Adam/Variable_5/readIdentitytraining_1/Adam/Variable_5*-
_class#
!loc:@training_1/Adam/Variable_5*
_output_shapes
:
*
T0
l
training_1/Adam/zeros_6Const*
valueB
*    *
dtype0*
_output_shapes

:

О
training_1/Adam/Variable_6
VariableV2*
dtype0*
	container *
_output_shapes

:
*
shape
:
*
shared_name 
б
!training_1/Adam/Variable_6/AssignAssigntraining_1/Adam/Variable_6training_1/Adam/zeros_6*
T0*-
_class#
!loc:@training_1/Adam/Variable_6*
validate_shape(*
_output_shapes

:
*
use_locking(
Я
training_1/Adam/Variable_6/readIdentitytraining_1/Adam/Variable_6*
T0*-
_class#
!loc:@training_1/Adam/Variable_6*
_output_shapes

:

d
training_1/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes
:
Ж
training_1/Adam/Variable_7
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
Ё
!training_1/Adam/Variable_7/AssignAssigntraining_1/Adam/Variable_7training_1/Adam/zeros_7*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_7*
validate_shape(*
_output_shapes
:
Ы
training_1/Adam/Variable_7/readIdentitytraining_1/Adam/Variable_7*-
_class#
!loc:@training_1/Adam/Variable_7*
_output_shapes
:*
T0
q
'training_1/Adam/zeros_8/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
b
training_1/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ю
training_1/Adam/zeros_8Fill'training_1/Adam/zeros_8/shape_as_tensortraining_1/Adam/zeros_8/Const*
_output_shapes
:*
T0*

index_type0
Ж
training_1/Adam/Variable_8
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
Ё
!training_1/Adam/Variable_8/AssignAssigntraining_1/Adam/Variable_8training_1/Adam/zeros_8*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_8*
validate_shape(*
_output_shapes
:
Ы
training_1/Adam/Variable_8/readIdentitytraining_1/Adam/Variable_8*
T0*-
_class#
!loc:@training_1/Adam/Variable_8*
_output_shapes
:
q
'training_1/Adam/zeros_9/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training_1/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ю
training_1/Adam/zeros_9Fill'training_1/Adam/zeros_9/shape_as_tensortraining_1/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes
:
Ж
training_1/Adam/Variable_9
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
Ё
!training_1/Adam/Variable_9/AssignAssigntraining_1/Adam/Variable_9training_1/Adam/zeros_9*
T0*-
_class#
!loc:@training_1/Adam/Variable_9*
validate_shape(*
_output_shapes
:*
use_locking(
Ы
training_1/Adam/Variable_9/readIdentitytraining_1/Adam/Variable_9*
T0*-
_class#
!loc:@training_1/Adam/Variable_9*
_output_shapes
:
r
(training_1/Adam/zeros_10/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
c
training_1/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
°
training_1/Adam/zeros_10Fill(training_1/Adam/zeros_10/shape_as_tensortraining_1/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes
:
З
training_1/Adam/Variable_10
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
б
"training_1/Adam/Variable_10/AssignAssigntraining_1/Adam/Variable_10training_1/Adam/zeros_10*
use_locking(*
T0*.
_class$
" loc:@training_1/Adam/Variable_10*
validate_shape(*
_output_shapes
:
Ю
 training_1/Adam/Variable_10/readIdentitytraining_1/Adam/Variable_10*
T0*.
_class$
" loc:@training_1/Adam/Variable_10*
_output_shapes
:
r
(training_1/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
c
training_1/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
°
training_1/Adam/zeros_11Fill(training_1/Adam/zeros_11/shape_as_tensortraining_1/Adam/zeros_11/Const*

index_type0*
_output_shapes
:*
T0
З
training_1/Adam/Variable_11
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
б
"training_1/Adam/Variable_11/AssignAssigntraining_1/Adam/Variable_11training_1/Adam/zeros_11*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@training_1/Adam/Variable_11*
validate_shape(
Ю
 training_1/Adam/Variable_11/readIdentitytraining_1/Adam/Variable_11*
T0*.
_class$
" loc:@training_1/Adam/Variable_11*
_output_shapes
:
x
training_1/Adam/mul_1MulAdam_1/beta_1/readtraining_1/Adam/Variable/read*
T0*
_output_shapes

:

\
training_1/Adam/sub_2/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
j
training_1/Adam/sub_2Subtraining_1/Adam/sub_2/xAdam_1/beta_1/read*
T0*
_output_shapes
: 
Ц
training_1/Adam/mul_2Multraining_1/Adam/sub_28training_1/Adam/gradients/dense_1_1/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
s
training_1/Adam/add_1Addtraining_1/Adam/mul_1training_1/Adam/mul_2*
T0*
_output_shapes

:

z
training_1/Adam/mul_3MulAdam_1/beta_2/readtraining_1/Adam/Variable_4/read*
_output_shapes

:
*
T0
\
training_1/Adam/sub_3/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
j
training_1/Adam/sub_3Subtraining_1/Adam/sub_3/xAdam_1/beta_2/read*
T0*
_output_shapes
: 
Г
training_1/Adam/SquareSquare8training_1/Adam/gradients/dense_1_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

t
training_1/Adam/mul_4Multraining_1/Adam/sub_3training_1/Adam/Square*
T0*
_output_shapes

:

s
training_1/Adam/add_2Addtraining_1/Adam/mul_3training_1/Adam/mul_4*
_output_shapes

:
*
T0
q
training_1/Adam/mul_5Multraining_1/Adam/multraining_1/Adam/add_1*
T0*
_output_shapes

:

\
training_1/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_1/Adam/Const_3Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Л
'training_1/Adam/clip_by_value_1/MinimumMinimumtraining_1/Adam/add_2training_1/Adam/Const_3*
T0*
_output_shapes

:

Х
training_1/Adam/clip_by_value_1Maximum'training_1/Adam/clip_by_value_1/Minimumtraining_1/Adam/Const_2*
_output_shapes

:
*
T0
h
training_1/Adam/Sqrt_1Sqrttraining_1/Adam/clip_by_value_1*
T0*
_output_shapes

:

\
training_1/Adam/add_3/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
v
training_1/Adam/add_3Addtraining_1/Adam/Sqrt_1training_1/Adam/add_3/y*
T0*
_output_shapes

:

{
training_1/Adam/truediv_1RealDivtraining_1/Adam/mul_5training_1/Adam/add_3*
_output_shapes

:
*
T0
w
training_1/Adam/sub_4Subdense_1_1/kernel/readtraining_1/Adam/truediv_1*
T0*
_output_shapes

:

–
training_1/Adam/AssignAssigntraining_1/Adam/Variabletraining_1/Adam/add_1*
use_locking(*
T0*+
_class!
loc:@training_1/Adam/Variable*
validate_shape(*
_output_shapes

:

÷
training_1/Adam/Assign_1Assigntraining_1/Adam/Variable_4training_1/Adam/add_2*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_4*
validate_shape(*
_output_shapes

:

¬
training_1/Adam/Assign_2Assigndense_1_1/kerneltraining_1/Adam/sub_4*#
_class
loc:@dense_1_1/kernel*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0
v
training_1/Adam/mul_6MulAdam_1/beta_1/readtraining_1/Adam/Variable_1/read*
T0*
_output_shapes
:

\
training_1/Adam/sub_5/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
j
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/xAdam_1/beta_1/read*
_output_shapes
: *
T0
Ц
training_1/Adam/mul_7Multraining_1/Adam/sub_5<training_1/Adam/gradients/dense_1_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

o
training_1/Adam/add_4Addtraining_1/Adam/mul_6training_1/Adam/mul_7*
T0*
_output_shapes
:

v
training_1/Adam/mul_8MulAdam_1/beta_2/readtraining_1/Adam/Variable_5/read*
_output_shapes
:
*
T0
\
training_1/Adam/sub_6/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
j
training_1/Adam/sub_6Subtraining_1/Adam/sub_6/xAdam_1/beta_2/read*
T0*
_output_shapes
: 
Е
training_1/Adam/Square_1Square<training_1/Adam/gradients/dense_1_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
r
training_1/Adam/mul_9Multraining_1/Adam/sub_6training_1/Adam/Square_1*
_output_shapes
:
*
T0
o
training_1/Adam/add_5Addtraining_1/Adam/mul_8training_1/Adam/mul_9*
_output_shapes
:
*
T0
n
training_1/Adam/mul_10Multraining_1/Adam/multraining_1/Adam/add_4*
T0*
_output_shapes
:

\
training_1/Adam/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_1/Adam/Const_5Const*
_output_shapes
: *
valueB
 *  А*
dtype0
З
'training_1/Adam/clip_by_value_2/MinimumMinimumtraining_1/Adam/add_5training_1/Adam/Const_5*
T0*
_output_shapes
:

С
training_1/Adam/clip_by_value_2Maximum'training_1/Adam/clip_by_value_2/Minimumtraining_1/Adam/Const_4*
T0*
_output_shapes
:

d
training_1/Adam/Sqrt_2Sqrttraining_1/Adam/clip_by_value_2*
T0*
_output_shapes
:

\
training_1/Adam/add_6/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
r
training_1/Adam/add_6Addtraining_1/Adam/Sqrt_2training_1/Adam/add_6/y*
_output_shapes
:
*
T0
x
training_1/Adam/truediv_2RealDivtraining_1/Adam/mul_10training_1/Adam/add_6*
T0*
_output_shapes
:

q
training_1/Adam/sub_7Subdense_1_1/bias/readtraining_1/Adam/truediv_2*
_output_shapes
:
*
T0
“
training_1/Adam/Assign_3Assigntraining_1/Adam/Variable_1training_1/Adam/add_4*-
_class#
!loc:@training_1/Adam/Variable_1*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0
“
training_1/Adam/Assign_4Assigntraining_1/Adam/Variable_5training_1/Adam/add_5*
_output_shapes
:
*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_5*
validate_shape(
Ї
training_1/Adam/Assign_5Assigndense_1_1/biastraining_1/Adam/sub_7*!
_class
loc:@dense_1_1/bias*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0
{
training_1/Adam/mul_11MulAdam_1/beta_1/readtraining_1/Adam/Variable_2/read*
T0*
_output_shapes

:

\
training_1/Adam/sub_8/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
j
training_1/Adam/sub_8Subtraining_1/Adam/sub_8/xAdam_1/beta_1/read*
T0*
_output_shapes
: 
Х
training_1/Adam/mul_12Multraining_1/Adam/sub_86training_1/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

u
training_1/Adam/add_7Addtraining_1/Adam/mul_11training_1/Adam/mul_12*
T0*
_output_shapes

:

{
training_1/Adam/mul_13MulAdam_1/beta_2/readtraining_1/Adam/Variable_6/read*
T0*
_output_shapes

:

\
training_1/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
j
training_1/Adam/sub_9Subtraining_1/Adam/sub_9/xAdam_1/beta_2/read*
_output_shapes
: *
T0
Г
training_1/Adam/Square_2Square6training_1/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

w
training_1/Adam/mul_14Multraining_1/Adam/sub_9training_1/Adam/Square_2*
T0*
_output_shapes

:

u
training_1/Adam/add_8Addtraining_1/Adam/mul_13training_1/Adam/mul_14*
_output_shapes

:
*
T0
r
training_1/Adam/mul_15Multraining_1/Adam/multraining_1/Adam/add_7*
T0*
_output_shapes

:

\
training_1/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_1/Adam/Const_7Const*
_output_shapes
: *
valueB
 *  А*
dtype0
Л
'training_1/Adam/clip_by_value_3/MinimumMinimumtraining_1/Adam/add_8training_1/Adam/Const_7*
T0*
_output_shapes

:

Х
training_1/Adam/clip_by_value_3Maximum'training_1/Adam/clip_by_value_3/Minimumtraining_1/Adam/Const_6*
T0*
_output_shapes

:

h
training_1/Adam/Sqrt_3Sqrttraining_1/Adam/clip_by_value_3*
T0*
_output_shapes

:

\
training_1/Adam/add_9/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
v
training_1/Adam/add_9Addtraining_1/Adam/Sqrt_3training_1/Adam/add_9/y*
_output_shapes

:
*
T0
|
training_1/Adam/truediv_3RealDivtraining_1/Adam/mul_15training_1/Adam/add_9*
T0*
_output_shapes

:

v
training_1/Adam/sub_10Subdense_2/kernel/readtraining_1/Adam/truediv_3*
_output_shapes

:
*
T0
÷
training_1/Adam/Assign_6Assigntraining_1/Adam/Variable_2training_1/Adam/add_7*-
_class#
!loc:@training_1/Adam/Variable_2*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0
÷
training_1/Adam/Assign_7Assigntraining_1/Adam/Variable_6training_1/Adam/add_8*
_output_shapes

:
*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_6*
validate_shape(
њ
training_1/Adam/Assign_8Assigndense_2/kerneltraining_1/Adam/sub_10*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:

w
training_1/Adam/mul_16MulAdam_1/beta_1/readtraining_1/Adam/Variable_3/read*
_output_shapes
:*
T0
]
training_1/Adam/sub_11/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
l
training_1/Adam/sub_11Subtraining_1/Adam/sub_11/xAdam_1/beta_1/read*
T0*
_output_shapes
: 
Ц
training_1/Adam/mul_17Multraining_1/Adam/sub_11:training_1/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
r
training_1/Adam/add_10Addtraining_1/Adam/mul_16training_1/Adam/mul_17*
_output_shapes
:*
T0
w
training_1/Adam/mul_18MulAdam_1/beta_2/readtraining_1/Adam/Variable_7/read*
T0*
_output_shapes
:
]
training_1/Adam/sub_12/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
l
training_1/Adam/sub_12Subtraining_1/Adam/sub_12/xAdam_1/beta_2/read*
T0*
_output_shapes
: 
Г
training_1/Adam/Square_3Square:training_1/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
t
training_1/Adam/mul_19Multraining_1/Adam/sub_12training_1/Adam/Square_3*
_output_shapes
:*
T0
r
training_1/Adam/add_11Addtraining_1/Adam/mul_18training_1/Adam/mul_19*
T0*
_output_shapes
:
o
training_1/Adam/mul_20Multraining_1/Adam/multraining_1/Adam/add_10*
T0*
_output_shapes
:
\
training_1/Adam/Const_8Const*
_output_shapes
: *
valueB
 *    *
dtype0
\
training_1/Adam/Const_9Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
И
'training_1/Adam/clip_by_value_4/MinimumMinimumtraining_1/Adam/add_11training_1/Adam/Const_9*
_output_shapes
:*
T0
С
training_1/Adam/clip_by_value_4Maximum'training_1/Adam/clip_by_value_4/Minimumtraining_1/Adam/Const_8*
T0*
_output_shapes
:
d
training_1/Adam/Sqrt_4Sqrttraining_1/Adam/clip_by_value_4*
T0*
_output_shapes
:
]
training_1/Adam/add_12/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
t
training_1/Adam/add_12Addtraining_1/Adam/Sqrt_4training_1/Adam/add_12/y*
T0*
_output_shapes
:
y
training_1/Adam/truediv_4RealDivtraining_1/Adam/mul_20training_1/Adam/add_12*
T0*
_output_shapes
:
p
training_1/Adam/sub_13Subdense_2/bias/readtraining_1/Adam/truediv_4*
_output_shapes
:*
T0
”
training_1/Adam/Assign_9Assigntraining_1/Adam/Variable_3training_1/Adam/add_10*-
_class#
!loc:@training_1/Adam/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
‘
training_1/Adam/Assign_10Assigntraining_1/Adam/Variable_7training_1/Adam/add_11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_7
Є
training_1/Adam/Assign_11Assigndense_2/biastraining_1/Adam/sub_13*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Я
training_1/group_depsNoOp^loss_1/mul^metrics_1/acc/Mean^training_1/Adam/Assign^training_1/Adam/AssignAdd^training_1/Adam/Assign_1^training_1/Adam/Assign_10^training_1/Adam/Assign_11^training_1/Adam/Assign_2^training_1/Adam/Assign_3^training_1/Adam/Assign_4^training_1/Adam/Assign_5^training_1/Adam/Assign_6^training_1/Adam/Assign_7^training_1/Adam/Assign_8^training_1/Adam/Assign_9
К
IsVariableInitializedIsVariableInitializeddense_1_1/kernel*
dtype0*
_output_shapes
: *#
_class
loc:@dense_1_1/kernel
И
IsVariableInitialized_1IsVariableInitializeddense_1_1/bias*!
_class
loc:@dense_1_1/bias*
dtype0*
_output_shapes
: 
И
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
Д
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
О
IsVariableInitialized_4IsVariableInitializedAdam_1/iterations*
dtype0	*
_output_shapes
: *$
_class
loc:@Adam_1/iterations
~
IsVariableInitialized_5IsVariableInitialized	Adam_1/lr*
_class
loc:@Adam_1/lr*
dtype0*
_output_shapes
: 
Ж
IsVariableInitialized_6IsVariableInitializedAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
dtype0*
_output_shapes
: 
Ж
IsVariableInitialized_7IsVariableInitializedAdam_1/beta_2*
dtype0*
_output_shapes
: * 
_class
loc:@Adam_1/beta_2
Д
IsVariableInitialized_8IsVariableInitializedAdam_1/decay*
dtype0*
_output_shapes
: *
_class
loc:@Adam_1/decay
Ь
IsVariableInitialized_9IsVariableInitializedtraining_1/Adam/Variable*
dtype0*
_output_shapes
: *+
_class!
loc:@training_1/Adam/Variable
°
IsVariableInitialized_10IsVariableInitializedtraining_1/Adam/Variable_1*
dtype0*
_output_shapes
: *-
_class#
!loc:@training_1/Adam/Variable_1
°
IsVariableInitialized_11IsVariableInitializedtraining_1/Adam/Variable_2*-
_class#
!loc:@training_1/Adam/Variable_2*
dtype0*
_output_shapes
: 
°
IsVariableInitialized_12IsVariableInitializedtraining_1/Adam/Variable_3*
dtype0*
_output_shapes
: *-
_class#
!loc:@training_1/Adam/Variable_3
°
IsVariableInitialized_13IsVariableInitializedtraining_1/Adam/Variable_4*-
_class#
!loc:@training_1/Adam/Variable_4*
dtype0*
_output_shapes
: 
°
IsVariableInitialized_14IsVariableInitializedtraining_1/Adam/Variable_5*
dtype0*
_output_shapes
: *-
_class#
!loc:@training_1/Adam/Variable_5
°
IsVariableInitialized_15IsVariableInitializedtraining_1/Adam/Variable_6*
_output_shapes
: *-
_class#
!loc:@training_1/Adam/Variable_6*
dtype0
°
IsVariableInitialized_16IsVariableInitializedtraining_1/Adam/Variable_7*-
_class#
!loc:@training_1/Adam/Variable_7*
dtype0*
_output_shapes
: 
°
IsVariableInitialized_17IsVariableInitializedtraining_1/Adam/Variable_8*-
_class#
!loc:@training_1/Adam/Variable_8*
dtype0*
_output_shapes
: 
°
IsVariableInitialized_18IsVariableInitializedtraining_1/Adam/Variable_9*-
_class#
!loc:@training_1/Adam/Variable_9*
dtype0*
_output_shapes
: 
£
IsVariableInitialized_19IsVariableInitializedtraining_1/Adam/Variable_10*.
_class$
" loc:@training_1/Adam/Variable_10*
dtype0*
_output_shapes
: 
£
IsVariableInitialized_20IsVariableInitializedtraining_1/Adam/Variable_11*.
_class$
" loc:@training_1/Adam/Variable_11*
dtype0*
_output_shapes
: 
Р
init_3NoOp^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/lr/Assign^dense_1_1/bias/Assign^dense_1_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign ^training_1/Adam/Variable/Assign"^training_1/Adam/Variable_1/Assign#^training_1/Adam/Variable_10/Assign#^training_1/Adam/Variable_11/Assign"^training_1/Adam/Variable_2/Assign"^training_1/Adam/Variable_3/Assign"^training_1/Adam/Variable_4/Assign"^training_1/Adam/Variable_5/Assign"^training_1/Adam/Variable_6/Assign"^training_1/Adam/Variable_7/Assign"^training_1/Adam/Variable_8/Assign"^training_1/Adam/Variable_9/Assign
p
dense_input_1Placeholder*
dtype0*'
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
£
/dense_3/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"   
   *!
_class
loc:@dense_3/kernel*
dtype0
Х
-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *bЧ'њ*!
_class
loc:@dense_3/kernel
Х
-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *bЧ'?*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
л
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_3/kernel*
seed2 *
dtype0*
_output_shapes

:
*

seed *
T0
÷
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
и
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:

Џ
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:

ђ
dense_3/kernelVarHandleOp*
shared_namedense_3/kernel*!
_class
loc:@dense_3/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: 
m
/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/kernel*
_output_shapes
: 
Ф
dense_3/kernel/AssignAssignVariableOpdense_3/kernel)dense_3/kernel/Initializer/random_uniform*!
_class
loc:@dense_3/kernel*
dtype0
Ф
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes

:

М
dense_3/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

Ґ
dense_3/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_3/bias*
_class
loc:@dense_3/bias*
	container *
shape:

i
-dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/bias*
_output_shapes
: 
Г
dense_3/bias/AssignAssignVariableOpdense_3/biasdense_3/bias/Initializer/zeros*
_class
loc:@dense_3/bias*
dtype0
К
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

l
dense_3/MatMul/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:
*
dtype0
Ю
dense_3/MatMulMatMuldense_input_1dense_3/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( *
T0
g
dense_3/BiasAdd/ReadVariableOpReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:

У
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

]
dense_3/SigmoidSigmoiddense_3/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€

І
1dense_1_2/kernel/Initializer/random_uniform/shapeConst*
valueB"
      *#
_class
loc:@dense_1_2/kernel*
dtype0*
_output_shapes
:
Щ
/dense_1_2/kernel/Initializer/random_uniform/minConst*
valueB
 *тк-њ*#
_class
loc:@dense_1_2/kernel*
dtype0*
_output_shapes
: 
Щ
/dense_1_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *тк-?*#
_class
loc:@dense_1_2/kernel*
dtype0*
_output_shapes
: 
с
9dense_1_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1dense_1_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:
*

seed *
T0*#
_class
loc:@dense_1_2/kernel*
seed2 
ё
/dense_1_2/kernel/Initializer/random_uniform/subSub/dense_1_2/kernel/Initializer/random_uniform/max/dense_1_2/kernel/Initializer/random_uniform/min*#
_class
loc:@dense_1_2/kernel*
_output_shapes
: *
T0
р
/dense_1_2/kernel/Initializer/random_uniform/mulMul9dense_1_2/kernel/Initializer/random_uniform/RandomUniform/dense_1_2/kernel/Initializer/random_uniform/sub*#
_class
loc:@dense_1_2/kernel*
_output_shapes

:
*
T0
в
+dense_1_2/kernel/Initializer/random_uniformAdd/dense_1_2/kernel/Initializer/random_uniform/mul/dense_1_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@dense_1_2/kernel*
_output_shapes

:

≤
dense_1_2/kernelVarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *!
shared_namedense_1_2/kernel*#
_class
loc:@dense_1_2/kernel*
	container 
q
1dense_1_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1_2/kernel*
_output_shapes
: 
Ь
dense_1_2/kernel/AssignAssignVariableOpdense_1_2/kernel+dense_1_2/kernel/Initializer/random_uniform*#
_class
loc:@dense_1_2/kernel*
dtype0
Ъ
$dense_1_2/kernel/Read/ReadVariableOpReadVariableOpdense_1_2/kernel*#
_class
loc:@dense_1_2/kernel*
dtype0*
_output_shapes

:

Р
 dense_1_2/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@dense_1_2/bias*
dtype0*
_output_shapes
:
®
dense_1_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1_2/bias*!
_class
loc:@dense_1_2/bias*
	container *
shape:
m
/dense_1_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1_2/bias*
_output_shapes
: 
Л
dense_1_2/bias/AssignAssignVariableOpdense_1_2/bias dense_1_2/bias/Initializer/zeros*!
_class
loc:@dense_1_2/bias*
dtype0
Р
"dense_1_2/bias/Read/ReadVariableOpReadVariableOpdense_1_2/bias*!
_class
loc:@dense_1_2/bias*
dtype0*
_output_shapes
:
p
dense_1_2/MatMul/ReadVariableOpReadVariableOpdense_1_2/kernel*
dtype0*
_output_shapes

:

§
dense_1_2/MatMulMatMuldense_3/Sigmoiddense_1_2/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( *
T0
k
 dense_1_2/BiasAdd/ReadVariableOpReadVariableOpdense_1_2/bias*
dtype0*
_output_shapes
:
Щ
dense_1_2/BiasAddBiasAdddense_1_2/MatMul dense_1_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
a
dense_1_2/SoftmaxSoftmaxdense_1_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
_
Placeholder_17Placeholder*
dtype0*
_output_shapes

:
*
shape
:

T
AssignVariableOp_17AssignVariableOpdense_3/kernelPlaceholder_17*
dtype0
v
ReadVariableOp_17ReadVariableOpdense_3/kernel^AssignVariableOp_17*
dtype0*
_output_shapes

:

W
Placeholder_18Placeholder*
_output_shapes
:
*
shape:
*
dtype0
R
AssignVariableOp_18AssignVariableOpdense_3/biasPlaceholder_18*
dtype0
p
ReadVariableOp_18ReadVariableOpdense_3/bias^AssignVariableOp_18*
dtype0*
_output_shapes
:

_
Placeholder_19Placeholder*
shape
:
*
dtype0*
_output_shapes

:

V
AssignVariableOp_19AssignVariableOpdense_1_2/kernelPlaceholder_19*
dtype0
x
ReadVariableOp_19ReadVariableOpdense_1_2/kernel^AssignVariableOp_19*
dtype0*
_output_shapes

:

W
Placeholder_20Placeholder*
dtype0*
_output_shapes
:*
shape:
T
AssignVariableOp_20AssignVariableOpdense_1_2/biasPlaceholder_20*
dtype0
r
ReadVariableOp_20ReadVariableOpdense_1_2/bias^AssignVariableOp_20*
dtype0*
_output_shapes
:
S
VarIsInitializedOp_21VarIsInitializedOpdense_3/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_22VarIsInitializedOpdense_3/bias*
_output_shapes
: 
U
VarIsInitializedOp_23VarIsInitializedOpdense_1_2/kernel*
_output_shapes
: 
S
VarIsInitializedOp_24VarIsInitializedOpdense_1_2/bias*
_output_shapes
: 
n
init_4NoOp^dense_1_2/bias/Assign^dense_1_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign
m
+Adam_2/iterations/Initializer/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
З
Adam_2/iterationsVarHandleOp*
shape: *"
shared_nameAdam_2/iterations*
dtype0	*
	container *
_output_shapes
: 
s
2Adam_2/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/iterations*
_output_shapes
: 
Я
Adam_2/iterations/AssignAssignVariableOpAdam_2/iterations+Adam_2/iterations/Initializer/initial_value*$
_class
loc:@Adam_2/iterations*
dtype0	
Х
%Adam_2/iterations/Read/ReadVariableOpReadVariableOpAdam_2/iterations*$
_class
loc:@Adam_2/iterations*
dtype0	*
_output_shapes
: 
h
#Adam_2/lr/Initializer/initial_valueConst*
valueB
 *
„#=*
dtype0*
_output_shapes
: 
w
	Adam_2/lrVarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name	Adam_2/lr
c
*Adam_2/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOp	Adam_2/lr*
_output_shapes
: 

Adam_2/lr/AssignAssignVariableOp	Adam_2/lr#Adam_2/lr/Initializer/initial_value*
_class
loc:@Adam_2/lr*
dtype0
}
Adam_2/lr/Read/ReadVariableOpReadVariableOp	Adam_2/lr*
dtype0*
_output_shapes
: *
_class
loc:@Adam_2/lr
l
'Adam_2/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 

Adam_2/beta_1VarHandleOp*
shape: *
shared_nameAdam_2/beta_1*
dtype0*
	container *
_output_shapes
: 
k
.Adam_2/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
П
Adam_2/beta_1/AssignAssignVariableOpAdam_2/beta_1'Adam_2/beta_1/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_2/beta_1
Й
!Adam_2/beta_1/Read/ReadVariableOpReadVariableOpAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1*
dtype0*
_output_shapes
: 
l
'Adam_2/beta_2/Initializer/initial_valueConst*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 

Adam_2/beta_2VarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_nameAdam_2/beta_2
k
.Adam_2/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
П
Adam_2/beta_2/AssignAssignVariableOpAdam_2/beta_2'Adam_2/beta_2/Initializer/initial_value* 
_class
loc:@Adam_2/beta_2*
dtype0
Й
!Adam_2/beta_2/Read/ReadVariableOpReadVariableOpAdam_2/beta_2* 
_class
loc:@Adam_2/beta_2*
dtype0*
_output_shapes
: 
k
&Adam_2/decay/Initializer/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
}
Adam_2/decayVarHandleOp*
shape: *
shared_nameAdam_2/decay*
dtype0*
	container *
_output_shapes
: 
i
-Adam_2/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/decay*
_output_shapes
: 
Л
Adam_2/decay/AssignAssignVariableOpAdam_2/decay&Adam_2/decay/Initializer/initial_value*
_class
loc:@Adam_2/decay*
dtype0
Ж
 Adam_2/decay/Read/ReadVariableOpReadVariableOpAdam_2/decay*
_class
loc:@Adam_2/decay*
dtype0*
_output_shapes
: 
Е
dense_1_target_1Placeholder*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€
T
Const_1Const*
valueB*  А?*
dtype0*
_output_shapes
:
З
dense_1_sample_weights_1PlaceholderWithDefaultConst_1*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
k
)loss_2/dense_1_loss/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ђ
loss_2/dense_1_loss/SumSumdense_1_2/Softmax)loss_2/dense_1_loss/Sum/reduction_indices*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims(
Д
loss_2/dense_1_loss/truedivRealDivdense_1_2/Softmaxloss_2/dense_1_loss/Sum*
T0*'
_output_shapes
:€€€€€€€€€
^
loss_2/dense_1_loss/ConstConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
^
loss_2/dense_1_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
loss_2/dense_1_loss/subSubloss_2/dense_1_loss/sub/xloss_2/dense_1_loss/Const*
T0*
_output_shapes
: 
Ь
)loss_2/dense_1_loss/clip_by_value/MinimumMinimumloss_2/dense_1_loss/truedivloss_2/dense_1_loss/sub*'
_output_shapes
:€€€€€€€€€*
T0
§
!loss_2/dense_1_loss/clip_by_valueMaximum)loss_2/dense_1_loss/clip_by_value/Minimumloss_2/dense_1_loss/Const*'
_output_shapes
:€€€€€€€€€*
T0
s
loss_2/dense_1_loss/LogLog!loss_2/dense_1_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€
{
loss_2/dense_1_loss/mulMuldense_1_target_1loss_2/dense_1_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
m
+loss_2/dense_1_loss/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
±
loss_2/dense_1_loss/Sum_1Sumloss_2/dense_1_loss/mul+loss_2/dense_1_loss/Sum_1/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
g
loss_2/dense_1_loss/NegNegloss_2/dense_1_loss/Sum_1*
T0*#
_output_shapes
:€€€€€€€€€
m
*loss_2/dense_1_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
∞
loss_2/dense_1_loss/MeanMeanloss_2/dense_1_loss/Neg*loss_2/dense_1_loss/Mean/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
В
loss_2/dense_1_loss/mul_1Mulloss_2/dense_1_loss/Meandense_1_sample_weights_1*
T0*#
_output_shapes
:€€€€€€€€€
c
loss_2/dense_1_loss/NotEqual/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
Р
loss_2/dense_1_loss/NotEqualNotEqualdense_1_sample_weights_1loss_2/dense_1_loss/NotEqual/y*
T0*#
_output_shapes
:€€€€€€€€€
{
loss_2/dense_1_loss/CastCastloss_2/dense_1_loss/NotEqual*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0

e
loss_2/dense_1_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ч
loss_2/dense_1_loss/Mean_1Meanloss_2/dense_1_loss/Castloss_2/dense_1_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Н
loss_2/dense_1_loss/truediv_1RealDivloss_2/dense_1_loss/mul_1loss_2/dense_1_loss/Mean_1*
T0*#
_output_shapes
:€€€€€€€€€
e
loss_2/dense_1_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Ь
loss_2/dense_1_loss/Mean_2Meanloss_2/dense_1_loss/truediv_1loss_2/dense_1_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Q
loss_2/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
\

loss_2/mulMulloss_2/mul/xloss_2/dense_1_loss/Mean_2*
T0*
_output_shapes
: 
i
metrics_2/acc/ArgMax/dimensionConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Э
metrics_2/acc/ArgMaxArgMaxdense_1_target_1metrics_2/acc/ArgMax/dimension*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0*
output_type0	
k
 metrics_2/acc/ArgMax_1/dimensionConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ґ
metrics_2/acc/ArgMax_1ArgMaxdense_1_2/Softmax metrics_2/acc/ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0
x
metrics_2/acc/EqualEqualmetrics_2/acc/ArgMaxmetrics_2/acc/ArgMax_1*#
_output_shapes
:€€€€€€€€€*
T0	
l
metrics_2/acc/CastCastmetrics_2/acc/Equal*

SrcT0
*

DstT0*#
_output_shapes
:€€€€€€€€€
]
metrics_2/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Б
metrics_2/acc/MeanMeanmetrics_2/acc/Castmetrics_2/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Б
training_2/Adam/gradients/ShapeConst*
_output_shapes
: *
valueB *
_class
loc:@loss_2/mul*
dtype0
З
#training_2/Adam/gradients/grad_ys_0Const*
valueB
 *  А?*
_class
loc:@loss_2/mul*
dtype0*
_output_shapes
: 
Њ
training_2/Adam/gradients/FillFilltraining_2/Adam/gradients/Shape#training_2/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss_2/mul*
_output_shapes
: 
∞
-training_2/Adam/gradients/loss_2/mul_grad/MulMultraining_2/Adam/gradients/Fillloss_2/dense_1_loss/Mean_2*
_output_shapes
: *
T0*
_class
loc:@loss_2/mul
§
/training_2/Adam/gradients/loss_2/mul_grad/Mul_1Multraining_2/Adam/gradients/Fillloss_2/mul/x*
T0*
_class
loc:@loss_2/mul*
_output_shapes
: 
ј
Gtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Reshape/shapeConst*
valueB:*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
dtype0*
_output_shapes
:
®
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/ReshapeReshape/training_2/Adam/gradients/loss_2/mul_grad/Mul_1Gtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
_output_shapes
:
Ћ
?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/ShapeShapeloss_2/dense_1_loss/truediv_1*
T0*
out_type0*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
_output_shapes
:
є
>training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/TileTileAtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Reshape?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Shape*
T0*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
Ќ
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Shape_1Shapeloss_2/dense_1_loss/truediv_1*
T0*
out_type0*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
_output_shapes
:
≥
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Shape_2Const*
valueB *-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
dtype0*
_output_shapes
: 
Є
?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/ConstConst*
valueB: *-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
dtype0*
_output_shapes
:
Ј
>training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/ProdProdAtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Shape_1?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Const*
T0*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ї
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *-
_class#
!loc:@loss_2/dense_1_loss/Mean_2
ї
@training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Prod_1ProdAtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Shape_2Atraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Const_1*
T0*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
_output_shapes
: *

Tidx0*
	keep_dims( 
і
Ctraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
dtype0*
_output_shapes
: 
£
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/MaximumMaximum@training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Prod_1Ctraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Maximum/y*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
_output_shapes
: *
T0
°
Btraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/floordivFloorDiv>training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/ProdAtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Maximum*
T0*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*
_output_shapes
: 
й
>training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/CastCastBtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2
©
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/truedivRealDiv>training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Tile>training_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/Cast*-
_class#
!loc:@loss_2/dense_1_loss/Mean_2*#
_output_shapes
:€€€€€€€€€*
T0
Ќ
Btraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/ShapeShapeloss_2/dense_1_loss/mul_1*
T0*
out_type0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*
_output_shapes
:
є
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Shape_1Const*
valueB *0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*
dtype0*
_output_shapes
: 
д
Rtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/ShapeDtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Shape_1*
T0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
О
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/RealDivRealDivAtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/truedivloss_2/dense_1_loss/Mean_1*
T0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
”
@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/SumSumDtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/RealDivRtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/BroadcastGradientArgs*
T0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
√
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/ReshapeReshape@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/SumBtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Shape*
T0*
Tshape0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
¬
@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/NegNegloss_2/dense_1_loss/mul_1*
T0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
П
Ftraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/RealDiv_1RealDiv@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Negloss_2/dense_1_loss/Mean_1*
T0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
Х
Ftraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/RealDiv_2RealDivFtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/RealDiv_1loss_2/dense_1_loss/Mean_1*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€*
T0
≤
@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/mulMulAtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_2_grad/truedivFtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/RealDiv_2*
T0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
”
Btraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Sum_1Sum@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/mulTtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1*
_output_shapes
:
Љ
Ftraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Reshape_1ReshapeBtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Sum_1Dtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*0
_class&
$"loc:@loss_2/dense_1_loss/truediv_1
ƒ
>training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/ShapeShapeloss_2/dense_1_loss/Mean*
T0*
out_type0*,
_class"
 loc:@loss_2/dense_1_loss/mul_1*
_output_shapes
:
∆
@training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Shape_1Shapedense_1_sample_weights_1*
T0*
out_type0*,
_class"
 loc:@loss_2/dense_1_loss/mul_1*
_output_shapes
:
‘
Ntraining_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Shape@training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Shape_1*
T0*,
_class"
 loc:@loss_2/dense_1_loss/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
€
<training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/MulMulDtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Reshapedense_1_sample_weights_1*
T0*,
_class"
 loc:@loss_2/dense_1_loss/mul_1*#
_output_shapes
:€€€€€€€€€
њ
<training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/SumSum<training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/MulNtraining_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*,
_class"
 loc:@loss_2/dense_1_loss/mul_1*
_output_shapes
:
≥
@training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/ReshapeReshape<training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Sum>training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*,
_class"
 loc:@loss_2/dense_1_loss/mul_1
Б
>training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Mul_1Mulloss_2/dense_1_loss/MeanDtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_1_grad/Reshape*#
_output_shapes
:€€€€€€€€€*
T0*,
_class"
 loc:@loss_2/dense_1_loss/mul_1
≈
>training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Sum_1Sum>training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Mul_1Ptraining_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/BroadcastGradientArgs:1*
T0*,
_class"
 loc:@loss_2/dense_1_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
є
Btraining_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Reshape_1Reshape>training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Sum_1@training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@loss_2/dense_1_loss/mul_1*#
_output_shapes
:€€€€€€€€€
Ѕ
=training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/ShapeShapeloss_2/dense_1_loss/Neg*
T0*
out_type0*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
:
Ђ
<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/SizeConst*
value	B :*+
_class!
loc:@loss_2/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
ь
;training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/addAdd*loss_2/dense_1_loss/Mean/reduction_indices<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Size*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
: *
T0
Т
;training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/modFloorMod;training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/add<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Size*
T0*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
: 
ґ
?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Shape_1Const*
_output_shapes
:*
valueB: *+
_class!
loc:@loss_2/dense_1_loss/Mean*
dtype0
≤
Ctraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/range/startConst*
value	B : *+
_class!
loc:@loss_2/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
≤
Ctraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/range/deltaConst*
value	B :*+
_class!
loc:@loss_2/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
г
=training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/rangeRangeCtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/range/start<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/SizeCtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/range/delta*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
:*

Tidx0
±
Btraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Fill/valueConst*
value	B :*+
_class!
loc:@loss_2/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
Ђ
<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/FillFill?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Shape_1Btraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Fill/value*

index_type0*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
: *
T0
™
Etraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/DynamicStitchDynamicStitch=training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/range;training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/mod=training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Shape<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Fill*
T0*+
_class!
loc:@loss_2/dense_1_loss/Mean*
N*
_output_shapes
:
∞
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss_2/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
¶
?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/MaximumMaximumEtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/DynamicStitchAtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Maximum/y*
T0*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
:
Ю
@training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/floordivFloorDiv=training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Shape?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Maximum*
T0*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
:
Љ
?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/ReshapeReshape@training_2/Adam/gradients/loss_2/dense_1_loss/mul_1_grad/ReshapeEtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@loss_2/dense_1_loss/Mean*#
_output_shapes
:€€€€€€€€€
і
<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/TileTile?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Reshape@training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/floordiv*#
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0*+
_class!
loc:@loss_2/dense_1_loss/Mean
√
?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Shape_2Shapeloss_2/dense_1_loss/Neg*
T0*
out_type0*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
:
ƒ
?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Shape_3Shapeloss_2/dense_1_loss/Mean*
T0*
out_type0*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
:
і
=training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/ConstConst*
valueB: *+
_class!
loc:@loss_2/dense_1_loss/Mean*
dtype0*
_output_shapes
:
ѓ
<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/ProdProd?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Shape_2=training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss_2/dense_1_loss/Mean
ґ
?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Const_1Const*
valueB: *+
_class!
loc:@loss_2/dense_1_loss/Mean*
dtype0*
_output_shapes
:
≥
>training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Prod_1Prod?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Shape_3?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss_2/dense_1_loss/Mean
≤
Ctraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Maximum_1/yConst*
value	B :*+
_class!
loc:@loss_2/dense_1_loss/Mean*
dtype0*
_output_shapes
: 
Я
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Maximum_1Maximum>training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Prod_1Ctraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Maximum_1/y*
T0*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
: 
Э
Btraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/floordiv_1FloorDiv<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/ProdAtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Maximum_1*+
_class!
loc:@loss_2/dense_1_loss/Mean*
_output_shapes
: *
T0
е
<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/CastCastBtraining_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss_2/dense_1_loss/Mean*

DstT0*
_output_shapes
: 
°
?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/truedivRealDiv<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Tile<training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/Cast*#
_output_shapes
:€€€€€€€€€*
T0*+
_class!
loc:@loss_2/dense_1_loss/Mean
№
:training_2/Adam/gradients/loss_2/dense_1_loss/Neg_grad/NegNeg?training_2/Adam/gradients/loss_2/dense_1_loss/Mean_grad/truediv*
T0**
_class 
loc:@loss_2/dense_1_loss/Neg*#
_output_shapes
:€€€€€€€€€
√
>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/ShapeShapeloss_2/dense_1_loss/mul*
_output_shapes
:*
T0*
out_type0*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1
≠
=training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/SizeConst*
value	B :*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*
dtype0*
_output_shapes
: 
ю
<training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/addAdd+loss_2/dense_1_loss/Sum_1/reduction_indices=training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Size*
T0*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*
_output_shapes
: 
Ф
<training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/modFloorMod<training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/add=training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Size*
T0*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*
_output_shapes
: 
±
@training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *,
_class"
 loc:@loss_2/dense_1_loss/Sum_1
і
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/range/startConst*
value	B : *,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*
dtype0*
_output_shapes
: 
і
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/range/deltaConst*
value	B :*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*
dtype0*
_output_shapes
: 
и
>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/rangeRangeDtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/range/start=training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/SizeDtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/range/delta*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*
_output_shapes
:*

Tidx0
≥
Ctraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1
≠
=training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/FillFill@training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Shape_1Ctraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1
∞
Ftraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/DynamicStitchDynamicStitch>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/range<training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/mod>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Shape=training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Fill*
T0*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*
N*
_output_shapes
:
≤
Btraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Maximum/yConst*
value	B :*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*
dtype0*
_output_shapes
: 
™
@training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/MaximumMaximumFtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/DynamicStitchBtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Maximum/y*
_output_shapes
:*
T0*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1
Ґ
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/floordivFloorDiv>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Shape@training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Maximum*
T0*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*
_output_shapes
:
∆
@training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/ReshapeReshape:training_2/Adam/gradients/loss_2/dense_1_loss/Neg_grad/NegFtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/DynamicStitch*
T0*
Tshape0*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Љ
=training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/TileTile@training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/ReshapeAtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/floordiv*'
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0*,
_class"
 loc:@loss_2/dense_1_loss/Sum_1
Є
<training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/ShapeShapedense_1_target_1*
T0*
out_type0**
_class 
loc:@loss_2/dense_1_loss/mul*
_output_shapes
:
Ѕ
>training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Shape_1Shapeloss_2/dense_1_loss/Log*
T0*
out_type0**
_class 
loc:@loss_2/dense_1_loss/mul*
_output_shapes
:
ћ
Ltraining_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Shape>training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Shape_1*
T0**
_class 
loc:@loss_2/dense_1_loss/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ч
:training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/MulMul=training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Tileloss_2/dense_1_loss/Log*
T0**
_class 
loc:@loss_2/dense_1_loss/mul*'
_output_shapes
:€€€€€€€€€
Ј
:training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/SumSum:training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/MulLtraining_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss_2/dense_1_loss/mul*
_output_shapes
:
Є
>training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/ReshapeReshape:training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Sum<training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss_2/dense_1_loss/mul*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
т
<training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Mul_1Muldense_1_target_1=training_2/Adam/gradients/loss_2/dense_1_loss/Sum_1_grad/Tile*
T0**
_class 
loc:@loss_2/dense_1_loss/mul*'
_output_shapes
:€€€€€€€€€
љ
<training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Sum_1Sum<training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Mul_1Ntraining_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/BroadcastGradientArgs:1**
_class 
loc:@loss_2/dense_1_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
µ
@training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Reshape_1Reshape<training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Sum_1>training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss_2/dense_1_loss/mul*'
_output_shapes
:€€€€€€€€€
У
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Log_grad/Reciprocal
Reciprocal!loss_2/dense_1_loss/clip_by_valueA^training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Reshape_1*
T0**
_class 
loc:@loss_2/dense_1_loss/Log*'
_output_shapes
:€€€€€€€€€
§
:training_2/Adam/gradients/loss_2/dense_1_loss/Log_grad/mulMul@training_2/Adam/gradients/loss_2/dense_1_loss/mul_grad/Reshape_1Atraining_2/Adam/gradients/loss_2/dense_1_loss/Log_grad/Reciprocal*'
_output_shapes
:€€€€€€€€€*
T0**
_class 
loc:@loss_2/dense_1_loss/Log
е
Ftraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/ShapeShape)loss_2/dense_1_loss/clip_by_value/Minimum*
T0*
out_type0*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*
_output_shapes
:
Ѕ
Htraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value
ш
Htraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Shape_2Shape:training_2/Adam/gradients/loss_2/dense_1_loss/Log_grad/mul*
out_type0*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*
_output_shapes
:*
T0
«
Ltraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*
dtype0*
_output_shapes
: 
а
Ftraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/zerosFillHtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Shape_2Ltraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
Л
Mtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/GreaterEqualGreaterEqual)loss_2/dense_1_loss/clip_by_value/Minimumloss_2/dense_1_loss/Const*
T0*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
ф
Vtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/ShapeHtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Shape_1*
T0*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
М
Gtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/SelectSelectMtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/GreaterEqual:training_2/Adam/gradients/loss_2/dense_1_loss/Log_grad/mulFtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/zeros*
T0*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
О
Itraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Select_1SelectMtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/GreaterEqualFtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/zeros:training_2/Adam/gradients/loss_2/dense_1_loss/Log_grad/mul*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
в
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/SumSumGtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/SelectVtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*
_output_shapes
:
„
Htraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/ReshapeReshapeDtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/SumFtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value
и
Ftraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Sum_1SumItraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Select_1Xtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/BroadcastGradientArgs:1*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ћ
Jtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Reshape_1ReshapeFtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Sum_1Htraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*4
_class*
(&loc:@loss_2/dense_1_loss/clip_by_value*
_output_shapes
: 
з
Ntraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/ShapeShapeloss_2/dense_1_loss/truediv*
T0*
out_type0*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*
_output_shapes
:
—
Ptraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
Ц
Ptraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Shape_2ShapeHtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Reshape*
_output_shapes
:*
T0*
out_type0*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum
„
Ttraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
А
Ntraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/zerosFillPtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Shape_2Ttraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:€€€€€€€€€*
T0*

index_type0*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum
Е
Rtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss_2/dense_1_loss/truedivloss_2/dense_1_loss/sub*
T0*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
Ф
^training_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsNtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/ShapePtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*
T0*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ј
Otraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/SelectSelectRtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/LessEqualHtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/ReshapeNtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/zeros*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€*
T0
є
Qtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Select_1SelectRtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/LessEqualNtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/zerosHtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value_grad/Reshape*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€*
T0
В
Ltraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/SumSumOtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Select^training_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
ч
Ptraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/ReshapeReshapeLtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/SumNtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
И
Ntraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Sum_1SumQtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Select_1`training_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
м
Rtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeNtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Sum_1Ptraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Shape_1*
Tshape0*<
_class2
0.loc:@loss_2/dense_1_loss/clip_by_value/Minimum*
_output_shapes
: *
T0
Ѕ
@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/ShapeShapedense_1_2/Softmax*
out_type0*.
_class$
" loc:@loss_2/dense_1_loss/truediv*
_output_shapes
:*
T0
…
Btraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Shape_1Shapeloss_2/dense_1_loss/Sum*
T0*
out_type0*.
_class$
" loc:@loss_2/dense_1_loss/truediv*
_output_shapes
:
№
Ptraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/ShapeBtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Shape_1*
T0*.
_class$
" loc:@loss_2/dense_1_loss/truediv*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ъ
Btraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/RealDivRealDivPtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/Reshapeloss_2/dense_1_loss/Sum*.
_class$
" loc:@loss_2/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€*
T0
Ћ
>training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/SumSumBtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/RealDivPtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/BroadcastGradientArgs*.
_class$
" loc:@loss_2/dense_1_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
њ
Btraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/ReshapeReshape>training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Sum@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Shape*
Tshape0*.
_class$
" loc:@loss_2/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€*
T0
Ї
>training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/NegNegdense_1_2/Softmax*
T0*.
_class$
" loc:@loss_2/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
К
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/RealDiv_1RealDiv>training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Negloss_2/dense_1_loss/Sum*
T0*.
_class$
" loc:@loss_2/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
Р
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/RealDiv_2RealDivDtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/RealDiv_1loss_2/dense_1_loss/Sum*
T0*.
_class$
" loc:@loss_2/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
њ
>training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/mulMulPtraining_2/Adam/gradients/loss_2/dense_1_loss/clip_by_value/Minimum_grad/ReshapeDtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/RealDiv_2*
T0*.
_class$
" loc:@loss_2/dense_1_loss/truediv*'
_output_shapes
:€€€€€€€€€
Ћ
@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Sum_1Sum>training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/mulRtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@loss_2/dense_1_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
≈
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Reshape_1Reshape@training_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Sum_1Btraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*.
_class$
" loc:@loss_2/dense_1_loss/truediv
є
<training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/ShapeShapedense_1_2/Softmax*
T0*
out_type0**
_class 
loc:@loss_2/dense_1_loss/Sum*
_output_shapes
:
©
;training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/SizeConst*
value	B :**
_class 
loc:@loss_2/dense_1_loss/Sum*
dtype0*
_output_shapes
: 
ц
:training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/addAdd)loss_2/dense_1_loss/Sum/reduction_indices;training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Size*
T0**
_class 
loc:@loss_2/dense_1_loss/Sum*
_output_shapes
: 
М
:training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/modFloorMod:training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/add;training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Size*
T0**
_class 
loc:@loss_2/dense_1_loss/Sum*
_output_shapes
: 
≠
>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Shape_1Const*
_output_shapes
: *
valueB **
_class 
loc:@loss_2/dense_1_loss/Sum*
dtype0
∞
Btraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : **
_class 
loc:@loss_2/dense_1_loss/Sum
∞
Btraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :**
_class 
loc:@loss_2/dense_1_loss/Sum
ё
<training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/rangeRangeBtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/range/start;training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/SizeBtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/range/delta**
_class 
loc:@loss_2/dense_1_loss/Sum*
_output_shapes
:*

Tidx0
ѓ
Atraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :**
_class 
loc:@loss_2/dense_1_loss/Sum
•
;training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/FillFill>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Shape_1Atraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Fill/value*
_output_shapes
: *
T0*

index_type0**
_class 
loc:@loss_2/dense_1_loss/Sum
§
Dtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/DynamicStitchDynamicStitch<training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/range:training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/mod<training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Shape;training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Fill*
T0**
_class 
loc:@loss_2/dense_1_loss/Sum*
N*
_output_shapes
:
Ѓ
@training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Maximum/yConst*
value	B :**
_class 
loc:@loss_2/dense_1_loss/Sum*
dtype0*
_output_shapes
: 
Ґ
>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/MaximumMaximumDtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/DynamicStitch@training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Maximum/y*
T0**
_class 
loc:@loss_2/dense_1_loss/Sum*
_output_shapes
:
Ъ
?training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/floordivFloorDiv<training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Shape>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Maximum*
T0**
_class 
loc:@loss_2/dense_1_loss/Sum*
_output_shapes
:
 
>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/ReshapeReshapeDtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Reshape_1Dtraining_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/DynamicStitch*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0**
_class 
loc:@loss_2/dense_1_loss/Sum
і
;training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/TileTile>training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Reshape?training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/floordiv*'
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0**
_class 
loc:@loss_2/dense_1_loss/Sum
Т
training_2/Adam/gradients/AddNAddNBtraining_2/Adam/gradients/loss_2/dense_1_loss/truediv_grad/Reshape;training_2/Adam/gradients/loss_2/dense_1_loss/Sum_grad/Tile*.
_class$
" loc:@loss_2/dense_1_loss/truediv*
N*'
_output_shapes
:€€€€€€€€€*
T0
∆
4training_2/Adam/gradients/dense_1_2/Softmax_grad/mulMultraining_2/Adam/gradients/AddNdense_1_2/Softmax*'
_output_shapes
:€€€€€€€€€*
T0*$
_class
loc:@dense_1_2/Softmax
ґ
Ftraining_2/Adam/gradients/dense_1_2/Softmax_grad/Sum/reduction_indicesConst*
valueB:*$
_class
loc:@dense_1_2/Softmax*
dtype0*
_output_shapes
:
™
4training_2/Adam/gradients/dense_1_2/Softmax_grad/SumSum4training_2/Adam/gradients/dense_1_2/Softmax_grad/mulFtraining_2/Adam/gradients/dense_1_2/Softmax_grad/Sum/reduction_indices*
T0*$
_class
loc:@dense_1_2/Softmax*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
µ
>training_2/Adam/gradients/dense_1_2/Softmax_grad/Reshape/shapeConst*
valueB"€€€€   *$
_class
loc:@dense_1_2/Softmax*
dtype0*
_output_shapes
:
Я
8training_2/Adam/gradients/dense_1_2/Softmax_grad/ReshapeReshape4training_2/Adam/gradients/dense_1_2/Softmax_grad/Sum>training_2/Adam/gradients/dense_1_2/Softmax_grad/Reshape/shape*
T0*
Tshape0*$
_class
loc:@dense_1_2/Softmax*'
_output_shapes
:€€€€€€€€€
н
4training_2/Adam/gradients/dense_1_2/Softmax_grad/subSubtraining_2/Adam/gradients/AddN8training_2/Adam/gradients/dense_1_2/Softmax_grad/Reshape*
T0*$
_class
loc:@dense_1_2/Softmax*'
_output_shapes
:€€€€€€€€€
ё
6training_2/Adam/gradients/dense_1_2/Softmax_grad/mul_1Mul4training_2/Adam/gradients/dense_1_2/Softmax_grad/subdense_1_2/Softmax*
T0*$
_class
loc:@dense_1_2/Softmax*'
_output_shapes
:€€€€€€€€€
е
<training_2/Adam/gradients/dense_1_2/BiasAdd_grad/BiasAddGradBiasAddGrad6training_2/Adam/gradients/dense_1_2/Softmax_grad/mul_1*
T0*$
_class
loc:@dense_1_2/BiasAdd*
data_formatNHWC*
_output_shapes
:
Ц
6training_2/Adam/gradients/dense_1_2/MatMul_grad/MatMulMatMul6training_2/Adam/gradients/dense_1_2/Softmax_grad/mul_1dense_1_2/MatMul/ReadVariableOp*
T0*#
_class
loc:@dense_1_2/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b(
€
8training_2/Adam/gradients/dense_1_2/MatMul_grad/MatMul_1MatMuldense_3/Sigmoid6training_2/Adam/gradients/dense_1_2/Softmax_grad/mul_1*
transpose_b( *
T0*#
_class
loc:@dense_1_2/MatMul*
transpose_a(*
_output_shapes

:

и
:training_2/Adam/gradients/dense_3/Sigmoid_grad/SigmoidGradSigmoidGraddense_3/Sigmoid6training_2/Adam/gradients/dense_1_2/MatMul_grad/MatMul*
T0*"
_class
loc:@dense_3/Sigmoid*'
_output_shapes
:€€€€€€€€€

е
:training_2/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad:training_2/Adam/gradients/dense_3/Sigmoid_grad/SigmoidGrad*
T0*"
_class
loc:@dense_3/BiasAdd*
data_formatNHWC*
_output_shapes
:

Ф
4training_2/Adam/gradients/dense_3/MatMul_grad/MatMulMatMul:training_2/Adam/gradients/dense_3/Sigmoid_grad/SigmoidGraddense_3/MatMul/ReadVariableOp*!
_class
loc:@dense_3/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b(*
T0
э
6training_2/Adam/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_input_1:training_2/Adam/gradients/dense_3/Sigmoid_grad/SigmoidGrad*
T0*!
_class
loc:@dense_3/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( 
W
training_2/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
q
#training_2/Adam/AssignAddVariableOpAssignAddVariableOpAdam_2/iterationstraining_2/Adam/Const*
dtype0	
О
training_2/Adam/ReadVariableOpReadVariableOpAdam_2/iterations$^training_2/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
m
#training_2/Adam/Cast/ReadVariableOpReadVariableOpAdam_2/iterations*
dtype0	*
_output_shapes
: 
q
training_2/Adam/CastCast#training_2/Adam/Cast/ReadVariableOp*

SrcT0	*

DstT0*
_output_shapes
: 
Z
training_2/Adam/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
h
training_2/Adam/addAddtraining_2/Adam/Casttraining_2/Adam/add/y*
_output_shapes
: *
T0
h
"training_2/Adam/Pow/ReadVariableOpReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
t
training_2/Adam/PowPow"training_2/Adam/Pow/ReadVariableOptraining_2/Adam/add*
T0*
_output_shapes
: 
Z
training_2/Adam/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
g
training_2/Adam/subSubtraining_2/Adam/sub/xtraining_2/Adam/Pow*
T0*
_output_shapes
: 
\
training_2/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_2Const*
valueB
 *  А*
dtype0*
_output_shapes
: 

%training_2/Adam/clip_by_value/MinimumMinimumtraining_2/Adam/subtraining_2/Adam/Const_2*
_output_shapes
: *
T0
Й
training_2/Adam/clip_by_valueMaximum%training_2/Adam/clip_by_value/Minimumtraining_2/Adam/Const_1*
T0*
_output_shapes
: 
\
training_2/Adam/SqrtSqrttraining_2/Adam/clip_by_value*
T0*
_output_shapes
: 
j
$training_2/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_2/beta_1*
_output_shapes
: *
dtype0
x
training_2/Adam/Pow_1Pow$training_2/Adam/Pow_1/ReadVariableOptraining_2/Adam/add*
_output_shapes
: *
T0
\
training_2/Adam/sub_1/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
m
training_2/Adam/sub_1Subtraining_2/Adam/sub_1/xtraining_2/Adam/Pow_1*
T0*
_output_shapes
: 
p
training_2/Adam/truedivRealDivtraining_2/Adam/Sqrttraining_2/Adam/sub_1*
T0*
_output_shapes
: 
b
 training_2/Adam/ReadVariableOp_1ReadVariableOp	Adam_2/lr*
dtype0*
_output_shapes
: 
v
training_2/Adam/mulMul training_2/Adam/ReadVariableOp_1training_2/Adam/truediv*
T0*
_output_shapes
: 
j
training_2/Adam/zerosConst*
valueB
*    *
dtype0*
_output_shapes

:

Э
training_2/Adam/VariableVarHandleOp*)
shared_nametraining_2/Adam/Variable*
dtype0*
	container *
_output_shapes
: *
shape
:

Б
9training_2/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable*
_output_shapes
: 
Ю
training_2/Adam/Variable/AssignAssignVariableOptraining_2/Adam/Variabletraining_2/Adam/zeros*+
_class!
loc:@training_2/Adam/Variable*
dtype0
≤
,training_2/Adam/Variable/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable*+
_class!
loc:@training_2/Adam/Variable*
dtype0*
_output_shapes

:

d
training_2/Adam/zeros_1Const*
valueB
*    *
dtype0*
_output_shapes
:

Э
training_2/Adam/Variable_1VarHandleOp*
shape:
*+
shared_nametraining_2/Adam/Variable_1*
dtype0*
	container *
_output_shapes
: 
Е
;training_2/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_1*
_output_shapes
: 
¶
!training_2/Adam/Variable_1/AssignAssignVariableOptraining_2/Adam/Variable_1training_2/Adam/zeros_1*-
_class#
!loc:@training_2/Adam/Variable_1*
dtype0
і
.training_2/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_1*-
_class#
!loc:@training_2/Adam/Variable_1*
dtype0*
_output_shapes
:

l
training_2/Adam/zeros_2Const*
valueB
*    *
dtype0*
_output_shapes

:

°
training_2/Adam/Variable_2VarHandleOp*
	container *
_output_shapes
: *
shape
:
*+
shared_nametraining_2/Adam/Variable_2*
dtype0
Е
;training_2/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_2*
_output_shapes
: 
¶
!training_2/Adam/Variable_2/AssignAssignVariableOptraining_2/Adam/Variable_2training_2/Adam/zeros_2*
dtype0*-
_class#
!loc:@training_2/Adam/Variable_2
Є
.training_2/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_2*-
_class#
!loc:@training_2/Adam/Variable_2*
dtype0*
_output_shapes

:

d
training_2/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:
Э
training_2/Adam/Variable_3VarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape:*+
shared_nametraining_2/Adam/Variable_3
Е
;training_2/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_3*
_output_shapes
: 
¶
!training_2/Adam/Variable_3/AssignAssignVariableOptraining_2/Adam/Variable_3training_2/Adam/zeros_3*-
_class#
!loc:@training_2/Adam/Variable_3*
dtype0
і
.training_2/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_3*-
_class#
!loc:@training_2/Adam/Variable_3*
dtype0*
_output_shapes
:
l
training_2/Adam/zeros_4Const*
valueB
*    *
dtype0*
_output_shapes

:

°
training_2/Adam/Variable_4VarHandleOp*+
shared_nametraining_2/Adam/Variable_4*
dtype0*
	container *
_output_shapes
: *
shape
:

Е
;training_2/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_4*
_output_shapes
: 
¶
!training_2/Adam/Variable_4/AssignAssignVariableOptraining_2/Adam/Variable_4training_2/Adam/zeros_4*-
_class#
!loc:@training_2/Adam/Variable_4*
dtype0
Є
.training_2/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_4*-
_class#
!loc:@training_2/Adam/Variable_4*
dtype0*
_output_shapes

:

d
training_2/Adam/zeros_5Const*
_output_shapes
:
*
valueB
*    *
dtype0
Э
training_2/Adam/Variable_5VarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape:
*+
shared_nametraining_2/Adam/Variable_5
Е
;training_2/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_5*
_output_shapes
: 
¶
!training_2/Adam/Variable_5/AssignAssignVariableOptraining_2/Adam/Variable_5training_2/Adam/zeros_5*-
_class#
!loc:@training_2/Adam/Variable_5*
dtype0
і
.training_2/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_5*
dtype0*
_output_shapes
:
*-
_class#
!loc:@training_2/Adam/Variable_5
l
training_2/Adam/zeros_6Const*
dtype0*
_output_shapes

:
*
valueB
*    
°
training_2/Adam/Variable_6VarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape
:
*+
shared_nametraining_2/Adam/Variable_6
Е
;training_2/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_6*
_output_shapes
: 
¶
!training_2/Adam/Variable_6/AssignAssignVariableOptraining_2/Adam/Variable_6training_2/Adam/zeros_6*-
_class#
!loc:@training_2/Adam/Variable_6*
dtype0
Є
.training_2/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_6*-
_class#
!loc:@training_2/Adam/Variable_6*
dtype0*
_output_shapes

:

d
training_2/Adam/zeros_7Const*
_output_shapes
:*
valueB*    *
dtype0
Э
training_2/Adam/Variable_7VarHandleOp*
shape:*+
shared_nametraining_2/Adam/Variable_7*
dtype0*
	container *
_output_shapes
: 
Е
;training_2/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_7*
_output_shapes
: 
¶
!training_2/Adam/Variable_7/AssignAssignVariableOptraining_2/Adam/Variable_7training_2/Adam/zeros_7*-
_class#
!loc:@training_2/Adam/Variable_7*
dtype0
і
.training_2/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_7*-
_class#
!loc:@training_2/Adam/Variable_7*
dtype0*
_output_shapes
:
q
'training_2/Adam/zeros_8/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training_2/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ю
training_2/Adam/zeros_8Fill'training_2/Adam/zeros_8/shape_as_tensortraining_2/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes
:
Э
training_2/Adam/Variable_8VarHandleOp*
dtype0*
	container *
_output_shapes
: *
shape:*+
shared_nametraining_2/Adam/Variable_8
Е
;training_2/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_8*
_output_shapes
: 
¶
!training_2/Adam/Variable_8/AssignAssignVariableOptraining_2/Adam/Variable_8training_2/Adam/zeros_8*-
_class#
!loc:@training_2/Adam/Variable_8*
dtype0
і
.training_2/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_8*-
_class#
!loc:@training_2/Adam/Variable_8*
dtype0*
_output_shapes
:
q
'training_2/Adam/zeros_9/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training_2/Adam/zeros_9/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ю
training_2/Adam/zeros_9Fill'training_2/Adam/zeros_9/shape_as_tensortraining_2/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes
:
Э
training_2/Adam/Variable_9VarHandleOp*+
shared_nametraining_2/Adam/Variable_9*
dtype0*
	container *
_output_shapes
: *
shape:
Е
;training_2/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_9*
_output_shapes
: 
¶
!training_2/Adam/Variable_9/AssignAssignVariableOptraining_2/Adam/Variable_9training_2/Adam/zeros_9*-
_class#
!loc:@training_2/Adam/Variable_9*
dtype0
і
.training_2/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_9*-
_class#
!loc:@training_2/Adam/Variable_9*
dtype0*
_output_shapes
:
r
(training_2/Adam/zeros_10/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
c
training_2/Adam/zeros_10/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
°
training_2/Adam/zeros_10Fill(training_2/Adam/zeros_10/shape_as_tensortraining_2/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes
:
Я
training_2/Adam/Variable_10VarHandleOp*,
shared_nametraining_2/Adam/Variable_10*
dtype0*
	container *
_output_shapes
: *
shape:
З
<training_2/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_10*
_output_shapes
: 
™
"training_2/Adam/Variable_10/AssignAssignVariableOptraining_2/Adam/Variable_10training_2/Adam/zeros_10*.
_class$
" loc:@training_2/Adam/Variable_10*
dtype0
Ј
/training_2/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_10*.
_class$
" loc:@training_2/Adam/Variable_10*
dtype0*
_output_shapes
:
r
(training_2/Adam/zeros_11/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
c
training_2/Adam/zeros_11/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
°
training_2/Adam/zeros_11Fill(training_2/Adam/zeros_11/shape_as_tensortraining_2/Adam/zeros_11/Const*
T0*

index_type0*
_output_shapes
:
Я
training_2/Adam/Variable_11VarHandleOp*
shape:*,
shared_nametraining_2/Adam/Variable_11*
dtype0*
	container *
_output_shapes
: 
З
<training_2/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/Variable_11*
_output_shapes
: 
™
"training_2/Adam/Variable_11/AssignAssignVariableOptraining_2/Adam/Variable_11training_2/Adam/zeros_11*.
_class$
" loc:@training_2/Adam/Variable_11*
dtype0
Ј
/training_2/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining_2/Adam/Variable_11*.
_class$
" loc:@training_2/Adam/Variable_11*
dtype0*
_output_shapes
:
f
 training_2/Adam/ReadVariableOp_2ReadVariableOpAdam_2/beta_1*
_output_shapes
: *
dtype0
}
$training_2/Adam/mul_1/ReadVariableOpReadVariableOptraining_2/Adam/Variable*
dtype0*
_output_shapes

:

Н
training_2/Adam/mul_1Mul training_2/Adam/ReadVariableOp_2$training_2/Adam/mul_1/ReadVariableOp*
T0*
_output_shapes

:

f
 training_2/Adam/ReadVariableOp_3ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_2/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
x
training_2/Adam/sub_2Subtraining_2/Adam/sub_2/x training_2/Adam/ReadVariableOp_3*
_output_shapes
: *
T0
Ф
training_2/Adam/mul_2Multraining_2/Adam/sub_26training_2/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

s
training_2/Adam/add_1Addtraining_2/Adam/mul_1training_2/Adam/mul_2*
T0*
_output_shapes

:

f
 training_2/Adam/ReadVariableOp_4ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 

$training_2/Adam/mul_3/ReadVariableOpReadVariableOptraining_2/Adam/Variable_4*
dtype0*
_output_shapes

:

Н
training_2/Adam/mul_3Mul training_2/Adam/ReadVariableOp_4$training_2/Adam/mul_3/ReadVariableOp*
_output_shapes

:
*
T0
f
 training_2/Adam/ReadVariableOp_5ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_3/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
x
training_2/Adam/sub_3Subtraining_2/Adam/sub_3/x training_2/Adam/ReadVariableOp_5*
_output_shapes
: *
T0
Б
training_2/Adam/SquareSquare6training_2/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
t
training_2/Adam/mul_4Multraining_2/Adam/sub_3training_2/Adam/Square*
T0*
_output_shapes

:

s
training_2/Adam/add_2Addtraining_2/Adam/mul_3training_2/Adam/mul_4*
T0*
_output_shapes

:

q
training_2/Adam/mul_5Multraining_2/Adam/multraining_2/Adam/add_1*
T0*
_output_shapes

:

\
training_2/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_4Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Л
'training_2/Adam/clip_by_value_1/MinimumMinimumtraining_2/Adam/add_2training_2/Adam/Const_4*
T0*
_output_shapes

:

Х
training_2/Adam/clip_by_value_1Maximum'training_2/Adam/clip_by_value_1/Minimumtraining_2/Adam/Const_3*
T0*
_output_shapes

:

h
training_2/Adam/Sqrt_1Sqrttraining_2/Adam/clip_by_value_1*
_output_shapes

:
*
T0
\
training_2/Adam/add_3/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
v
training_2/Adam/add_3Addtraining_2/Adam/Sqrt_1training_2/Adam/add_3/y*
T0*
_output_shapes

:

{
training_2/Adam/truediv_1RealDivtraining_2/Adam/mul_5training_2/Adam/add_3*
T0*
_output_shapes

:

o
 training_2/Adam/ReadVariableOp_6ReadVariableOpdense_3/kernel*
dtype0*
_output_shapes

:

В
training_2/Adam/sub_4Sub training_2/Adam/ReadVariableOp_6training_2/Adam/truediv_1*
T0*
_output_shapes

:

r
 training_2/Adam/AssignVariableOpAssignVariableOptraining_2/Adam/Variabletraining_2/Adam/add_1*
dtype0
Ь
 training_2/Adam/ReadVariableOp_7ReadVariableOptraining_2/Adam/Variable!^training_2/Adam/AssignVariableOp*
dtype0*
_output_shapes

:

v
"training_2/Adam/AssignVariableOp_1AssignVariableOptraining_2/Adam/Variable_4training_2/Adam/add_2*
dtype0
†
 training_2/Adam/ReadVariableOp_8ReadVariableOptraining_2/Adam/Variable_4#^training_2/Adam/AssignVariableOp_1*
dtype0*
_output_shapes

:

j
"training_2/Adam/AssignVariableOp_2AssignVariableOpdense_3/kerneltraining_2/Adam/sub_4*
dtype0
Ф
 training_2/Adam/ReadVariableOp_9ReadVariableOpdense_3/kernel#^training_2/Adam/AssignVariableOp_2*
_output_shapes

:
*
dtype0
g
!training_2/Adam/ReadVariableOp_10ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
{
$training_2/Adam/mul_6/ReadVariableOpReadVariableOptraining_2/Adam/Variable_1*
dtype0*
_output_shapes
:

К
training_2/Adam/mul_6Mul!training_2/Adam/ReadVariableOp_10$training_2/Adam/mul_6/ReadVariableOp*
_output_shapes
:
*
T0
g
!training_2/Adam/ReadVariableOp_11ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_5/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_5Subtraining_2/Adam/sub_5/x!training_2/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
Ф
training_2/Adam/mul_7Multraining_2/Adam/sub_5:training_2/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

o
training_2/Adam/add_4Addtraining_2/Adam/mul_6training_2/Adam/mul_7*
T0*
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_12ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
{
$training_2/Adam/mul_8/ReadVariableOpReadVariableOptraining_2/Adam/Variable_5*
dtype0*
_output_shapes
:

К
training_2/Adam/mul_8Mul!training_2/Adam/ReadVariableOp_12$training_2/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_13ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_6/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_6Subtraining_2/Adam/sub_6/x!training_2/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
Г
training_2/Adam/Square_1Square:training_2/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

r
training_2/Adam/mul_9Multraining_2/Adam/sub_6training_2/Adam/Square_1*
T0*
_output_shapes
:

o
training_2/Adam/add_5Addtraining_2/Adam/mul_8training_2/Adam/mul_9*
_output_shapes
:
*
T0
n
training_2/Adam/mul_10Multraining_2/Adam/multraining_2/Adam/add_4*
_output_shapes
:
*
T0
\
training_2/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_6Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
З
'training_2/Adam/clip_by_value_2/MinimumMinimumtraining_2/Adam/add_5training_2/Adam/Const_6*
_output_shapes
:
*
T0
С
training_2/Adam/clip_by_value_2Maximum'training_2/Adam/clip_by_value_2/Minimumtraining_2/Adam/Const_5*
T0*
_output_shapes
:

d
training_2/Adam/Sqrt_2Sqrttraining_2/Adam/clip_by_value_2*
T0*
_output_shapes
:

\
training_2/Adam/add_6/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
r
training_2/Adam/add_6Addtraining_2/Adam/Sqrt_2training_2/Adam/add_6/y*
_output_shapes
:
*
T0
x
training_2/Adam/truediv_2RealDivtraining_2/Adam/mul_10training_2/Adam/add_6*
_output_shapes
:
*
T0
j
!training_2/Adam/ReadVariableOp_14ReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:


training_2/Adam/sub_7Sub!training_2/Adam/ReadVariableOp_14training_2/Adam/truediv_2*
T0*
_output_shapes
:

v
"training_2/Adam/AssignVariableOp_3AssignVariableOptraining_2/Adam/Variable_1training_2/Adam/add_4*
dtype0
Э
!training_2/Adam/ReadVariableOp_15ReadVariableOptraining_2/Adam/Variable_1#^training_2/Adam/AssignVariableOp_3*
dtype0*
_output_shapes
:

v
"training_2/Adam/AssignVariableOp_4AssignVariableOptraining_2/Adam/Variable_5training_2/Adam/add_5*
dtype0
Э
!training_2/Adam/ReadVariableOp_16ReadVariableOptraining_2/Adam/Variable_5#^training_2/Adam/AssignVariableOp_4*
dtype0*
_output_shapes
:

h
"training_2/Adam/AssignVariableOp_5AssignVariableOpdense_3/biastraining_2/Adam/sub_7*
dtype0
П
!training_2/Adam/ReadVariableOp_17ReadVariableOpdense_3/bias#^training_2/Adam/AssignVariableOp_5*
dtype0*
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_18ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
А
%training_2/Adam/mul_11/ReadVariableOpReadVariableOptraining_2/Adam/Variable_2*
dtype0*
_output_shapes

:

Р
training_2/Adam/mul_11Mul!training_2/Adam/ReadVariableOp_18%training_2/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_19ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_8/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_8Subtraining_2/Adam/sub_8/x!training_2/Adam/ReadVariableOp_19*
_output_shapes
: *
T0
Ч
training_2/Adam/mul_12Multraining_2/Adam/sub_88training_2/Adam/gradients/dense_1_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

u
training_2/Adam/add_7Addtraining_2/Adam/mul_11training_2/Adam/mul_12*
T0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_20ReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
А
%training_2/Adam/mul_13/ReadVariableOpReadVariableOptraining_2/Adam/Variable_6*
dtype0*
_output_shapes

:

Р
training_2/Adam/mul_13Mul!training_2/Adam/ReadVariableOp_20%training_2/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_21ReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
\
training_2/Adam/sub_9/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
y
training_2/Adam/sub_9Subtraining_2/Adam/sub_9/x!training_2/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 
Е
training_2/Adam/Square_2Square8training_2/Adam/gradients/dense_1_2/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
w
training_2/Adam/mul_14Multraining_2/Adam/sub_9training_2/Adam/Square_2*
T0*
_output_shapes

:

u
training_2/Adam/add_8Addtraining_2/Adam/mul_13training_2/Adam/mul_14*
T0*
_output_shapes

:

r
training_2/Adam/mul_15Multraining_2/Adam/multraining_2/Adam/add_7*
_output_shapes

:
*
T0
\
training_2/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_8Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Л
'training_2/Adam/clip_by_value_3/MinimumMinimumtraining_2/Adam/add_8training_2/Adam/Const_8*
T0*
_output_shapes

:

Х
training_2/Adam/clip_by_value_3Maximum'training_2/Adam/clip_by_value_3/Minimumtraining_2/Adam/Const_7*
T0*
_output_shapes

:

h
training_2/Adam/Sqrt_3Sqrttraining_2/Adam/clip_by_value_3*
T0*
_output_shapes

:

\
training_2/Adam/add_9/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
v
training_2/Adam/add_9Addtraining_2/Adam/Sqrt_3training_2/Adam/add_9/y*
T0*
_output_shapes

:

|
training_2/Adam/truediv_3RealDivtraining_2/Adam/mul_15training_2/Adam/add_9*
T0*
_output_shapes

:

r
!training_2/Adam/ReadVariableOp_22ReadVariableOpdense_1_2/kernel*
dtype0*
_output_shapes

:

Д
training_2/Adam/sub_10Sub!training_2/Adam/ReadVariableOp_22training_2/Adam/truediv_3*
_output_shapes

:
*
T0
v
"training_2/Adam/AssignVariableOp_6AssignVariableOptraining_2/Adam/Variable_2training_2/Adam/add_7*
dtype0
°
!training_2/Adam/ReadVariableOp_23ReadVariableOptraining_2/Adam/Variable_2#^training_2/Adam/AssignVariableOp_6*
dtype0*
_output_shapes

:

v
"training_2/Adam/AssignVariableOp_7AssignVariableOptraining_2/Adam/Variable_6training_2/Adam/add_8*
dtype0
°
!training_2/Adam/ReadVariableOp_24ReadVariableOptraining_2/Adam/Variable_6#^training_2/Adam/AssignVariableOp_7*
dtype0*
_output_shapes

:

m
"training_2/Adam/AssignVariableOp_8AssignVariableOpdense_1_2/kerneltraining_2/Adam/sub_10*
dtype0
Ч
!training_2/Adam/ReadVariableOp_25ReadVariableOpdense_1_2/kernel#^training_2/Adam/AssignVariableOp_8*
dtype0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_26ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
|
%training_2/Adam/mul_16/ReadVariableOpReadVariableOptraining_2/Adam/Variable_3*
dtype0*
_output_shapes
:
М
training_2/Adam/mul_16Mul!training_2/Adam/ReadVariableOp_26%training_2/Adam/mul_16/ReadVariableOp*
_output_shapes
:*
T0
g
!training_2/Adam/ReadVariableOp_27ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_11/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
{
training_2/Adam/sub_11Subtraining_2/Adam/sub_11/x!training_2/Adam/ReadVariableOp_27*
_output_shapes
: *
T0
Ш
training_2/Adam/mul_17Multraining_2/Adam/sub_11<training_2/Adam/gradients/dense_1_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
r
training_2/Adam/add_10Addtraining_2/Adam/mul_16training_2/Adam/mul_17*
T0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_28ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
|
%training_2/Adam/mul_18/ReadVariableOpReadVariableOptraining_2/Adam/Variable_7*
dtype0*
_output_shapes
:
М
training_2/Adam/mul_18Mul!training_2/Adam/ReadVariableOp_28%training_2/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_29ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_12/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_12Subtraining_2/Adam/sub_12/x!training_2/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 
Е
training_2/Adam/Square_3Square<training_2/Adam/gradients/dense_1_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
t
training_2/Adam/mul_19Multraining_2/Adam/sub_12training_2/Adam/Square_3*
T0*
_output_shapes
:
r
training_2/Adam/add_11Addtraining_2/Adam/mul_18training_2/Adam/mul_19*
_output_shapes
:*
T0
o
training_2/Adam/mul_20Multraining_2/Adam/multraining_2/Adam/add_10*
T0*
_output_shapes
:
\
training_2/Adam/Const_9Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
training_2/Adam/Const_10Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Й
'training_2/Adam/clip_by_value_4/MinimumMinimumtraining_2/Adam/add_11training_2/Adam/Const_10*
_output_shapes
:*
T0
С
training_2/Adam/clip_by_value_4Maximum'training_2/Adam/clip_by_value_4/Minimumtraining_2/Adam/Const_9*
T0*
_output_shapes
:
d
training_2/Adam/Sqrt_4Sqrttraining_2/Adam/clip_by_value_4*
T0*
_output_shapes
:
]
training_2/Adam/add_12/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
t
training_2/Adam/add_12Addtraining_2/Adam/Sqrt_4training_2/Adam/add_12/y*
_output_shapes
:*
T0
y
training_2/Adam/truediv_4RealDivtraining_2/Adam/mul_20training_2/Adam/add_12*
_output_shapes
:*
T0
l
!training_2/Adam/ReadVariableOp_30ReadVariableOpdense_1_2/bias*
dtype0*
_output_shapes
:
А
training_2/Adam/sub_13Sub!training_2/Adam/ReadVariableOp_30training_2/Adam/truediv_4*
_output_shapes
:*
T0
w
"training_2/Adam/AssignVariableOp_9AssignVariableOptraining_2/Adam/Variable_3training_2/Adam/add_10*
dtype0
Э
!training_2/Adam/ReadVariableOp_31ReadVariableOptraining_2/Adam/Variable_3#^training_2/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:
x
#training_2/Adam/AssignVariableOp_10AssignVariableOptraining_2/Adam/Variable_7training_2/Adam/add_11*
dtype0
Ю
!training_2/Adam/ReadVariableOp_32ReadVariableOptraining_2/Adam/Variable_7$^training_2/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:
l
#training_2/Adam/AssignVariableOp_11AssignVariableOpdense_1_2/biastraining_2/Adam/sub_13*
dtype0
Т
!training_2/Adam/ReadVariableOp_33ReadVariableOpdense_1_2/bias$^training_2/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:
Н
training_2/group_depsNoOp^loss_2/mul^metrics_2/acc/Mean^training_2/Adam/ReadVariableOp"^training_2/Adam/ReadVariableOp_15"^training_2/Adam/ReadVariableOp_16"^training_2/Adam/ReadVariableOp_17"^training_2/Adam/ReadVariableOp_23"^training_2/Adam/ReadVariableOp_24"^training_2/Adam/ReadVariableOp_25"^training_2/Adam/ReadVariableOp_31"^training_2/Adam/ReadVariableOp_32"^training_2/Adam/ReadVariableOp_33!^training_2/Adam/ReadVariableOp_7!^training_2/Adam/ReadVariableOp_8!^training_2/Adam/ReadVariableOp_9
V
VarIsInitializedOp_25VarIsInitializedOpAdam_2/iterations*
_output_shapes
: 
N
VarIsInitializedOp_26VarIsInitializedOp	Adam_2/lr*
_output_shapes
: 
R
VarIsInitializedOp_27VarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
R
VarIsInitializedOp_28VarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
Q
VarIsInitializedOp_29VarIsInitializedOpAdam_2/decay*
_output_shapes
: 
]
VarIsInitializedOp_30VarIsInitializedOptraining_2/Adam/Variable*
_output_shapes
: 
_
VarIsInitializedOp_31VarIsInitializedOptraining_2/Adam/Variable_1*
_output_shapes
: 
_
VarIsInitializedOp_32VarIsInitializedOptraining_2/Adam/Variable_2*
_output_shapes
: 
_
VarIsInitializedOp_33VarIsInitializedOptraining_2/Adam/Variable_3*
_output_shapes
: 
_
VarIsInitializedOp_34VarIsInitializedOptraining_2/Adam/Variable_4*
_output_shapes
: 
_
VarIsInitializedOp_35VarIsInitializedOptraining_2/Adam/Variable_5*
_output_shapes
: 
_
VarIsInitializedOp_36VarIsInitializedOptraining_2/Adam/Variable_6*
_output_shapes
: 
_
VarIsInitializedOp_37VarIsInitializedOptraining_2/Adam/Variable_7*
_output_shapes
: 
_
VarIsInitializedOp_38VarIsInitializedOptraining_2/Adam/Variable_8*
_output_shapes
: 
_
VarIsInitializedOp_39VarIsInitializedOptraining_2/Adam/Variable_9*
_output_shapes
: 
`
VarIsInitializedOp_40VarIsInitializedOptraining_2/Adam/Variable_10*
_output_shapes
: 
`
VarIsInitializedOp_41VarIsInitializedOptraining_2/Adam/Variable_11*
_output_shapes
: 
∞
init_5NoOp^Adam_2/beta_1/Assign^Adam_2/beta_2/Assign^Adam_2/decay/Assign^Adam_2/iterations/Assign^Adam_2/lr/Assign ^training_2/Adam/Variable/Assign"^training_2/Adam/Variable_1/Assign#^training_2/Adam/Variable_10/Assign#^training_2/Adam/Variable_11/Assign"^training_2/Adam/Variable_2/Assign"^training_2/Adam/Variable_3/Assign"^training_2/Adam/Variable_4/Assign"^training_2/Adam/Variable_5/Assign"^training_2/Adam/Variable_6/Assign"^training_2/Adam/Variable_7/Assign"^training_2/Adam/Variable_8/Assign"^training_2/Adam/Variable_9/Assign
O
Placeholder_21Placeholder*
dtype0	*
_output_shapes
: *
shape: 
W
AssignVariableOp_21AssignVariableOpAdam_2/iterationsPlaceholder_21*
dtype0	
q
ReadVariableOp_21ReadVariableOpAdam_2/iterations^AssignVariableOp_21*
dtype0	*
_output_shapes
: 
_
Placeholder_22Placeholder*
shape
:
*
dtype0*
_output_shapes

:

^
AssignVariableOp_22AssignVariableOptraining_2/Adam/VariablePlaceholder_22*
dtype0
А
ReadVariableOp_22ReadVariableOptraining_2/Adam/Variable^AssignVariableOp_22*
dtype0*
_output_shapes

:

W
Placeholder_23Placeholder*
_output_shapes
:
*
shape:
*
dtype0
`
AssignVariableOp_23AssignVariableOptraining_2/Adam/Variable_1Placeholder_23*
dtype0
~
ReadVariableOp_23ReadVariableOptraining_2/Adam/Variable_1^AssignVariableOp_23*
dtype0*
_output_shapes
:

_
Placeholder_24Placeholder*
shape
:
*
dtype0*
_output_shapes

:

`
AssignVariableOp_24AssignVariableOptraining_2/Adam/Variable_2Placeholder_24*
dtype0
В
ReadVariableOp_24ReadVariableOptraining_2/Adam/Variable_2^AssignVariableOp_24*
dtype0*
_output_shapes

:

W
Placeholder_25Placeholder*
dtype0*
_output_shapes
:*
shape:
`
AssignVariableOp_25AssignVariableOptraining_2/Adam/Variable_3Placeholder_25*
dtype0
~
ReadVariableOp_25ReadVariableOptraining_2/Adam/Variable_3^AssignVariableOp_25*
_output_shapes
:*
dtype0
_
Placeholder_26Placeholder*
dtype0*
_output_shapes

:
*
shape
:

`
AssignVariableOp_26AssignVariableOptraining_2/Adam/Variable_4Placeholder_26*
dtype0
В
ReadVariableOp_26ReadVariableOptraining_2/Adam/Variable_4^AssignVariableOp_26*
dtype0*
_output_shapes

:

W
Placeholder_27Placeholder*
shape:
*
dtype0*
_output_shapes
:

`
AssignVariableOp_27AssignVariableOptraining_2/Adam/Variable_5Placeholder_27*
dtype0
~
ReadVariableOp_27ReadVariableOptraining_2/Adam/Variable_5^AssignVariableOp_27*
dtype0*
_output_shapes
:

_
Placeholder_28Placeholder*
dtype0*
_output_shapes

:
*
shape
:

`
AssignVariableOp_28AssignVariableOptraining_2/Adam/Variable_6Placeholder_28*
dtype0
В
ReadVariableOp_28ReadVariableOptraining_2/Adam/Variable_6^AssignVariableOp_28*
dtype0*
_output_shapes

:

W
Placeholder_29Placeholder*
shape:*
dtype0*
_output_shapes
:
`
AssignVariableOp_29AssignVariableOptraining_2/Adam/Variable_7Placeholder_29*
dtype0
~
ReadVariableOp_29ReadVariableOptraining_2/Adam/Variable_7^AssignVariableOp_29*
dtype0*
_output_shapes
:
W
Placeholder_30Placeholder*
shape:*
dtype0*
_output_shapes
:
`
AssignVariableOp_30AssignVariableOptraining_2/Adam/Variable_8Placeholder_30*
dtype0
~
ReadVariableOp_30ReadVariableOptraining_2/Adam/Variable_8^AssignVariableOp_30*
dtype0*
_output_shapes
:
W
Placeholder_31Placeholder*
dtype0*
_output_shapes
:*
shape:
`
AssignVariableOp_31AssignVariableOptraining_2/Adam/Variable_9Placeholder_31*
dtype0
~
ReadVariableOp_31ReadVariableOptraining_2/Adam/Variable_9^AssignVariableOp_31*
dtype0*
_output_shapes
:
W
Placeholder_32Placeholder*
dtype0*
_output_shapes
:*
shape:
a
AssignVariableOp_32AssignVariableOptraining_2/Adam/Variable_10Placeholder_32*
dtype0

ReadVariableOp_32ReadVariableOptraining_2/Adam/Variable_10^AssignVariableOp_32*
dtype0*
_output_shapes
:
W
Placeholder_33Placeholder*
shape:*
dtype0*
_output_shapes
:
a
AssignVariableOp_33AssignVariableOptraining_2/Adam/Variable_11Placeholder_33*
dtype0

ReadVariableOp_33ReadVariableOptraining_2/Adam/Variable_11^AssignVariableOp_33*
dtype0*
_output_shapes
:
к
init_6NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/lr/Assign^Adam_2/beta_1/Assign^Adam_2/beta_2/Assign^Adam_2/decay/Assign^Adam_2/iterations/Assign^Adam_2/lr/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_1_1/bias/Assign^dense_1_1/kernel/Assign^dense_1_2/bias/Assign^dense_1_2/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign ^training_1/Adam/Variable/Assign"^training_1/Adam/Variable_1/Assign#^training_1/Adam/Variable_10/Assign#^training_1/Adam/Variable_11/Assign"^training_1/Adam/Variable_2/Assign"^training_1/Adam/Variable_3/Assign"^training_1/Adam/Variable_4/Assign"^training_1/Adam/Variable_5/Assign"^training_1/Adam/Variable_6/Assign"^training_1/Adam/Variable_7/Assign"^training_1/Adam/Variable_8/Assign"^training_1/Adam/Variable_9/Assign ^training_2/Adam/Variable/Assign"^training_2/Adam/Variable_1/Assign#^training_2/Adam/Variable_10/Assign#^training_2/Adam/Variable_11/Assign"^training_2/Adam/Variable_2/Assign"^training_2/Adam/Variable_3/Assign"^training_2/Adam/Variable_4/Assign"^training_2/Adam/Variable_5/Assign"^training_2/Adam/Variable_6/Assign"^training_2/Adam/Variable_7/Assign"^training_2/Adam/Variable_8/Assign"^training_2/Adam/Variable_9/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_c56cbf6ae150446bb4de70fcb453da95/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
∆
save/SaveV2/tensor_namesConst*щ

valueп
Bм
?BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBAdam_1/beta_1BAdam_1/beta_2BAdam_1/decayBAdam_1/iterationsB	Adam_1/lrBAdam_2/beta_1BAdam_2/beta_2BAdam_2/decayBAdam_2/iterationsB	Adam_2/lrB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_1_1/biasBdense_1_1/kernelBdense_1_2/biasBdense_1_2/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9Btraining_1/Adam/VariableBtraining_1/Adam/Variable_1Btraining_1/Adam/Variable_10Btraining_1/Adam/Variable_11Btraining_1/Adam/Variable_2Btraining_1/Adam/Variable_3Btraining_1/Adam/Variable_4Btraining_1/Adam/Variable_5Btraining_1/Adam/Variable_6Btraining_1/Adam/Variable_7Btraining_1/Adam/Variable_8Btraining_1/Adam/Variable_9Btraining_2/Adam/VariableBtraining_2/Adam/Variable_1Btraining_2/Adam/Variable_10Btraining_2/Adam/Variable_11Btraining_2/Adam/Variable_2Btraining_2/Adam/Variable_3Btraining_2/Adam/Variable_4Btraining_2/Adam/Variable_5Btraining_2/Adam/Variable_6Btraining_2/Adam/Variable_7Btraining_2/Adam/Variable_8Btraining_2/Adam/Variable_9*
dtype0*
_output_shapes
:?
д
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:?*У
valueЙBЖ?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ё
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOpAdam_1/beta_1Adam_1/beta_2Adam_1/decayAdam_1/iterations	Adam_1/lr!Adam_2/beta_1/Read/ReadVariableOp!Adam_2/beta_2/Read/ReadVariableOp Adam_2/decay/Read/ReadVariableOp%Adam_2/iterations/Read/ReadVariableOpAdam_2/lr/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOpdense_1_1/biasdense_1_1/kernel"dense_1_2/bias/Read/ReadVariableOp$dense_1_2/kernel/Read/ReadVariableOpdense_2/biasdense_2/kernel dense_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp*training/Adam/Variable/Read/ReadVariableOp,training/Adam/Variable_1/Read/ReadVariableOp-training/Adam/Variable_10/Read/ReadVariableOp-training/Adam/Variable_11/Read/ReadVariableOp,training/Adam/Variable_2/Read/ReadVariableOp,training/Adam/Variable_3/Read/ReadVariableOp,training/Adam/Variable_4/Read/ReadVariableOp,training/Adam/Variable_5/Read/ReadVariableOp,training/Adam/Variable_6/Read/ReadVariableOp,training/Adam/Variable_7/Read/ReadVariableOp,training/Adam/Variable_8/Read/ReadVariableOp,training/Adam/Variable_9/Read/ReadVariableOptraining_1/Adam/Variabletraining_1/Adam/Variable_1training_1/Adam/Variable_10training_1/Adam/Variable_11training_1/Adam/Variable_2training_1/Adam/Variable_3training_1/Adam/Variable_4training_1/Adam/Variable_5training_1/Adam/Variable_6training_1/Adam/Variable_7training_1/Adam/Variable_8training_1/Adam/Variable_9,training_2/Adam/Variable/Read/ReadVariableOp.training_2/Adam/Variable_1/Read/ReadVariableOp/training_2/Adam/Variable_10/Read/ReadVariableOp/training_2/Adam/Variable_11/Read/ReadVariableOp.training_2/Adam/Variable_2/Read/ReadVariableOp.training_2/Adam/Variable_3/Read/ReadVariableOp.training_2/Adam/Variable_4/Read/ReadVariableOp.training_2/Adam/Variable_5/Read/ReadVariableOp.training_2/Adam/Variable_6/Read/ReadVariableOp.training_2/Adam/Variable_7/Read/ReadVariableOp.training_2/Adam/Variable_8/Read/ReadVariableOp.training_2/Adam/Variable_9/Read/ReadVariableOp*M
dtypesC
A2?			
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
…
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:?*щ

valueп
Bм
?BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBAdam_1/beta_1BAdam_1/beta_2BAdam_1/decayBAdam_1/iterationsB	Adam_1/lrBAdam_2/beta_1BAdam_2/beta_2BAdam_2/decayBAdam_2/iterationsB	Adam_2/lrB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_1_1/biasBdense_1_1/kernelBdense_1_2/biasBdense_1_2/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9Btraining_1/Adam/VariableBtraining_1/Adam/Variable_1Btraining_1/Adam/Variable_10Btraining_1/Adam/Variable_11Btraining_1/Adam/Variable_2Btraining_1/Adam/Variable_3Btraining_1/Adam/Variable_4Btraining_1/Adam/Variable_5Btraining_1/Adam/Variable_6Btraining_1/Adam/Variable_7Btraining_1/Adam/Variable_8Btraining_1/Adam/Variable_9Btraining_2/Adam/VariableBtraining_2/Adam/Variable_1Btraining_2/Adam/Variable_10Btraining_2/Adam/Variable_11Btraining_2/Adam/Variable_2Btraining_2/Adam/Variable_3Btraining_2/Adam/Variable_4Btraining_2/Adam/Variable_5Btraining_2/Adam/Variable_6Btraining_2/Adam/Variable_7Btraining_2/Adam/Variable_8Btraining_2/Adam/Variable_9
з
save/RestoreV2/shape_and_slicesConst*У
valueЙBЖ?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:?
…
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*M
dtypesC
A2?			*Т
_output_shapes€
ь:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
_output_shapes
:*
T0
R
save/AssignVariableOp_4AssignVariableOpAdam/lrsave/Identity_5*
dtype0
Ґ
save/AssignAssignAdam_1/beta_1save/RestoreV2:5*
T0* 
_class
loc:@Adam_1/beta_1*
validate_shape(*
_output_shapes
: *
use_locking(
§
save/Assign_1AssignAdam_1/beta_2save/RestoreV2:6* 
_class
loc:@Adam_1/beta_2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ґ
save/Assign_2AssignAdam_1/decaysave/RestoreV2:7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam_1/decay
ђ
save/Assign_3AssignAdam_1/iterationssave/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0	*$
_class
loc:@Adam_1/iterations*
validate_shape(
Ь
save/Assign_4Assign	Adam_1/lrsave/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Adam_1/lr*
validate_shape(*
_output_shapes
: 
Q
save/Identity_6Identitysave/RestoreV2:10*
T0*
_output_shapes
:
X
save/AssignVariableOp_5AssignVariableOpAdam_2/beta_1save/Identity_6*
dtype0
Q
save/Identity_7Identitysave/RestoreV2:11*
T0*
_output_shapes
:
X
save/AssignVariableOp_6AssignVariableOpAdam_2/beta_2save/Identity_7*
dtype0
Q
save/Identity_8Identitysave/RestoreV2:12*
T0*
_output_shapes
:
W
save/AssignVariableOp_7AssignVariableOpAdam_2/decaysave/Identity_8*
dtype0
Q
save/Identity_9Identitysave/RestoreV2:13*
_output_shapes
:*
T0	
\
save/AssignVariableOp_8AssignVariableOpAdam_2/iterationssave/Identity_9*
dtype0	
R
save/Identity_10Identitysave/RestoreV2:14*
_output_shapes
:*
T0
U
save/AssignVariableOp_9AssignVariableOp	Adam_2/lrsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:15*
_output_shapes
:*
T0
W
save/AssignVariableOp_10AssignVariableOp
dense/biassave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:16*
T0*
_output_shapes
:
Y
save/AssignVariableOp_11AssignVariableOpdense/kernelsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:17*
T0*
_output_shapes
:
Y
save/AssignVariableOp_12AssignVariableOpdense_1/biassave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:18*
_output_shapes
:*
T0
[
save/AssignVariableOp_13AssignVariableOpdense_1/kernelsave/Identity_14*
dtype0
Ђ
save/Assign_5Assigndense_1_1/biassave/RestoreV2:19*!
_class
loc:@dense_1_1/bias*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0
≥
save/Assign_6Assigndense_1_1/kernelsave/RestoreV2:20*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*#
_class
loc:@dense_1_1/kernel
R
save/Identity_15Identitysave/RestoreV2:21*
_output_shapes
:*
T0
[
save/AssignVariableOp_14AssignVariableOpdense_1_2/biassave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:22*
T0*
_output_shapes
:
]
save/AssignVariableOp_15AssignVariableOpdense_1_2/kernelsave/Identity_16*
dtype0
І
save/Assign_7Assigndense_2/biassave/RestoreV2:23*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
ѓ
save/Assign_8Assigndense_2/kernelsave/RestoreV2:24*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0
R
save/Identity_17Identitysave/RestoreV2:25*
T0*
_output_shapes
:
Y
save/AssignVariableOp_16AssignVariableOpdense_3/biassave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:26*
T0*
_output_shapes
:
[
save/AssignVariableOp_17AssignVariableOpdense_3/kernelsave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:27*
_output_shapes
:*
T0
c
save/AssignVariableOp_18AssignVariableOptraining/Adam/Variablesave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:28*
T0*
_output_shapes
:
e
save/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_1save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:29*
T0*
_output_shapes
:
f
save/AssignVariableOp_20AssignVariableOptraining/Adam/Variable_10save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:30*
T0*
_output_shapes
:
f
save/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_11save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:31*
T0*
_output_shapes
:
e
save/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_2save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:32*
T0*
_output_shapes
:
e
save/AssignVariableOp_23AssignVariableOptraining/Adam/Variable_3save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:33*
T0*
_output_shapes
:
e
save/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_4save/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:34*
T0*
_output_shapes
:
e
save/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_5save/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:35*
T0*
_output_shapes
:
e
save/AssignVariableOp_26AssignVariableOptraining/Adam/Variable_6save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:36*
_output_shapes
:*
T0
e
save/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_7save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:37*
_output_shapes
:*
T0
e
save/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_8save/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:38*
T0*
_output_shapes
:
e
save/AssignVariableOp_29AssignVariableOptraining/Adam/Variable_9save/Identity_30*
dtype0
√
save/Assign_9Assigntraining_1/Adam/Variablesave/RestoreV2:39*
use_locking(*
T0*+
_class!
loc:@training_1/Adam/Variable*
validate_shape(*
_output_shapes

:

ƒ
save/Assign_10Assigntraining_1/Adam/Variable_1save/RestoreV2:40*-
_class#
!loc:@training_1/Adam/Variable_1*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0
∆
save/Assign_11Assigntraining_1/Adam/Variable_10save/RestoreV2:41*
use_locking(*
T0*.
_class$
" loc:@training_1/Adam/Variable_10*
validate_shape(*
_output_shapes
:
∆
save/Assign_12Assigntraining_1/Adam/Variable_11save/RestoreV2:42*
use_locking(*
T0*.
_class$
" loc:@training_1/Adam/Variable_11*
validate_shape(*
_output_shapes
:
»
save/Assign_13Assigntraining_1/Adam/Variable_2save/RestoreV2:43*
_output_shapes

:
*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_2*
validate_shape(
ƒ
save/Assign_14Assigntraining_1/Adam/Variable_3save/RestoreV2:44*
T0*-
_class#
!loc:@training_1/Adam/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(
»
save/Assign_15Assigntraining_1/Adam/Variable_4save/RestoreV2:45*
validate_shape(*
_output_shapes

:
*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_4
ƒ
save/Assign_16Assigntraining_1/Adam/Variable_5save/RestoreV2:46*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_5*
validate_shape(*
_output_shapes
:

»
save/Assign_17Assigntraining_1/Adam/Variable_6save/RestoreV2:47*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_6*
validate_shape(*
_output_shapes

:

ƒ
save/Assign_18Assigntraining_1/Adam/Variable_7save/RestoreV2:48*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_7*
validate_shape(*
_output_shapes
:
ƒ
save/Assign_19Assigntraining_1/Adam/Variable_8save/RestoreV2:49*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training_1/Adam/Variable_8*
validate_shape(
ƒ
save/Assign_20Assigntraining_1/Adam/Variable_9save/RestoreV2:50*-
_class#
!loc:@training_1/Adam/Variable_9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
R
save/Identity_31Identitysave/RestoreV2:51*
_output_shapes
:*
T0
e
save/AssignVariableOp_30AssignVariableOptraining_2/Adam/Variablesave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:52*
T0*
_output_shapes
:
g
save/AssignVariableOp_31AssignVariableOptraining_2/Adam/Variable_1save/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:53*
T0*
_output_shapes
:
h
save/AssignVariableOp_32AssignVariableOptraining_2/Adam/Variable_10save/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:54*
_output_shapes
:*
T0
h
save/AssignVariableOp_33AssignVariableOptraining_2/Adam/Variable_11save/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:55*
_output_shapes
:*
T0
g
save/AssignVariableOp_34AssignVariableOptraining_2/Adam/Variable_2save/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:56*
_output_shapes
:*
T0
g
save/AssignVariableOp_35AssignVariableOptraining_2/Adam/Variable_3save/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:57*
_output_shapes
:*
T0
g
save/AssignVariableOp_36AssignVariableOptraining_2/Adam/Variable_4save/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:58*
_output_shapes
:*
T0
g
save/AssignVariableOp_37AssignVariableOptraining_2/Adam/Variable_5save/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:59*
T0*
_output_shapes
:
g
save/AssignVariableOp_38AssignVariableOptraining_2/Adam/Variable_6save/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:60*
_output_shapes
:*
T0
g
save/AssignVariableOp_39AssignVariableOptraining_2/Adam/Variable_7save/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:61*
T0*
_output_shapes
:
g
save/AssignVariableOp_40AssignVariableOptraining_2/Adam/Variable_8save/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:62*
T0*
_output_shapes
:
g
save/AssignVariableOp_41AssignVariableOptraining_2/Adam/Variable_9save/Identity_42*
dtype0
’
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"Ђ?
trainable_variablesУ?Р?
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
Г
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
В
training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08
К
training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08
К
training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08
К
training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08
К
training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08
К
training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08
К
training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08
К
training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08
К
training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08
К
training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08
О
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08
О
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08
d
dense_1_1/kernel:0dense_1_1/kernel/Assigndense_1_1/kernel/read:02dense_1_1/random_uniform:08
U
dense_1_1/bias:0dense_1_1/bias/Assigndense_1_1/bias/read:02dense_1_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
n
Adam_1/iterations:0Adam_1/iterations/AssignAdam_1/iterations/read:02!Adam_1/iterations/initial_value:08
N
Adam_1/lr:0Adam_1/lr/AssignAdam_1/lr/read:02Adam_1/lr/initial_value:08
^
Adam_1/beta_1:0Adam_1/beta_1/AssignAdam_1/beta_1/read:02Adam_1/beta_1/initial_value:08
^
Adam_1/beta_2:0Adam_1/beta_2/AssignAdam_1/beta_2/read:02Adam_1/beta_2/initial_value:08
Z
Adam_1/decay:0Adam_1/decay/AssignAdam_1/decay/read:02Adam_1/decay/initial_value:08
y
training_1/Adam/Variable:0training_1/Adam/Variable/Assigntraining_1/Adam/Variable/read:02training_1/Adam/zeros:08
Б
training_1/Adam/Variable_1:0!training_1/Adam/Variable_1/Assign!training_1/Adam/Variable_1/read:02training_1/Adam/zeros_1:08
Б
training_1/Adam/Variable_2:0!training_1/Adam/Variable_2/Assign!training_1/Adam/Variable_2/read:02training_1/Adam/zeros_2:08
Б
training_1/Adam/Variable_3:0!training_1/Adam/Variable_3/Assign!training_1/Adam/Variable_3/read:02training_1/Adam/zeros_3:08
Б
training_1/Adam/Variable_4:0!training_1/Adam/Variable_4/Assign!training_1/Adam/Variable_4/read:02training_1/Adam/zeros_4:08
Б
training_1/Adam/Variable_5:0!training_1/Adam/Variable_5/Assign!training_1/Adam/Variable_5/read:02training_1/Adam/zeros_5:08
Б
training_1/Adam/Variable_6:0!training_1/Adam/Variable_6/Assign!training_1/Adam/Variable_6/read:02training_1/Adam/zeros_6:08
Б
training_1/Adam/Variable_7:0!training_1/Adam/Variable_7/Assign!training_1/Adam/Variable_7/read:02training_1/Adam/zeros_7:08
Б
training_1/Adam/Variable_8:0!training_1/Adam/Variable_8/Assign!training_1/Adam/Variable_8/read:02training_1/Adam/zeros_8:08
Б
training_1/Adam/Variable_9:0!training_1/Adam/Variable_9/Assign!training_1/Adam/Variable_9/read:02training_1/Adam/zeros_9:08
Е
training_1/Adam/Variable_10:0"training_1/Adam/Variable_10/Assign"training_1/Adam/Variable_10/read:02training_1/Adam/zeros_10:08
Е
training_1/Adam/Variable_11:0"training_1/Adam/Variable_11/Assign"training_1/Adam/Variable_11/read:02training_1/Adam/zeros_11:08
А
dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08
И
dense_1_2/kernel:0dense_1_2/kernel/Assign&dense_1_2/kernel/Read/ReadVariableOp:0(2-dense_1_2/kernel/Initializer/random_uniform:08
w
dense_1_2/bias:0dense_1_2/bias/Assign$dense_1_2/bias/Read/ReadVariableOp:0(2"dense_1_2/bias/Initializer/zeros:08
Л
Adam_2/iterations:0Adam_2/iterations/Assign'Adam_2/iterations/Read/ReadVariableOp:0(2-Adam_2/iterations/Initializer/initial_value:08
k
Adam_2/lr:0Adam_2/lr/AssignAdam_2/lr/Read/ReadVariableOp:0(2%Adam_2/lr/Initializer/initial_value:08
{
Adam_2/beta_1:0Adam_2/beta_1/Assign#Adam_2/beta_1/Read/ReadVariableOp:0(2)Adam_2/beta_1/Initializer/initial_value:08
{
Adam_2/beta_2:0Adam_2/beta_2/Assign#Adam_2/beta_2/Read/ReadVariableOp:0(2)Adam_2/beta_2/Initializer/initial_value:08
w
Adam_2/decay:0Adam_2/decay/Assign"Adam_2/decay/Read/ReadVariableOp:0(2(Adam_2/decay/Initializer/initial_value:08
К
training_2/Adam/Variable:0training_2/Adam/Variable/Assign.training_2/Adam/Variable/Read/ReadVariableOp:0(2training_2/Adam/zeros:08
Т
training_2/Adam/Variable_1:0!training_2/Adam/Variable_1/Assign0training_2/Adam/Variable_1/Read/ReadVariableOp:0(2training_2/Adam/zeros_1:08
Т
training_2/Adam/Variable_2:0!training_2/Adam/Variable_2/Assign0training_2/Adam/Variable_2/Read/ReadVariableOp:0(2training_2/Adam/zeros_2:08
Т
training_2/Adam/Variable_3:0!training_2/Adam/Variable_3/Assign0training_2/Adam/Variable_3/Read/ReadVariableOp:0(2training_2/Adam/zeros_3:08
Т
training_2/Adam/Variable_4:0!training_2/Adam/Variable_4/Assign0training_2/Adam/Variable_4/Read/ReadVariableOp:0(2training_2/Adam/zeros_4:08
Т
training_2/Adam/Variable_5:0!training_2/Adam/Variable_5/Assign0training_2/Adam/Variable_5/Read/ReadVariableOp:0(2training_2/Adam/zeros_5:08
Т
training_2/Adam/Variable_6:0!training_2/Adam/Variable_6/Assign0training_2/Adam/Variable_6/Read/ReadVariableOp:0(2training_2/Adam/zeros_6:08
Т
training_2/Adam/Variable_7:0!training_2/Adam/Variable_7/Assign0training_2/Adam/Variable_7/Read/ReadVariableOp:0(2training_2/Adam/zeros_7:08
Т
training_2/Adam/Variable_8:0!training_2/Adam/Variable_8/Assign0training_2/Adam/Variable_8/Read/ReadVariableOp:0(2training_2/Adam/zeros_8:08
Т
training_2/Adam/Variable_9:0!training_2/Adam/Variable_9/Assign0training_2/Adam/Variable_9/Read/ReadVariableOp:0(2training_2/Adam/zeros_9:08
Ц
training_2/Adam/Variable_10:0"training_2/Adam/Variable_10/Assign1training_2/Adam/Variable_10/Read/ReadVariableOp:0(2training_2/Adam/zeros_10:08
Ц
training_2/Adam/Variable_11:0"training_2/Adam/Variable_11/Assign1training_2/Adam/Variable_11/Read/ReadVariableOp:0(2training_2/Adam/zeros_11:08"°?
	variablesУ?Р?
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
Г
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
В
training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08
К
training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08
К
training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08
К
training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08
К
training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08
К
training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08
К
training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08
К
training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08
К
training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08
К
training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08
О
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08
О
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08
d
dense_1_1/kernel:0dense_1_1/kernel/Assigndense_1_1/kernel/read:02dense_1_1/random_uniform:08
U
dense_1_1/bias:0dense_1_1/bias/Assigndense_1_1/bias/read:02dense_1_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
n
Adam_1/iterations:0Adam_1/iterations/AssignAdam_1/iterations/read:02!Adam_1/iterations/initial_value:08
N
Adam_1/lr:0Adam_1/lr/AssignAdam_1/lr/read:02Adam_1/lr/initial_value:08
^
Adam_1/beta_1:0Adam_1/beta_1/AssignAdam_1/beta_1/read:02Adam_1/beta_1/initial_value:08
^
Adam_1/beta_2:0Adam_1/beta_2/AssignAdam_1/beta_2/read:02Adam_1/beta_2/initial_value:08
Z
Adam_1/decay:0Adam_1/decay/AssignAdam_1/decay/read:02Adam_1/decay/initial_value:08
y
training_1/Adam/Variable:0training_1/Adam/Variable/Assigntraining_1/Adam/Variable/read:02training_1/Adam/zeros:08
Б
training_1/Adam/Variable_1:0!training_1/Adam/Variable_1/Assign!training_1/Adam/Variable_1/read:02training_1/Adam/zeros_1:08
Б
training_1/Adam/Variable_2:0!training_1/Adam/Variable_2/Assign!training_1/Adam/Variable_2/read:02training_1/Adam/zeros_2:08
Б
training_1/Adam/Variable_3:0!training_1/Adam/Variable_3/Assign!training_1/Adam/Variable_3/read:02training_1/Adam/zeros_3:08
Б
training_1/Adam/Variable_4:0!training_1/Adam/Variable_4/Assign!training_1/Adam/Variable_4/read:02training_1/Adam/zeros_4:08
Б
training_1/Adam/Variable_5:0!training_1/Adam/Variable_5/Assign!training_1/Adam/Variable_5/read:02training_1/Adam/zeros_5:08
Б
training_1/Adam/Variable_6:0!training_1/Adam/Variable_6/Assign!training_1/Adam/Variable_6/read:02training_1/Adam/zeros_6:08
Б
training_1/Adam/Variable_7:0!training_1/Adam/Variable_7/Assign!training_1/Adam/Variable_7/read:02training_1/Adam/zeros_7:08
Б
training_1/Adam/Variable_8:0!training_1/Adam/Variable_8/Assign!training_1/Adam/Variable_8/read:02training_1/Adam/zeros_8:08
Б
training_1/Adam/Variable_9:0!training_1/Adam/Variable_9/Assign!training_1/Adam/Variable_9/read:02training_1/Adam/zeros_9:08
Е
training_1/Adam/Variable_10:0"training_1/Adam/Variable_10/Assign"training_1/Adam/Variable_10/read:02training_1/Adam/zeros_10:08
Е
training_1/Adam/Variable_11:0"training_1/Adam/Variable_11/Assign"training_1/Adam/Variable_11/read:02training_1/Adam/zeros_11:08
А
dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08
И
dense_1_2/kernel:0dense_1_2/kernel/Assign&dense_1_2/kernel/Read/ReadVariableOp:0(2-dense_1_2/kernel/Initializer/random_uniform:08
w
dense_1_2/bias:0dense_1_2/bias/Assign$dense_1_2/bias/Read/ReadVariableOp:0(2"dense_1_2/bias/Initializer/zeros:08
Л
Adam_2/iterations:0Adam_2/iterations/Assign'Adam_2/iterations/Read/ReadVariableOp:0(2-Adam_2/iterations/Initializer/initial_value:08
k
Adam_2/lr:0Adam_2/lr/AssignAdam_2/lr/Read/ReadVariableOp:0(2%Adam_2/lr/Initializer/initial_value:08
{
Adam_2/beta_1:0Adam_2/beta_1/Assign#Adam_2/beta_1/Read/ReadVariableOp:0(2)Adam_2/beta_1/Initializer/initial_value:08
{
Adam_2/beta_2:0Adam_2/beta_2/Assign#Adam_2/beta_2/Read/ReadVariableOp:0(2)Adam_2/beta_2/Initializer/initial_value:08
w
Adam_2/decay:0Adam_2/decay/Assign"Adam_2/decay/Read/ReadVariableOp:0(2(Adam_2/decay/Initializer/initial_value:08
К
training_2/Adam/Variable:0training_2/Adam/Variable/Assign.training_2/Adam/Variable/Read/ReadVariableOp:0(2training_2/Adam/zeros:08
Т
training_2/Adam/Variable_1:0!training_2/Adam/Variable_1/Assign0training_2/Adam/Variable_1/Read/ReadVariableOp:0(2training_2/Adam/zeros_1:08
Т
training_2/Adam/Variable_2:0!training_2/Adam/Variable_2/Assign0training_2/Adam/Variable_2/Read/ReadVariableOp:0(2training_2/Adam/zeros_2:08
Т
training_2/Adam/Variable_3:0!training_2/Adam/Variable_3/Assign0training_2/Adam/Variable_3/Read/ReadVariableOp:0(2training_2/Adam/zeros_3:08
Т
training_2/Adam/Variable_4:0!training_2/Adam/Variable_4/Assign0training_2/Adam/Variable_4/Read/ReadVariableOp:0(2training_2/Adam/zeros_4:08
Т
training_2/Adam/Variable_5:0!training_2/Adam/Variable_5/Assign0training_2/Adam/Variable_5/Read/ReadVariableOp:0(2training_2/Adam/zeros_5:08
Т
training_2/Adam/Variable_6:0!training_2/Adam/Variable_6/Assign0training_2/Adam/Variable_6/Read/ReadVariableOp:0(2training_2/Adam/zeros_6:08
Т
training_2/Adam/Variable_7:0!training_2/Adam/Variable_7/Assign0training_2/Adam/Variable_7/Read/ReadVariableOp:0(2training_2/Adam/zeros_7:08
Т
training_2/Adam/Variable_8:0!training_2/Adam/Variable_8/Assign0training_2/Adam/Variable_8/Read/ReadVariableOp:0(2training_2/Adam/zeros_8:08
Т
training_2/Adam/Variable_9:0!training_2/Adam/Variable_9/Assign0training_2/Adam/Variable_9/Read/ReadVariableOp:0(2training_2/Adam/zeros_9:08
Ц
training_2/Adam/Variable_10:0"training_2/Adam/Variable_10/Assign1training_2/Adam/Variable_10/Read/ReadVariableOp:0(2training_2/Adam/zeros_10:08
Ц
training_2/Adam/Variable_11:0"training_2/Adam/Variable_11/Assign1training_2/Adam/Variable_11/Read/ReadVariableOp:0(2training_2/Adam/zeros_11:08*™
serving_defaultЦ
5
input_image&
dense_input_1:0€€€€€€€€€A
dense_1_2/Softmax:0*
dense_1_2/Softmax:0€€€€€€€€€tensorflow/serving/predict