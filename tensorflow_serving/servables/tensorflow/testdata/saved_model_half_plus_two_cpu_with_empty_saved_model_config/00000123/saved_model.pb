Ăv
˘
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 

ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
 
9
VarIsInitializedOp
resource
is_initialized
"serve*2.4.02unknownđW
v
a/Initializer/initial_valueConst*
_class

loc:@a*
_output_shapes
: *
dtype0*
valueB
 *   ?
Ł
aVarHandleOp"/device:CPU:0*
_class

loc:@a*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namea
b
"a/IsInitialized/VarIsInitializedOpVarIsInitializedOpa"/device:CPU:0*
_output_shapes
: 
X
a/AssignAssignVariableOpaa/Initializer/initial_value"/device:CPU:0*
dtype0
^
a/Read/ReadVariableOpReadVariableOpa"/device:CPU:0*
_output_shapes
: *
dtype0
v
b/Initializer/initial_valueConst*
_class

loc:@b*
_output_shapes
: *
dtype0*
valueB
 *   @
Ł
bVarHandleOp"/device:CPU:0*
_class

loc:@b*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_nameb
b
"b/IsInitialized/VarIsInitializedOpVarIsInitializedOpb"/device:CPU:0*
_output_shapes
: 
X
b/AssignAssignVariableOpbb/Initializer/initial_value"/device:CPU:0*
dtype0
^
b/Read/ReadVariableOpReadVariableOpb"/device:CPU:0*
_output_shapes
: *
dtype0
v
c/Initializer/initial_valueConst*
_class

loc:@c*
_output_shapes
: *
dtype0*
valueB
 *  @@
Ł
cVarHandleOp"/device:CPU:0*
_class

loc:@c*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namec
b
"c/IsInitialized/VarIsInitializedOpVarIsInitializedOpc"/device:CPU:0*
_output_shapes
: 
X
c/AssignAssignVariableOpcc/Initializer/initial_value"/device:CPU:0*
dtype0
^
c/Read/ReadVariableOpReadVariableOpc"/device:CPU:0*
_output_shapes
: *
dtype0
t

tf_examplePlaceholder"/device:CPU:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
d
ParseExample/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 
o
ParseExample/key_x2Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB*    
s
ParseExample/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:

ParseExample/ReshapeReshapeParseExample/key_x2ParseExample/Reshape/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
s
!ParseExample/ParseExampleV2/namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 
y
'ParseExample/ParseExampleV2/sparse_keysConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 

&ParseExample/ParseExampleV2/dense_keysConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBBxBx2
y
'ParseExample/ParseExampleV2/ragged_keysConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 
×
ParseExample/ParseExampleV2ParseExampleV2
tf_example!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keysParseExample/ConstParseExample/Reshape"/device:CPU:0*
Tdense
2*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
dense_shapes
::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 
k
xIdentityParseExample/ParseExampleV2"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
L
Mul/ReadVariableOpReadVariableOpa*
_output_shapes
: *
dtype0
b
MulMulMul/ReadVariableOpx"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
L
Add/ReadVariableOpReadVariableOpb*
_output_shapes
: *
dtype0
d
AddAddMulAdd/ReadVariableOp"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
S
yIdentityAdd"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
Mul_1/ReadVariableOpReadVariableOpa*
_output_shapes
: *
dtype0
f
Mul_1MulMul_1/ReadVariableOpx"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
Add_1/ReadVariableOpReadVariableOpc*
_output_shapes
: *
dtype0
j
Add_1AddMul_1Add_1/ReadVariableOp"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
y2IdentityAdd_1"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
x2IdentityParseExample/ParseExampleV2:1"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
a2/Initializer/initial_valueConst*
_class
	loc:@a2*
_output_shapes
: *
dtype0*
valueB
 *   ?
Ś
a2VarHandleOp"/device:CPU:0*
_class
	loc:@a2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namea2
d
#a2/IsInitialized/VarIsInitializedOpVarIsInitializedOpa2"/device:CPU:0*
_output_shapes
: 
[
	a2/AssignAssignVariableOpa2a2/Initializer/initial_value"/device:CPU:0*
dtype0
`
a2/Read/ReadVariableOpReadVariableOpa2"/device:CPU:0*
_output_shapes
: *
dtype0
x
c2/Initializer/initial_valueConst*
_class
	loc:@c2*
_output_shapes
: *
dtype0*
valueB
 *  @@
Ś
c2VarHandleOp"/device:CPU:0*
_class
	loc:@c2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namec2
d
#c2/IsInitialized/VarIsInitializedOpVarIsInitializedOpc2"/device:CPU:0*
_output_shapes
: 
[
	c2/AssignAssignVariableOpc2c2/Initializer/initial_value"/device:CPU:0*
dtype0
`
c2/Read/ReadVariableOpReadVariableOpc2"/device:CPU:0*
_output_shapes
: *
dtype0
O
Mul_2/ReadVariableOpReadVariableOpa2*
_output_shapes
: *
dtype0
g
Mul_2MulMul_2/ReadVariableOpx2"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
O
Add_2/ReadVariableOpReadVariableOpc2*
_output_shapes
: *
dtype0
j
Add_2AddMul_2Add_2/ReadVariableOp"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
y3IdentityAdd_2"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

NoOpNoOp
i
ConstConst*
_output_shapes
: *
dtype0*4
value+B) B#/tmp/original/export/assets/foo.txt

)filename_tensor/Initializer/initial_valueConst*"
_class
loc:@filename_tensor*
_output_shapes
: *
dtype0*
valueB Bfoo.txt
ž
filename_tensorVarHandleOp*"
_class
loc:@filename_tensor*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: * 
shared_namefilename_tensor
o
0filename_tensor/IsInitialized/VarIsInitializedOpVarIsInitializedOpfilename_tensor*
_output_shapes
: 
s
filename_tensor/AssignAssignVariableOpfilename_tensor)filename_tensor/Initializer/initial_value*
dtype0
k
#filename_tensor/Read/ReadVariableOpReadVariableOpfilename_tensor*
_output_shapes
: *
dtype0
O
Const_1Const*
_output_shapes
: *
dtype0*
valueB Bfoo.txt
K
AssignVariableOpAssignVariableOpfilename_tensorConst_1*
dtype0
i
ReadVariableOpReadVariableOpfilename_tensor^AssignVariableOp*
_output_shapes
: *
dtype0
T
initNoOp	^a/Assign
^a2/Assign	^b/Assign	^c/Assign
^c2/Assign"/device:CPU:0
%

group_depsNoOp^AssignVariableOp
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part

save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_594a45fd87244499a1fa1c9e9e4b0f00/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
w
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*$
valueBBaBa2BbBcBc2
|
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 
ü
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesa/Read/ReadVariableOpa2/Read/ReadVariableOpb/Read/ReadVariableOpc/Read/ReadVariableOpc2/Read/ReadVariableOp"/device:CPU:0*
dtypes	
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*$
valueBBaBa2BbBcBc2

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 
ł
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2
]
save/Identity_1Identitysave/RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
Y
save/AssignVariableOpAssignVariableOpasave/Identity_1"/device:CPU:0*
dtype0
_
save/Identity_2Identitysave/RestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
\
save/AssignVariableOp_1AssignVariableOpa2save/Identity_2"/device:CPU:0*
dtype0
_
save/Identity_3Identitysave/RestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
[
save/AssignVariableOp_2AssignVariableOpbsave/Identity_3"/device:CPU:0*
dtype0
_
save/Identity_4Identitysave/RestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
[
save/AssignVariableOp_3AssignVariableOpcsave/Identity_4"/device:CPU:0*
dtype0
_
save/Identity_5Identitysave/RestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
\
save/AssignVariableOp_4AssignVariableOpc2save/Identity_5"/device:CPU:0*
dtype0
Š
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4"/device:CPU:0
<
save/restore_allNoOp^save/restore_shard"/device:CPU:0"Ő<
save/Const:0save/Identity:0save/restore_all (5 @F8"
asset_filepaths
	
Const:0"]
saved_model_assetsG*E
C
+type.googleapis.com/tensorflow.AssetFileDef
	
Const:0foo.txt"%
saved_model_main_op


group_deps"¤
trainable_variables
K
a:0a/Assigna/Read/ReadVariableOp:0(2a/Initializer/initial_value:08
K
b:0b/Assignb/Read/ReadVariableOp:0(2b/Initializer/initial_value:08
K
c:0c/Assignc/Read/ReadVariableOp:0(2c/Initializer/initial_value:08
O
a2:0	a2/Assigna2/Read/ReadVariableOp:0(2a2/Initializer/initial_value:08
O
c2:0	c2/Assignc2/Read/ReadVariableOp:0(2c2/Initializer/initial_value:08"
	variables
K
a:0a/Assigna/Read/ReadVariableOp:0(2a/Initializer/initial_value:08
K
b:0b/Assignb/Read/ReadVariableOp:0(2b/Initializer/initial_value:08
K
c:0c/Assignc/Read/ReadVariableOp:0(2c/Initializer/initial_value:08
O
a2:0	a2/Assigna2/Read/ReadVariableOp:0(2a2/Initializer/initial_value:08
O
c2:0	c2/Assignc2/Read/ReadVariableOp:0(2c2/Initializer/initial_value:08*
classify_x2_to_y3k
%
inputs
x2:0˙˙˙˙˙˙˙˙˙%
scores
y3:0˙˙˙˙˙˙˙˙˙tensorflow/serving/classify*
classify_x_to_yn
)
inputs
tf_example:0˙˙˙˙˙˙˙˙˙$
scores
y:0˙˙˙˙˙˙˙˙˙tensorflow/serving/classify*
regress_x2_to_y3k
%
inputs
x2:0˙˙˙˙˙˙˙˙˙&
outputs
y3:0˙˙˙˙˙˙˙˙˙tensorflow/serving/regress*
regress_x_to_yn
)
inputs
tf_example:0˙˙˙˙˙˙˙˙˙%
outputs
y:0˙˙˙˙˙˙˙˙˙tensorflow/serving/regress*
regress_x_to_y2o
)
inputs
tf_example:0˙˙˙˙˙˙˙˙˙&
outputs
y2:0˙˙˙˙˙˙˙˙˙tensorflow/serving/regress*q
serving_default^

x
x:0˙˙˙˙˙˙˙˙˙
y
y:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict