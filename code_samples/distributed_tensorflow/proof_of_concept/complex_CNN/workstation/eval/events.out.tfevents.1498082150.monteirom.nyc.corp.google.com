       гK"	  А┘║R╓Abrain.Event:27-!:╢*     eр>	═│┘║R╓A"й╒

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
П
global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
┤
enqueue_input/fifo_queueFIFOQueueV2*
capacityш*
_output_shapes
: *"
shapes
: ::
*
component_types
2	*
	container *
shared_name 
^
enqueue_input/PlaceholderPlaceholder*
dtype0	*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_1Placeholder*
dtype0*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_2Placeholder*
dtype0*
shape:*
_output_shapes
:
▄
$enqueue_input/fifo_queue_EnqueueManyQueueEnqueueManyV2enqueue_input/fifo_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2*

timeout_ms         *
Tcomponents
2	
g
enqueue_input/fifo_queue_CloseQueueCloseV2enqueue_input/fifo_queue*
cancel_pending_enqueues( 
i
 enqueue_input/fifo_queue_Close_1QueueCloseV2enqueue_input/fifo_queue*
cancel_pending_enqueues(
^
enqueue_input/fifo_queue_SizeQueueSizeV2enqueue_input/fifo_queue*
_output_shapes
: 
U
enqueue_input/sub/yConst*
dtype0*
value	B : *
_output_shapes
: 
m
enqueue_input/subSubenqueue_input/fifo_queue_Sizeenqueue_input/sub/y*
T0*
_output_shapes
: 
Y
enqueue_input/Maximum/xConst*
dtype0*
value	B : *
_output_shapes
: 
m
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub*
T0*
_output_shapes
: 
a
enqueue_input/CastCastenqueue_input/Maximum*

DstT0*

SrcT0*
_output_shapes
: 
X
enqueue_input/mul/yConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
b
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y*
T0*
_output_shapes
: 
╓
Menqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsConst*
dtype0*Y
valuePBN BHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full*
_output_shapes
: 
▄
Henqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullScalarSummaryMenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsenqueue_input/mul*
T0*
_output_shapes
: 
[
fifo_queue_DequeueUpTo/nConst*
dtype0*
value
B :А*
_output_shapes
: 
ъ
fifo_queue_DequeueUpToQueueDequeueUpToV2enqueue_input/fifo_queuefifo_queue_DequeueUpTo/n*

timeout_ms         *
component_types
2	*Q
_output_shapes?
=:         :         :         

й
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0* 
_class
loc:@conv2d/kernel*%
valueB"             *
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *nзо╜*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *nзо=*
_output_shapes
: 
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*&
_output_shapes
: *
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv2d/kernel
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
│
conv2d/kernel
VariableV2*
	container *&
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@conv2d/kernel*
shared_name 
╙
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 
А
conv2d/kernel/readIdentityconv2d/kernel* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
К
conv2d/bias/Initializer/zerosConst*
dtype0*
_class
loc:@conv2d/bias*
valueB *    *
_output_shapes
: 
Ч
conv2d/bias
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv2d/bias*
shared_name 
╢
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
_class
loc:@conv2d/bias*
T0*
_output_shapes
: 
q
conv2d/convolution/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
q
 conv2d/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
▄
conv2d/convolutionConv2Dfifo_queue_DequeueUpTo:1conv2d/kernel/read*/
_output_shapes
:          *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Р
conv2d/BiasAddBiasAddconv2d/convolutionconv2d/bias/read*/
_output_shapes
:          *
T0*
data_formatNHWC
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:          
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *═╠L╜*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *═╠L=*
_output_shapes
: 
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*&
_output_shapes
: @*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_1/kernel
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
╖
conv2d_1/kernel
VariableV2*
	container *&
_output_shapes
: @*
dtype0*
shape: @*"
_class
loc:@conv2d_1/kernel*
shared_name 
█
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
О
conv2d_1/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_1/bias*
valueB@*    *
_output_shapes
:@
Ы
conv2d_1/bias
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@* 
_class
loc:@conv2d_1/bias*
shared_name 
╛
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
t
conv2d_1/bias/readIdentityconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
T0*
_output_shapes
:@
s
conv2d_2/convolution/ShapeConst*
dtype0*%
valueB"          @   *
_output_shapes
:
s
"conv2d_2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
╙
conv2d_2/convolutionConv2Dconv2d/Reluconv2d_1/kernel/read*/
_output_shapes
:         @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ц
conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_1/bias/read*/
_output_shapes
:         @*
T0*
data_formatNHWC
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_2/kernel*%
valueB"      @   А   *
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *є╡╜*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *є╡=*
_output_shapes
: 
ў
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*'
_output_shapes
:@А*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_2/kernel
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*
_output_shapes
: 
ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@А
ч
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@А
╣
conv2d_2/kernel
VariableV2*
	container *'
_output_shapes
:@А*
dtype0*
shape:@А*"
_class
loc:@conv2d_2/kernel*
shared_name 
▄
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@А
З
conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@А
Р
conv2d_2/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_2/bias*
valueBА*    *
_output_shapes	
:А
Э
conv2d_2/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А* 
_class
loc:@conv2d_2/bias*
shared_name 
┐
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:А
u
conv2d_2/bias/readIdentityconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
T0*
_output_shapes	
:А
s
conv2d_3/convolution/ShapeConst*
dtype0*%
valueB"      @   А   *
_output_shapes
:
s
"conv2d_3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
╓
conv2d_3/convolutionConv2Dconv2d_2/Reluconv2d_2/kernel/read*0
_output_shapes
:         А*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ч
conv2d_3/BiasAddBiasAddconv2d_3/convolutionconv2d_2/bias/read*0
_output_shapes
:         А*
T0*
data_formatNHWC
b
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*0
_output_shapes
:         А
╜
max_pooling2d/MaxPoolMaxPoolconv2d_3/Relu*0
_output_shapes
:         		А*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_3/kernel*%
valueB"      А      *
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *═╠╠╝*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *═╠╠<*
_output_shapes
: 
°
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*(
_output_shapes
:АА*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_3/kernel
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*
_output_shapes
: 
Ў
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:АА
ш
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:АА
╗
conv2d_3/kernel
VariableV2*
	container *(
_output_shapes
:АА*
dtype0*
shape:АА*"
_class
loc:@conv2d_3/kernel*
shared_name 
▌
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:АА
И
conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:АА
Р
conv2d_3/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_3/bias*
valueBА*    *
_output_shapes	
:А
Э
conv2d_3/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А* 
_class
loc:@conv2d_3/bias*
shared_name 
┐
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:А
u
conv2d_3/bias/readIdentityconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
T0*
_output_shapes	
:А
s
conv2d_4/convolution/ShapeConst*
dtype0*%
valueB"      А      *
_output_shapes
:
s
"conv2d_4/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
▐
conv2d_4/convolutionConv2Dmax_pooling2d/MaxPoolconv2d_3/kernel/read*0
_output_shapes
:         А*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ч
conv2d_4/BiasAddBiasAddconv2d_4/convolutionconv2d_3/bias/read*0
_output_shapes
:         А*
T0*
data_formatNHWC
b
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*0
_output_shapes
:         А
┐
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu*0
_output_shapes
:         А*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
d
flatten/ShapeShapemax_pooling2d_2/MaxPool*
out_type0*
T0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
е
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
W
flatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
x
flatten/ProdProdflatten/strided_sliceflatten/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Z
flatten/stack/0Const*
dtype0*
valueB :
         *
_output_shapes
: 
n
flatten/stackPackflatten/stack/0flatten/Prod*
N*
T0*
_output_shapes
:*

axis 
Г
flatten/ReshapeReshapemax_pooling2d_2/MaxPoolflatten/stack*(
_output_shapes
:         А*
T0*
Tshape0
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"      *
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *╫│]╜*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *╫│]=*
_output_shapes
: 
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:
АА
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:
АА
е
dense/kernel
VariableV2*
	container * 
_output_shapes
:
АА*
dtype0*
shape:
АА*
_class
loc:@dense/kernel*
shared_name 
╔
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
w
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:
АА
К
dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueBА*    *
_output_shapes	
:А
Ч

dense/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А*
_class
loc:@dense/bias*
shared_name 
│
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:А
l
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes	
:А
У
dense/MatMulMatMulflatten/Reshapedense/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         А
Б
dense/BiasAddBiasAdddense/MatMuldense/bias/read*(
_output_shapes
:         А*
T0*
data_formatNHWC
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB"      *
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *╫│]╜*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *╫│]=*
_output_shapes
: 
э
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_1/kernel
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
: 
ъ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
АА
▄
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
АА
й
dense_1/kernel
VariableV2*
	container * 
_output_shapes
:
АА*
dtype0*
shape:
АА*!
_class
loc:@dense_1/kernel*
shared_name 
╤
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
АА
О
dense_1/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_1/bias*
valueBА*    *
_output_shapes	
:А
Ы
dense_1/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А*
_class
loc:@dense_1/bias*
shared_name 
╗
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:А
Т
dense_2/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         А
З
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*(
_output_shapes
:         А*
T0*
data_formatNHWC
X
dense_2/ReluReludense_2/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB"      *
_output_shapes
:
Х
-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *╫│]╜*
_output_shapes
: 
Х
-dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *╫│]=*
_output_shapes
: 
э
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_2/kernel
╓
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
: 
ъ
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:
АА
▄
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:
АА
й
dense_2/kernel
VariableV2*
	container * 
_output_shapes
:
АА*
dtype0*
shape:
АА*!
_class
loc:@dense_2/kernel*
shared_name 
╤
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
}
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:
АА
О
dense_2/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_2/bias*
valueBА*    *
_output_shapes	
:А
Ы
dense_2/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А*
_class
loc:@dense_2/bias*
shared_name 
╗
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:А
r
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes	
:А
Ф
dense_3/MatMulMatMuldense_2/Reludense_2/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         А
З
dense_3/BiasAddBiasAdddense_3/MatMuldense_2/bias/read*(
_output_shapes
:         А*
T0*
data_formatNHWC
X
dense_3/ReluReludense_3/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB"      *
_output_shapes
:
Х
-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *╫│]╜*
_output_shapes
: 
Х
-dense_3/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *╫│]=*
_output_shapes
: 
э
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_3/kernel
╓
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes
: 
ъ
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:
АА
▄
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:
АА
й
dense_3/kernel
VariableV2*
	container * 
_output_shapes
:
АА*
dtype0*
shape:
АА*!
_class
loc:@dense_3/kernel*
shared_name 
╤
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
}
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:
АА
О
dense_3/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_3/bias*
valueBА*    *
_output_shapes	
:А
Ы
dense_3/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А*
_class
loc:@dense_3/bias*
shared_name 
╗
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:А
r
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0*
_output_shapes	
:А
Ф
dense_4/MatMulMatMuldense_3/Reludense_3/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         А
З
dense_4/BiasAddBiasAdddense_4/MatMuldense_3/bias/read*(
_output_shapes
:         А*
T0*
data_formatNHWC
X
dense_4/ReluReludense_4/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB"   
   *
_output_shapes
:
Х
-dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *шЬ╜*
_output_shapes
: 
Х
-dense_4/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *шЬ=*
_output_shapes
: 
ь
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
_output_shapes
:	А
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_4/kernel
╓
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
: 
щ
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	А

█
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	А

з
dense_4/kernel
VariableV2*
	container *
_output_shapes
:	А
*
dtype0*
shape:	А
*!
_class
loc:@dense_4/kernel*
shared_name 
╨
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	А

|
dense_4/kernel/readIdentitydense_4/kernel*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	А

М
dense_4/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_4/bias*
valueB
*    *
_output_shapes
:

Щ
dense_4/bias
VariableV2*
	container *
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense_4/bias*
shared_name 
║
dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

q
dense_4/bias/readIdentitydense_4/bias*
_class
loc:@dense_4/bias*
T0*
_output_shapes
:

У
dense_5/MatMulMatMuldense_4/Reludense_4/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:         

Ж
dense_5/BiasAddBiasAdddense_5/MatMuldense_4/bias/read*'
_output_shapes
:         
*
T0*
data_formatNHWC
]
dense_5/SoftmaxSoftmaxdense_5/BiasAdd*
T0*'
_output_shapes
:         

В
softmax_cross_entropy_loss/CastCastfifo_queue_DequeueUpTo:2*

DstT0*

SrcT0*'
_output_shapes
:         

a
softmax_cross_entropy_loss/RankConst*
dtype0*
value	B :*
_output_shapes
: 
o
 softmax_cross_entropy_loss/ShapeShapedense_5/Softmax*
out_type0*
T0*
_output_shapes
:
c
!softmax_cross_entropy_loss/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
q
"softmax_cross_entropy_loss/Shape_1Shapedense_5/Softmax*
out_type0*
T0*
_output_shapes
:
b
 softmax_cross_entropy_loss/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Л
softmax_cross_entropy_loss/SubSub!softmax_cross_entropy_loss/Rank_1 softmax_cross_entropy_loss/Sub/y*
T0*
_output_shapes
: 
И
&softmax_cross_entropy_loss/Slice/beginPacksoftmax_cross_entropy_loss/Sub*
N*
T0*
_output_shapes
:*

axis 
o
%softmax_cross_entropy_loss/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╬
 softmax_cross_entropy_loss/SliceSlice"softmax_cross_entropy_loss/Shape_1&softmax_cross_entropy_loss/Slice/begin%softmax_cross_entropy_loss/Slice/size*
Index0*
T0*
_output_shapes
:
}
*softmax_cross_entropy_loss/concat/values_0Const*
dtype0*
valueB:
         *
_output_shapes
:
h
&softmax_cross_entropy_loss/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
▌
!softmax_cross_entropy_loss/concatConcatV2*softmax_cross_entropy_loss/concat/values_0 softmax_cross_entropy_loss/Slice&softmax_cross_entropy_loss/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
к
"softmax_cross_entropy_loss/ReshapeReshapedense_5/Softmax!softmax_cross_entropy_loss/concat*0
_output_shapes
:                  *
T0*
Tshape0
c
!softmax_cross_entropy_loss/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
Б
"softmax_cross_entropy_loss/Shape_2Shapesoftmax_cross_entropy_loss/Cast*
out_type0*
T0*
_output_shapes
:
d
"softmax_cross_entropy_loss/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
П
 softmax_cross_entropy_loss/Sub_1Sub!softmax_cross_entropy_loss/Rank_2"softmax_cross_entropy_loss/Sub_1/y*
T0*
_output_shapes
: 
М
(softmax_cross_entropy_loss/Slice_1/beginPack softmax_cross_entropy_loss/Sub_1*
N*
T0*
_output_shapes
:*

axis 
q
'softmax_cross_entropy_loss/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╘
"softmax_cross_entropy_loss/Slice_1Slice"softmax_cross_entropy_loss/Shape_2(softmax_cross_entropy_loss/Slice_1/begin'softmax_cross_entropy_loss/Slice_1/size*
Index0*
T0*
_output_shapes
:

,softmax_cross_entropy_loss/concat_1/values_0Const*
dtype0*
valueB:
         *
_output_shapes
:
j
(softmax_cross_entropy_loss/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
х
#softmax_cross_entropy_loss/concat_1ConcatV2,softmax_cross_entropy_loss/concat_1/values_0"softmax_cross_entropy_loss/Slice_1(softmax_cross_entropy_loss/concat_1/axis*
N*

Tidx0*
_output_shapes
:*
T0
╛
$softmax_cross_entropy_loss/Reshape_1Reshapesoftmax_cross_entropy_loss/Cast#softmax_cross_entropy_loss/concat_1*0
_output_shapes
:                  *
T0*
Tshape0
╪
#softmax_cross_entropy_loss/xentropySoftmaxCrossEntropyWithLogits"softmax_cross_entropy_loss/Reshape$softmax_cross_entropy_loss/Reshape_1*
T0*?
_output_shapes-
+:         :                  
d
"softmax_cross_entropy_loss/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
Н
 softmax_cross_entropy_loss/Sub_2Subsoftmax_cross_entropy_loss/Rank"softmax_cross_entropy_loss/Sub_2/y*
T0*
_output_shapes
: 
r
(softmax_cross_entropy_loss/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
Л
'softmax_cross_entropy_loss/Slice_2/sizePack softmax_cross_entropy_loss/Sub_2*
N*
T0*
_output_shapes
:*

axis 
█
"softmax_cross_entropy_loss/Slice_2Slice softmax_cross_entropy_loss/Shape(softmax_cross_entropy_loss/Slice_2/begin'softmax_cross_entropy_loss/Slice_2/size*
Index0*
T0*#
_output_shapes
:         
┤
$softmax_cross_entropy_loss/Reshape_2Reshape#softmax_cross_entropy_loss/xentropy"softmax_cross_entropy_loss/Slice_2*#
_output_shapes
:         *
T0*
Tshape0
|
7softmax_cross_entropy_loss/assert_broadcastable/weightsConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
А
=softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
dtype0*
valueB *
_output_shapes
: 
~
<softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
dtype0*
value	B : *
_output_shapes
: 
а
<softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape$softmax_cross_entropy_loss/Reshape_2*
out_type0*
T0*
_output_shapes
:
}
;softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
dtype0*
value	B :*
_output_shapes
: 
S
Ksoftmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
╣
&softmax_cross_entropy_loss/ToFloat_1/xConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  А?*
_output_shapes
: 
б
softmax_cross_entropy_loss/MulMul$softmax_cross_entropy_loss/Reshape_2&softmax_cross_entropy_loss/ToFloat_1/x*
T0*#
_output_shapes
:         
╕
 softmax_cross_entropy_loss/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
е
softmax_cross_entropy_loss/SumSumsoftmax_cross_entropy_loss/Mul softmax_cross_entropy_loss/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
┴
.softmax_cross_entropy_loss/num_present/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
о
,softmax_cross_entropy_loss/num_present/EqualEqual&softmax_cross_entropy_loss/ToFloat_1/x.softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
─
1softmax_cross_entropy_loss/num_present/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
╟
6softmax_cross_entropy_loss/num_present/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
╔
6softmax_cross_entropy_loss/num_present/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  А?*
_output_shapes
: 
╔
0softmax_cross_entropy_loss/num_present/ones_likeFill6softmax_cross_entropy_loss/num_present/ones_like/Shape6softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
ы
-softmax_cross_entropy_loss/num_present/SelectSelect,softmax_cross_entropy_loss/num_present/Equal1softmax_cross_entropy_loss/num_present/zeros_like0softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
ь
[softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
ъ
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B : *
_output_shapes
: 
М
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape$softmax_cross_entropy_loss/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
out_type0*
T0*
_output_shapes
:
щ
Ysoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B :*
_output_shapes
: 
┐
isoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
ц
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape$softmax_cross_entropy_loss/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
out_type0*
T0*
_output_shapes
:
╟
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  А?*
_output_shapes
: 
М
Bsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:         
р
8softmax_cross_entropy_loss/num_present/broadcast_weightsMul-softmax_cross_entropy_loss/num_present/SelectBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
─
,softmax_cross_entropy_loss/num_present/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
╙
&softmax_cross_entropy_loss/num_presentSum8softmax_cross_entropy_loss/num_present/broadcast_weights,softmax_cross_entropy_loss/num_present/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
│
"softmax_cross_entropy_loss/Const_1ConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
й
 softmax_cross_entropy_loss/Sum_1Sumsoftmax_cross_entropy_loss/Sum"softmax_cross_entropy_loss/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
╖
$softmax_cross_entropy_loss/Greater/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
Ь
"softmax_cross_entropy_loss/GreaterGreater&softmax_cross_entropy_loss/num_present$softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
╡
"softmax_cross_entropy_loss/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
Ц
 softmax_cross_entropy_loss/EqualEqual&softmax_cross_entropy_loss/num_present"softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
╗
*softmax_cross_entropy_loss/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
╜
*softmax_cross_entropy_loss/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  А?*
_output_shapes
: 
е
$softmax_cross_entropy_loss/ones_likeFill*softmax_cross_entropy_loss/ones_like/Shape*softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
╝
!softmax_cross_entropy_loss/SelectSelect softmax_cross_entropy_loss/Equal$softmax_cross_entropy_loss/ones_like&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
П
softmax_cross_entropy_loss/divRealDiv softmax_cross_entropy_loss/Sum_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
╕
%softmax_cross_entropy_loss/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
╢
 softmax_cross_entropy_loss/valueSelect"softmax_cross_entropy_loss/Greatersoftmax_cross_entropy_loss/div%softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
а
,OptimizeLoss/learning_rate/Initializer/ConstConst*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
valueB
 *
╫#<*
_output_shapes
: 
н
OptimizeLoss/learning_rate
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *-
_class#
!loc:@OptimizeLoss/learning_rate*
shared_name 
ю
!OptimizeLoss/learning_rate/AssignAssignOptimizeLoss/learning_rate,OptimizeLoss/learning_rate/Initializer/Const*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 
Ч
OptimizeLoss/learning_rate/readIdentityOptimizeLoss/learning_rate*-
_class#
!loc:@OptimizeLoss/learning_rate*
T0*
_output_shapes
: 
_
OptimizeLoss/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
a
OptimizeLoss/gradients/ConstConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
А
OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/ShapeOptimizeLoss/gradients/Const*
T0*
_output_shapes
: 
М
GOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeConst*
dtype0*
valueB
 *    *
_output_shapes
: 
°
COptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectSelect"softmax_cross_entropy_loss/GreaterOptimizeLoss/gradients/FillGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
·
EOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1Select"softmax_cross_entropy_loss/GreaterGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeOptimizeLoss/gradients/Fill*
T0*
_output_shapes
: 
у
MOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectF^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectN^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select*
T0*
_output_shapes
: 
ї
WOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1N^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1*
T0*
_output_shapes
: 
Г
@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
м
POptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ш
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivRealDivUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/SumSumBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivPOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
■
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape*
_output_shapes
: *
T0*
Tshape0
И
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/NegNeg softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
╙
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Neg!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
┘
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Г
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulMulUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
Ы
@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1Sum>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulROptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Д
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
▀
KOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1
щ
SOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape*
T0*
_output_shapes
: 
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1*
T0*
_output_shapes
: 
Н
JOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
valueB *
_output_shapes
: 
Я
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyJOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0
О
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
dtype0*
valueB *
_output_shapes
: 
П
AOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileTileDOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeKOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
: 
Н
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
dtype0*
valueB
 *    *
_output_shapes
: 
▓
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/SelectSelect softmax_cross_entropy_loss/EqualUOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1HOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
┤
FOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select_1Select softmax_cross_entropy_loss/EqualHOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/zeros_likeUOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
ц
NOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/SelectG^OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select_1
є
VOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/SelectO^OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select*
T0*
_output_shapes
: 
∙
XOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1IdentityFOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select_1O^OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/group_deps*Y
_classO
MKloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select_1*
T0*
_output_shapes
: 
Т
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
Н
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeAOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileHOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
Ю
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ShapeShapesoftmax_cross_entropy_loss/Mul*
out_type0*
T0*
_output_shapes
:
Н
?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/TileTileBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
д
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeShape$softmax_cross_entropy_loss/Reshape_2*
out_type0*
T0*
_output_shapes
:
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
м
POptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
▄
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulMul?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile&softmax_cross_entropy_loss/ToFloat_1/x*
T0*#
_output_shapes
:         
Ч
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/SumSum>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulPOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Л
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape*#
_output_shapes
:         *
T0*
Tshape0
▄
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1Mul$softmax_cross_entropy_loss/Reshape_2?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:         
Э
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1ROptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Д
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
▀
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
Ў
SOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape*
T0*#
_output_shapes
:         
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1*
T0*
_output_shapes
: 
Ъ
POptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
┤
JOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeXOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1POptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
└
HOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/ShapeShape8softmax_cross_entropy_loss/num_present/broadcast_weights*
out_type0*
T0*
_output_shapes
:
е
GOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/TileTileJOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/ReshapeHOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
Э
ZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
▐
\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1ShapeBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
out_type0*
T0*
_output_shapes
:
·
jOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Ъ
XOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMulGOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/TileBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
х
XOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumXOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/muljOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
╠
\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeXOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
_output_shapes
: *
T0*
Tshape0
З
ZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1Mul-softmax_cross_entropy_loss/num_present/SelectGOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:         
ы
ZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1SumZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1lOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
▀
^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1ReshapeZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*#
_output_shapes
:         *
T0*
Tshape0
н
eOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOp]^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
╤
mOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentity\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapef^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*o
_classe
caloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
T0*
_output_shapes
: 
ф
oOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identity^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1f^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*q
_classg
ecloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*
T0*#
_output_shapes
:         
о
dOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
■
bOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumoOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1dOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
й
FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ShapeShape#softmax_cross_entropy_loss/xentropy*
out_type0*
T0*
_output_shapes
:
м
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/Shape*#
_output_shapes
:         *
T0*
Tshape0
Р
!OptimizeLoss/gradients/zeros_like	ZerosLike%softmax_cross_entropy_loss/xentropy:1*
T0*0
_output_shapes
:                  
Щ
NOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
░
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims
ExpandDimsHOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeNOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
°
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulMulJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims%softmax_cross_entropy_loss/xentropy:1*
T0*0
_output_shapes
:                  
У
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ShapeShapedense_5/Softmax*
out_type0*
T0*
_output_shapes
:
Ь
FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ReshapeReshapeCOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulDOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Shape*'
_output_shapes
:         
*
T0*
Tshape0
┴
/OptimizeLoss/gradients/dense_5/Softmax_grad/mulMulFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshapedense_5/Softmax*
T0*'
_output_shapes
:         

Л
AOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
ї
/OptimizeLoss/gradients/dense_5/Softmax_grad/SumSum/OptimizeLoss/gradients/dense_5/Softmax_grad/mulAOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:         *
T0*
	keep_dims( *

Tidx0
К
9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
ъ
3OptimizeLoss/gradients/dense_5/Softmax_grad/ReshapeReshape/OptimizeLoss/gradients/dense_5/Softmax_grad/Sum9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shape*'
_output_shapes
:         *
T0*
Tshape0
х
/OptimizeLoss/gradients/dense_5/Softmax_grad/subSubFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshape3OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape*
T0*'
_output_shapes
:         

м
1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1Mul/OptimizeLoss/gradients/dense_5/Softmax_grad/subdense_5/Softmax*
T0*'
_output_shapes
:         

╡
7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
_output_shapes
:
*
T0*
data_formatNHWC
▓
<OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/Softmax_grad/mul_18^OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad
║
DOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
T0*'
_output_shapes
:         

╗
FOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

я
1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
с
3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/ReluDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	А

н
;OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
╢
EOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	А

├
1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencydense_4/Relu*
T0*(
_output_shapes
:         А
╢
7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
▓
<OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad
╗
DOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
T0*(
_output_shapes
:         А
╝
FOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
я
1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
т
3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/ReluDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
н
;OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
╖
EOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
├
1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencydense_3/Relu*
T0*(
_output_shapes
:         А
╢
7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
▓
<OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad
╗
DOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
T0*(
_output_shapes
:         А
╝
FOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
я
1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
т
3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/ReluDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
н
;OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
╖
EOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
├
1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencydense_2/Relu*
T0*(
_output_shapes
:         А
╢
7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
▓
<OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad
╗
DOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
T0*(
_output_shapes
:         А
╝
FOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
я
1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
р
3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1MatMul
dense/ReluDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
н
;OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
╖
EOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
┐
/OptimizeLoss/gradients/dense/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency
dense/Relu*
T0*(
_output_shapes
:         А
▓
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
м
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/Relu_grad/ReluGrad6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
│
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
T0*(
_output_shapes
:         А
┤
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
щ
/OptimizeLoss/gradients/dense/MatMul_grad/MatMulMatMulBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
с
1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/ReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
з
9OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/MatMul_grad/MatMul2^OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1
▒
AOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/MatMul_grad/MatMul:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
п
COptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
И
1OptimizeLoss/gradients/flatten/Reshape_grad/ShapeShapemax_pooling2d_2/MaxPool*
out_type0*
T0*
_output_shapes
:
¤
3OptimizeLoss/gradients/flatten/Reshape_grad/ReshapeReshapeAOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency1OptimizeLoss/gradients/flatten/Reshape_grad/Shape*0
_output_shapes
:         А*
T0*
Tshape0
╣
?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_4/Relumax_pooling2d_2/MaxPool3OptimizeLoss/gradients/flatten/Reshape_grad/Reshape*0
_output_shapes
:         А*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
╔
2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGradReluGrad?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_4/Relu*
T0*0
_output_shapes
:         А
╕
8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
╡
=OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
╟
EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*0
_output_shapes
:         А
└
GOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
Л
6OptimizeLoss/gradients/conv2d_4/convolution_grad/ShapeShapemax_pooling2d/MaxPool*
out_type0*
T0*
_output_shapes
:
Э
DOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_4/convolution_grad/Shapeconv2d_3/kernel/readEOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
С
8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1Const*
dtype0*%
valueB"      А      *
_output_shapes
:
А
EOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:АА*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
╪
AOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter
є
IOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:         		А
я
KOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:АА
╦
=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d/MaxPoolIOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency*0
_output_shapes
:         А*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
╟
2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGradReluGrad=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*0
_output_shapes
:         А
╕
8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
_output_shapes	
:А*
T0*
data_formatNHWC
╡
=OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
╟
EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*0
_output_shapes
:         А
└
GOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
Г
6OptimizeLoss/gradients/conv2d_3/convolution_grad/ShapeShapeconv2d_2/Relu*
out_type0*
T0*
_output_shapes
:
Э
DOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_3/convolution_grad/Shapeconv2d_2/kernel/readEOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
С
8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1Const*
dtype0*%
valueB"      @   А   *
_output_shapes
:
ў
EOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_2/Relu8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@А*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
╪
AOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter
Є
IOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:         @
ю
KOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@А
╥
2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyconv2d_2/Relu*
T0*/
_output_shapes
:         @
╖
8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
╡
=OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
╞
EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*/
_output_shapes
:         @
┐
GOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
Б
6OptimizeLoss/gradients/conv2d_2/convolution_grad/ShapeShapeconv2d/Relu*
out_type0*
T0*
_output_shapes
:
Э
DOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_2/convolution_grad/Shapeconv2d_1/kernel/readEOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
С
8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1Const*
dtype0*%
valueB"          @   *
_output_shapes
:
Ї
EOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
╪
AOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter
Є
IOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:          
э
KOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
╬
0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyconv2d/Relu*
T0*/
_output_shapes
:          
│
6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC
п
;OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp1^OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad7^OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad
╛
COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*C
_class9
75loc:@OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
T0*/
_output_shapes
:          
╖
EOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
М
4OptimizeLoss/gradients/conv2d/convolution_grad/ShapeShapefifo_queue_DequeueUpTo:1*
out_type0*
T0*
_output_shapes
:
Х
BOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputConv2DBackpropInput4OptimizeLoss/gradients/conv2d/convolution_grad/Shapeconv2d/kernel/readCOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
П
6OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1Const*
dtype0*%
valueB"             *
_output_shapes
:
√
COptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfifo_queue_DequeueUpTo:16OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
╥
?OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputD^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter
ъ
GOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:         
х
IOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1IdentityCOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
h
OptimizeLoss/loss/tagsConst*
dtype0*"
valueB BOptimizeLoss/loss*
_output_shapes
: 
}
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tags softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
╡
<OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelOptimizeLoss/learning_rate/readIOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1* 
_class
loc:@conv2d/kernel*
use_locking( *
T0*&
_output_shapes
: 
Я
:OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescentApplyGradientDescentconv2d/biasOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@conv2d/bias*
use_locking( *
T0*
_output_shapes
: 
╜
>OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_1/kernel*
use_locking( *
T0*&
_output_shapes
: @
з
<OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescentApplyGradientDescentconv2d_1/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_1/bias*
use_locking( *
T0*
_output_shapes
:@
╛
>OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_2/kernel*
use_locking( *
T0*'
_output_shapes
:@А
и
<OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescentApplyGradientDescentconv2d_2/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_2/bias*
use_locking( *
T0*
_output_shapes	
:А
┐
>OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_3/kernel*
use_locking( *
T0*(
_output_shapes
:АА
и
<OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescentApplyGradientDescentconv2d_3/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_3/bias*
use_locking( *
T0*
_output_shapes	
:А
ж
;OptimizeLoss/train/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelOptimizeLoss/learning_rate/readCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1*
_class
loc:@dense/kernel*
use_locking( *
T0* 
_output_shapes
:
АА
Ь
9OptimizeLoss/train/update_dense/bias/ApplyGradientDescentApplyGradientDescent
dense/biasOptimizeLoss/learning_rate/readDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes	
:А
о
=OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_1/kernel*
use_locking( *
T0* 
_output_shapes
:
АА
д
;OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_1/bias*
use_locking( *
T0*
_output_shapes	
:А
о
=OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescentApplyGradientDescentdense_2/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_2/kernel*
use_locking( *
T0* 
_output_shapes
:
АА
д
;OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescentApplyGradientDescentdense_2/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_2/bias*
use_locking( *
T0*
_output_shapes	
:А
о
=OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescentApplyGradientDescentdense_3/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_3/kernel*
use_locking( *
T0* 
_output_shapes
:
АА
д
;OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescentApplyGradientDescentdense_3/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_3/bias*
use_locking( *
T0*
_output_shapes	
:А
н
=OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescentApplyGradientDescentdense_4/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_4/kernel*
use_locking( *
T0*
_output_shapes
:	А

г
;OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescentApplyGradientDescentdense_4/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_4/bias*
use_locking( *
T0*
_output_shapes
:

П	
OptimizeLoss/train/updateNoOp=^OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescent;^OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescent<^OptimizeLoss/train/update_dense/kernel/ApplyGradientDescent:^OptimizeLoss/train/update_dense/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescent
Ц
OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 
Ъ
OptimizeLoss/train	AssignAddglobal_stepOptimizeLoss/train/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
╕
OptimizeLoss/control_dependencyIdentity softmax_cross_entropy_loss/value^OptimizeLoss/train*3
_class)
'%loc:@softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
m
ArgMaxArgMaxdense_5/SoftmaxArgMax/dimension*#
_output_shapes
:         *
T0*

Tidx0
U
SoftmaxSoftmaxdense_5/Softmax*
T0*'
_output_shapes
:         

T
ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
q
ArgMax_1ArgMaxdense_5/SoftmaxArgMax_1/dimension*#
_output_shapes
:         *
T0*

Tidx0
T
ArgMax_2/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
z
ArgMax_2ArgMaxfifo_queue_DequeueUpTo:2ArgMax_2/dimension*#
_output_shapes
:         *
T0*

Tidx0
P
EqualEqualArgMax_2ArgMax_1*
T0	*#
_output_shapes
:         
S
ToFloatCastEqual*

DstT0*

SrcT0
*#
_output_shapes
:         
S
accuracy/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/total
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
м
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
U
accuracy/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/count
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
о
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
O
accuracy/SizeSizeToFloat*
out_type0*
T0*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
X
accuracy/ConstConst*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Ф
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
ж
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
W
accuracy/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
U
accuracy/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
Y
accuracy/Greater_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
Y
accuracy/update_op/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: 
O

mean/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
n

mean/total
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ь
mean/total/AssignAssign
mean/total
mean/zeros*
validate_shape(*
_class
loc:@mean/total*
use_locking(*
T0*
_output_shapes
: 
g
mean/total/readIdentity
mean/total*
_class
loc:@mean/total*
T0*
_output_shapes
: 
Q
mean/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
n

mean/count
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ю
mean/count/AssignAssign
mean/countmean/zeros_1*
validate_shape(*
_class
loc:@mean/count*
use_locking(*
T0*
_output_shapes
: 
g
mean/count/readIdentity
mean/count*
_class
loc:@mean/count*
T0*
_output_shapes
: 
K
	mean/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
Q
mean/ToFloat_1Cast	mean/Size*

DstT0*

SrcT0*
_output_shapes
: 
M

mean/ConstConst*
dtype0*
valueB *
_output_shapes
: 
{
mean/SumSum softmax_cross_entropy_loss/value
mean/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Д
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
_class
loc:@mean/total*
use_locking( *
T0*
_output_shapes
: 
п
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1!^softmax_cross_entropy_loss/value*
_class
loc:@mean/count*
use_locking( *
T0*
_output_shapes
: 
S
mean/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Y
mean/GreaterGreatermean/count/readmean/Greater/y*
T0*
_output_shapes
: 
Z
mean/truedivRealDivmean/total/readmean/count/read*
T0*
_output_shapes
: 
Q
mean/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_

mean/valueSelectmean/Greatermean/truedivmean/value/e*
T0*
_output_shapes
: 
U
mean/Greater_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
^
mean/Greater_1Greatermean/AssignAdd_1mean/Greater_1/y*
T0*
_output_shapes
: 
\
mean/truediv_1RealDivmean/AssignAddmean/AssignAdd_1*
T0*
_output_shapes
: 
U
mean/update_op/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
mean/update_opSelectmean/Greater_1mean/truediv_1mean/update_op/e*
T0*
_output_shapes
: 
8

group_depsNoOp^accuracy/update_op^mean/update_op
{
eval_step/Initializer/zerosConst*
dtype0	*
_class
loc:@eval_step*
value	B	 R *
_output_shapes
: 
Л
	eval_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@eval_step*
shared_name 
к
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
validate_shape(*
_class
loc:@eval_step*
use_locking(*
T0	*
_output_shapes
: 
d
eval_step/readIdentity	eval_step*
_class
loc:@eval_step*
T0	*
_output_shapes
: 
Q
AssignAdd/valueConst*
dtype0	*
value	B	 R*
_output_shapes
: 
Д
	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
_class
loc:@eval_step*
use_locking( *
T0	*
_output_shapes
: 
у
initNoOp^global_step/Assign^conv2d/kernel/Assign^conv2d/bias/Assign^conv2d_1/kernel/Assign^conv2d_1/bias/Assign^conv2d_2/kernel/Assign^conv2d_2/bias/Assign^conv2d_3/kernel/Assign^conv2d_3/bias/Assign^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^dense_4/kernel/Assign^dense_4/bias/Assign"^OptimizeLoss/learning_rate/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1
Я
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
б
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias*
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
dtype0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias*
dtype0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
г
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
а
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializeddense_4/kernel*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializeddense_4/bias*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
└
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedOptimizeLoss/learning_rate*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedaccuracy/total*
dtype0*!
_class
loc:@accuracy/total*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedaccuracy/count*
dtype0*!
_class
loc:@accuracy/count*
_output_shapes
: 
а
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitialized
mean/total*
dtype0*
_class
loc:@mean/total*
_output_shapes
: 
а
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitialized
mean/count*
dtype0*
_class
loc:@mean/count*
_output_shapes
: 
Ю
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitialized	eval_step*
dtype0	*
_class
loc:@eval_step*
_output_shapes
: 
ы
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_24*
N*
T0
*
_output_shapes
:*

axis 
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
ш
$report_uninitialized_variables/ConstConst*
dtype0*П
valueЕBВBglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBdense_3/kernelBdense_3/biasBdense_4/kernelBdense_4/biasBOptimizeLoss/learning_rateBaccuracy/totalBaccuracy/countB
mean/totalB
mean/countB	eval_step*
_output_shapes
:
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
Й
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
┘
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
М
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
ї
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
Н
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
Н
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
с
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
п
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
N*
T0*
_output_shapes
:*

axis 
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
л
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
╦
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
_output_shapes
:*
T0*
Tshape0
О
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
█
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
_output_shapes
:*
T0
*
Tshape0
Ъ
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:         
╢
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:         
В
2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:         
g
$report_uninitialized_resources/ConstConst*
dtype0*
valueB *
_output_shapes
: 
M
concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
╝
concatConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat/axis*
N*

Tidx0*#
_output_shapes
:         *
T0
б
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
г
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 
л
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
л
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias*
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
л
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
dtype0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias*
dtype0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
е
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
в
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializeddense_4/kernel*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializeddense_4/bias*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
┬
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedOptimizeLoss/learning_rate*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
°	
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_19*
N*
T0
*
_output_shapes
:*

axis 
}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:
з
&report_uninitialized_variables_1/ConstConst*
dtype0*╠
value┬B┐Bglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBdense_3/kernelBdense_3/biasBdense_4/kernelBdense_4/biasBOptimizeLoss/learning_rate*
_output_shapes
:
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
Л
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
у
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
О
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
√
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
П
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
П
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ы
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
│
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*
N*
T0*
_output_shapes
:*

axis 
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
│
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
╤
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
_output_shapes
:*
T0*
Tshape0
Р
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
с
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
_output_shapes
:*
T0
*
Tshape0
Ю
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:         
║
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:         
И
4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:         
y
init_2NoOp^accuracy/total/Assign^accuracy/count/Assign^mean/total/Assign^mean/count/Assign^eval_step/Assign

init_all_tablesNoOp
/
group_deps_2NoOp^init_2^init_all_tables
а
Merge/MergeSummaryMergeSummaryHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullOptimizeLoss/loss*
_output_shapes
: *
N
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_89f656f60a704365917f1da6476da40e/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Щ
save/SaveV2/tensor_namesConst*
dtype0*╠
value┬B┐BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBglobal_step*
_output_shapes
:
Л
save/SaveV2/shape_and_slicesConst*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
╛
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOptimizeLoss/learning_rateconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kerneldense_4/biasdense_4/kernelglobal_step*"
dtypes
2	
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
T0*
_output_shapes
:*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst*
dtype0*/
value&B$BOptimizeLoss/learning_rate*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save/AssignAssignOptimizeLoss/learning_ratesave/RestoreV2*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBconv2d/bias*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_1Assignconv2d/biassave/RestoreV2_1*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
s
save/RestoreV2_2/tensor_namesConst*
dtype0*"
valueBBconv2d/kernel*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
┤
save/Assign_2Assignconv2d/kernelsave/RestoreV2_2*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 
s
save/RestoreV2_3/tensor_namesConst*
dtype0*"
valueBBconv2d_1/bias*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save/Assign_3Assignconv2d_1/biassave/RestoreV2_3*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
u
save/RestoreV2_4/tensor_namesConst*
dtype0*$
valueBBconv2d_1/kernel*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
╕
save/Assign_4Assignconv2d_1/kernelsave/RestoreV2_4*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @
s
save/RestoreV2_5/tensor_namesConst*
dtype0*"
valueBBconv2d_2/bias*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_5Assignconv2d_2/biassave/RestoreV2_5*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_6/tensor_namesConst*
dtype0*$
valueBBconv2d_2/kernel*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save/Assign_6Assignconv2d_2/kernelsave/RestoreV2_6*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@А
s
save/RestoreV2_7/tensor_namesConst*
dtype0*"
valueBBconv2d_3/bias*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_7Assignconv2d_3/biassave/RestoreV2_7*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_8/tensor_namesConst*
dtype0*$
valueBBconv2d_3/kernel*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save/Assign_8Assignconv2d_3/kernelsave/RestoreV2_8*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:АА
p
save/RestoreV2_9/tensor_namesConst*
dtype0*
valueBB
dense/bias*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save/Assign_9Assign
dense/biassave/RestoreV2_9*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:А
s
save/RestoreV2_10/tensor_namesConst*
dtype0*!
valueBBdense/kernel*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save/Assign_10Assigndense/kernelsave/RestoreV2_10*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
s
save/RestoreV2_11/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_11Assigndense_1/biassave/RestoreV2_11*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_12/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/Assign_12Assigndense_1/kernelsave/RestoreV2_12*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
s
save/RestoreV2_13/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_13Assigndense_2/biassave/RestoreV2_13*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_14/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/Assign_14Assigndense_2/kernelsave/RestoreV2_14*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
s
save/RestoreV2_15/tensor_namesConst*
dtype0*!
valueBBdense_3/bias*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_15Assigndense_3/biassave/RestoreV2_15*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_16/tensor_namesConst*
dtype0*#
valueBBdense_3/kernel*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/Assign_16Assigndense_3/kernelsave/RestoreV2_16*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
s
save/RestoreV2_17/tensor_namesConst*
dtype0*!
valueBBdense_4/bias*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save/Assign_17Assigndense_4/biassave/RestoreV2_17*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

u
save/RestoreV2_18/tensor_namesConst*
dtype0*#
valueBBdense_4/kernel*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
▒
save/Assign_18Assigndense_4/kernelsave/RestoreV2_18*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	А

r
save/RestoreV2_19/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2	*
_output_shapes
:
в
save/Assign_19Assignglobal_stepsave/RestoreV2_19*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
т
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19
-
save/restore_allNoOp^save/restore_shard"▀Б╡{7P     зo№п	ЕШ╩┘║R╓AJка	
Ы1∙0
9
Add
x"T
y"T
z"T"
Ttype:
2	
А
ApplyGradientDescent
var"TА

alpha"T

delta"T
out"TА"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
p
	AssignAdd
ref"TА

value"T

output_ref"TА"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
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
╚
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ю
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
э
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
о
FIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint         "
	containerstring "
shared_namestring И
4
Fill
dims

value"T
output"T"	
Ttype
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
:
Greater
x"T
y"T
z
"
Ttype:
2		
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


LogicalNot
x

y

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
┼
MaxPool

input"T
output"T"
Ttype0:
2		"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ы
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2		
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	Р
8
MergeSummary
inputs*N
summary"
Nint(0
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р
-
Neg
x"T
y"T"
Ttype:
	2	
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
К
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( И
М
QueueDequeueUpToV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint         И
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint         И
&
QueueSizeV2

handle
sizeИ
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
Й
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
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
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И

Where	
input
	
index	
&
	ZerosLike
x"T
y"T"	
Ttype*1.2.02v1.2.0-rc2-21-g12f033dй╒

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
П
global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
┤
enqueue_input/fifo_queueFIFOQueueV2*
capacityш*
component_types
2	*
_output_shapes
: *"
shapes
: ::
*
	container *
shared_name 
^
enqueue_input/PlaceholderPlaceholder*
dtype0	*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_1Placeholder*
dtype0*
shape:*
_output_shapes
:
`
enqueue_input/Placeholder_2Placeholder*
dtype0*
shape:*
_output_shapes
:
▄
$enqueue_input/fifo_queue_EnqueueManyQueueEnqueueManyV2enqueue_input/fifo_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2*

timeout_ms         *
Tcomponents
2	
g
enqueue_input/fifo_queue_CloseQueueCloseV2enqueue_input/fifo_queue*
cancel_pending_enqueues( 
i
 enqueue_input/fifo_queue_Close_1QueueCloseV2enqueue_input/fifo_queue*
cancel_pending_enqueues(
^
enqueue_input/fifo_queue_SizeQueueSizeV2enqueue_input/fifo_queue*
_output_shapes
: 
U
enqueue_input/sub/yConst*
dtype0*
value	B : *
_output_shapes
: 
m
enqueue_input/subSubenqueue_input/fifo_queue_Sizeenqueue_input/sub/y*
T0*
_output_shapes
: 
Y
enqueue_input/Maximum/xConst*
dtype0*
value	B : *
_output_shapes
: 
m
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub*
T0*
_output_shapes
: 
a
enqueue_input/CastCastenqueue_input/Maximum*

DstT0*

SrcT0*
_output_shapes
: 
X
enqueue_input/mul/yConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
b
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y*
T0*
_output_shapes
: 
╓
Menqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsConst*
dtype0*Y
valuePBN BHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full*
_output_shapes
: 
▄
Henqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullScalarSummaryMenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsenqueue_input/mul*
T0*
_output_shapes
: 
[
fifo_queue_DequeueUpTo/nConst*
dtype0*
value
B :А*
_output_shapes
: 
ъ
fifo_queue_DequeueUpToQueueDequeueUpToV2enqueue_input/fifo_queuefifo_queue_DequeueUpTo/n*

timeout_ms         *
component_types
2	*Q
_output_shapes?
=:         :         :         

й
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0* 
_class
loc:@conv2d/kernel*%
valueB"             *
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *nзо╜*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *nзо=*
_output_shapes
: 
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*&
_output_shapes
: *
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv2d/kernel
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
│
conv2d/kernel
VariableV2*
	container *&
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@conv2d/kernel*
shared_name 
╙
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 
А
conv2d/kernel/readIdentityconv2d/kernel* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
К
conv2d/bias/Initializer/zerosConst*
dtype0*
_class
loc:@conv2d/bias*
valueB *    *
_output_shapes
: 
Ч
conv2d/bias
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv2d/bias*
shared_name 
╢
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
_class
loc:@conv2d/bias*
T0*
_output_shapes
: 
q
conv2d/convolution/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
q
 conv2d/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
▄
conv2d/convolutionConv2Dfifo_queue_DequeueUpTo:1conv2d/kernel/read*/
_output_shapes
:          *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Р
conv2d/BiasAddBiasAddconv2d/convolutionconv2d/bias/read*
data_formatNHWC*
T0*/
_output_shapes
:          
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:          
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *═╠L╜*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *═╠L=*
_output_shapes
: 
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*&
_output_shapes
: @*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_1/kernel
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
╖
conv2d_1/kernel
VariableV2*
	container *&
_output_shapes
: @*
dtype0*
shape: @*"
_class
loc:@conv2d_1/kernel*
shared_name 
█
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
О
conv2d_1/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_1/bias*
valueB@*    *
_output_shapes
:@
Ы
conv2d_1/bias
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@* 
_class
loc:@conv2d_1/bias*
shared_name 
╛
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
t
conv2d_1/bias/readIdentityconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
T0*
_output_shapes
:@
s
conv2d_2/convolution/ShapeConst*
dtype0*%
valueB"          @   *
_output_shapes
:
s
"conv2d_2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
╙
conv2d_2/convolutionConv2Dconv2d/Reluconv2d_1/kernel/read*/
_output_shapes
:         @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ц
conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_1/bias/read*
data_formatNHWC*
T0*/
_output_shapes
:         @
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_2/kernel*%
valueB"      @   А   *
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *є╡╜*
_output_shapes
: 
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *є╡=*
_output_shapes
: 
ў
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*'
_output_shapes
:@А*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_2/kernel
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*
_output_shapes
: 
ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@А
ч
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@А
╣
conv2d_2/kernel
VariableV2*
	container *'
_output_shapes
:@А*
dtype0*
shape:@А*"
_class
loc:@conv2d_2/kernel*
shared_name 
▄
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@А
З
conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@А
Р
conv2d_2/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_2/bias*
valueBА*    *
_output_shapes	
:А
Э
conv2d_2/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А* 
_class
loc:@conv2d_2/bias*
shared_name 
┐
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:А
u
conv2d_2/bias/readIdentityconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
T0*
_output_shapes	
:А
s
conv2d_3/convolution/ShapeConst*
dtype0*%
valueB"      @   А   *
_output_shapes
:
s
"conv2d_3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
╓
conv2d_3/convolutionConv2Dconv2d_2/Reluconv2d_2/kernel/read*0
_output_shapes
:         А*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ч
conv2d_3/BiasAddBiasAddconv2d_3/convolutionconv2d_2/bias/read*
data_formatNHWC*
T0*0
_output_shapes
:         А
b
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*0
_output_shapes
:         А
╜
max_pooling2d/MaxPoolMaxPoolconv2d_3/Relu*0
_output_shapes
:         		А*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_3/kernel*%
valueB"      А      *
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *═╠╠╝*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *═╠╠<*
_output_shapes
: 
°
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*(
_output_shapes
:АА*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_3/kernel
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*
_output_shapes
: 
Ў
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:АА
ш
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:АА
╗
conv2d_3/kernel
VariableV2*
	container *(
_output_shapes
:АА*
dtype0*
shape:АА*"
_class
loc:@conv2d_3/kernel*
shared_name 
▌
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:АА
И
conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:АА
Р
conv2d_3/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_3/bias*
valueBА*    *
_output_shapes	
:А
Э
conv2d_3/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А* 
_class
loc:@conv2d_3/bias*
shared_name 
┐
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:А
u
conv2d_3/bias/readIdentityconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
T0*
_output_shapes	
:А
s
conv2d_4/convolution/ShapeConst*
dtype0*%
valueB"      А      *
_output_shapes
:
s
"conv2d_4/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
▐
conv2d_4/convolutionConv2Dmax_pooling2d/MaxPoolconv2d_3/kernel/read*0
_output_shapes
:         А*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ч
conv2d_4/BiasAddBiasAddconv2d_4/convolutionconv2d_3/bias/read*
data_formatNHWC*
T0*0
_output_shapes
:         А
b
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*0
_output_shapes
:         А
┐
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu*0
_output_shapes
:         А*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
d
flatten/ShapeShapemax_pooling2d_2/MaxPool*
out_type0*
T0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
е
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
W
flatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
x
flatten/ProdProdflatten/strided_sliceflatten/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
Z
flatten/stack/0Const*
dtype0*
valueB :
         *
_output_shapes
: 
n
flatten/stackPackflatten/stack/0flatten/Prod*
_output_shapes
:*

axis *
T0*
N
Г
flatten/ReshapeReshapemax_pooling2d_2/MaxPoolflatten/stack*
Tshape0*
T0*(
_output_shapes
:         А
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"      *
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *╫│]╜*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *╫│]=*
_output_shapes
: 
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:
АА
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:
АА
е
dense/kernel
VariableV2*
	container * 
_output_shapes
:
АА*
dtype0*
shape:
АА*
_class
loc:@dense/kernel*
shared_name 
╔
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
w
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:
АА
К
dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueBА*    *
_output_shapes	
:А
Ч

dense/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А*
_class
loc:@dense/bias*
shared_name 
│
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:А
l
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes	
:А
У
dense/MatMulMatMulflatten/Reshapedense/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         А
Б
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:         А
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB"      *
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *╫│]╜*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *╫│]=*
_output_shapes
: 
э
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_1/kernel
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
: 
ъ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
АА
▄
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
АА
й
dense_1/kernel
VariableV2*
	container * 
_output_shapes
:
АА*
dtype0*
shape:
АА*!
_class
loc:@dense_1/kernel*
shared_name 
╤
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
АА
О
dense_1/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_1/bias*
valueBА*    *
_output_shapes	
:А
Ы
dense_1/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А*
_class
loc:@dense_1/bias*
shared_name 
╗
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:А
Т
dense_2/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         А
З
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:         А
X
dense_2/ReluReludense_2/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB"      *
_output_shapes
:
Х
-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *╫│]╜*
_output_shapes
: 
Х
-dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *╫│]=*
_output_shapes
: 
э
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_2/kernel
╓
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
: 
ъ
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:
АА
▄
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:
АА
й
dense_2/kernel
VariableV2*
	container * 
_output_shapes
:
АА*
dtype0*
shape:
АА*!
_class
loc:@dense_2/kernel*
shared_name 
╤
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
}
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:
АА
О
dense_2/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_2/bias*
valueBА*    *
_output_shapes	
:А
Ы
dense_2/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А*
_class
loc:@dense_2/bias*
shared_name 
╗
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:А
r
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes	
:А
Ф
dense_3/MatMulMatMuldense_2/Reludense_2/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         А
З
dense_3/BiasAddBiasAdddense_3/MatMuldense_2/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:         А
X
dense_3/ReluReludense_3/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB"      *
_output_shapes
:
Х
-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *╫│]╜*
_output_shapes
: 
Х
-dense_3/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *╫│]=*
_output_shapes
: 
э
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
АА*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_3/kernel
╓
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes
: 
ъ
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:
АА
▄
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:
АА
й
dense_3/kernel
VariableV2*
	container * 
_output_shapes
:
АА*
dtype0*
shape:
АА*!
_class
loc:@dense_3/kernel*
shared_name 
╤
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
}
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:
АА
О
dense_3/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_3/bias*
valueBА*    *
_output_shapes	
:А
Ы
dense_3/bias
VariableV2*
	container *
_output_shapes	
:А*
dtype0*
shape:А*
_class
loc:@dense_3/bias*
shared_name 
╗
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:А
r
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0*
_output_shapes	
:А
Ф
dense_4/MatMulMatMuldense_3/Reludense_3/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:         А
З
dense_4/BiasAddBiasAdddense_4/MatMuldense_3/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:         А
X
dense_4/ReluReludense_4/BiasAdd*
T0*(
_output_shapes
:         А
г
/dense_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB"   
   *
_output_shapes
:
Х
-dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *шЬ╜*
_output_shapes
: 
Х
-dense_4/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *шЬ=*
_output_shapes
: 
ь
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
_output_shapes
:	А
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_4/kernel
╓
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
: 
щ
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	А

█
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	А

з
dense_4/kernel
VariableV2*
	container *
_output_shapes
:	А
*
dtype0*
shape:	А
*!
_class
loc:@dense_4/kernel*
shared_name 
╨
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	А

|
dense_4/kernel/readIdentitydense_4/kernel*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	А

М
dense_4/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_4/bias*
valueB
*    *
_output_shapes
:

Щ
dense_4/bias
VariableV2*
	container *
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense_4/bias*
shared_name 
║
dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

q
dense_4/bias/readIdentitydense_4/bias*
_class
loc:@dense_4/bias*
T0*
_output_shapes
:

У
dense_5/MatMulMatMuldense_4/Reludense_4/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:         

Ж
dense_5/BiasAddBiasAdddense_5/MatMuldense_4/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:         

]
dense_5/SoftmaxSoftmaxdense_5/BiasAdd*
T0*'
_output_shapes
:         

В
softmax_cross_entropy_loss/CastCastfifo_queue_DequeueUpTo:2*

DstT0*

SrcT0*'
_output_shapes
:         

a
softmax_cross_entropy_loss/RankConst*
dtype0*
value	B :*
_output_shapes
: 
o
 softmax_cross_entropy_loss/ShapeShapedense_5/Softmax*
out_type0*
T0*
_output_shapes
:
c
!softmax_cross_entropy_loss/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
q
"softmax_cross_entropy_loss/Shape_1Shapedense_5/Softmax*
out_type0*
T0*
_output_shapes
:
b
 softmax_cross_entropy_loss/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Л
softmax_cross_entropy_loss/SubSub!softmax_cross_entropy_loss/Rank_1 softmax_cross_entropy_loss/Sub/y*
T0*
_output_shapes
: 
И
&softmax_cross_entropy_loss/Slice/beginPacksoftmax_cross_entropy_loss/Sub*
_output_shapes
:*

axis *
T0*
N
o
%softmax_cross_entropy_loss/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╬
 softmax_cross_entropy_loss/SliceSlice"softmax_cross_entropy_loss/Shape_1&softmax_cross_entropy_loss/Slice/begin%softmax_cross_entropy_loss/Slice/size*
Index0*
T0*
_output_shapes
:
}
*softmax_cross_entropy_loss/concat/values_0Const*
dtype0*
valueB:
         *
_output_shapes
:
h
&softmax_cross_entropy_loss/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
▌
!softmax_cross_entropy_loss/concatConcatV2*softmax_cross_entropy_loss/concat/values_0 softmax_cross_entropy_loss/Slice&softmax_cross_entropy_loss/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
к
"softmax_cross_entropy_loss/ReshapeReshapedense_5/Softmax!softmax_cross_entropy_loss/concat*
Tshape0*
T0*0
_output_shapes
:                  
c
!softmax_cross_entropy_loss/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
Б
"softmax_cross_entropy_loss/Shape_2Shapesoftmax_cross_entropy_loss/Cast*
out_type0*
T0*
_output_shapes
:
d
"softmax_cross_entropy_loss/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
П
 softmax_cross_entropy_loss/Sub_1Sub!softmax_cross_entropy_loss/Rank_2"softmax_cross_entropy_loss/Sub_1/y*
T0*
_output_shapes
: 
М
(softmax_cross_entropy_loss/Slice_1/beginPack softmax_cross_entropy_loss/Sub_1*
_output_shapes
:*

axis *
T0*
N
q
'softmax_cross_entropy_loss/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╘
"softmax_cross_entropy_loss/Slice_1Slice"softmax_cross_entropy_loss/Shape_2(softmax_cross_entropy_loss/Slice_1/begin'softmax_cross_entropy_loss/Slice_1/size*
Index0*
T0*
_output_shapes
:

,softmax_cross_entropy_loss/concat_1/values_0Const*
dtype0*
valueB:
         *
_output_shapes
:
j
(softmax_cross_entropy_loss/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
х
#softmax_cross_entropy_loss/concat_1ConcatV2,softmax_cross_entropy_loss/concat_1/values_0"softmax_cross_entropy_loss/Slice_1(softmax_cross_entropy_loss/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
╛
$softmax_cross_entropy_loss/Reshape_1Reshapesoftmax_cross_entropy_loss/Cast#softmax_cross_entropy_loss/concat_1*
Tshape0*
T0*0
_output_shapes
:                  
╪
#softmax_cross_entropy_loss/xentropySoftmaxCrossEntropyWithLogits"softmax_cross_entropy_loss/Reshape$softmax_cross_entropy_loss/Reshape_1*
T0*?
_output_shapes-
+:         :                  
d
"softmax_cross_entropy_loss/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 
Н
 softmax_cross_entropy_loss/Sub_2Subsoftmax_cross_entropy_loss/Rank"softmax_cross_entropy_loss/Sub_2/y*
T0*
_output_shapes
: 
r
(softmax_cross_entropy_loss/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:
Л
'softmax_cross_entropy_loss/Slice_2/sizePack softmax_cross_entropy_loss/Sub_2*
_output_shapes
:*

axis *
T0*
N
█
"softmax_cross_entropy_loss/Slice_2Slice softmax_cross_entropy_loss/Shape(softmax_cross_entropy_loss/Slice_2/begin'softmax_cross_entropy_loss/Slice_2/size*
Index0*
T0*#
_output_shapes
:         
┤
$softmax_cross_entropy_loss/Reshape_2Reshape#softmax_cross_entropy_loss/xentropy"softmax_cross_entropy_loss/Slice_2*
Tshape0*
T0*#
_output_shapes
:         
|
7softmax_cross_entropy_loss/assert_broadcastable/weightsConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
А
=softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
dtype0*
valueB *
_output_shapes
: 
~
<softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
dtype0*
value	B : *
_output_shapes
: 
а
<softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape$softmax_cross_entropy_loss/Reshape_2*
out_type0*
T0*
_output_shapes
:
}
;softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
dtype0*
value	B :*
_output_shapes
: 
S
Ksoftmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
╣
&softmax_cross_entropy_loss/ToFloat_1/xConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  А?*
_output_shapes
: 
б
softmax_cross_entropy_loss/MulMul$softmax_cross_entropy_loss/Reshape_2&softmax_cross_entropy_loss/ToFloat_1/x*
T0*#
_output_shapes
:         
╕
 softmax_cross_entropy_loss/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
е
softmax_cross_entropy_loss/SumSumsoftmax_cross_entropy_loss/Mul softmax_cross_entropy_loss/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
┴
.softmax_cross_entropy_loss/num_present/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
о
,softmax_cross_entropy_loss/num_present/EqualEqual&softmax_cross_entropy_loss/ToFloat_1/x.softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
─
1softmax_cross_entropy_loss/num_present/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
╟
6softmax_cross_entropy_loss/num_present/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
╔
6softmax_cross_entropy_loss/num_present/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  А?*
_output_shapes
: 
╔
0softmax_cross_entropy_loss/num_present/ones_likeFill6softmax_cross_entropy_loss/num_present/ones_like/Shape6softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
ы
-softmax_cross_entropy_loss/num_present/SelectSelect,softmax_cross_entropy_loss/num_present/Equal1softmax_cross_entropy_loss/num_present/zeros_like0softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
ь
[softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
ъ
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B : *
_output_shapes
: 
М
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape$softmax_cross_entropy_loss/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
out_type0*
T0*
_output_shapes
:
щ
Ysoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B :*
_output_shapes
: 
┐
isoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
ц
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape$softmax_cross_entropy_loss/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
out_type0*
T0*
_output_shapes
:
╟
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  А?*
_output_shapes
: 
М
Bsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:         
р
8softmax_cross_entropy_loss/num_present/broadcast_weightsMul-softmax_cross_entropy_loss/num_present/SelectBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
─
,softmax_cross_entropy_loss/num_present/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
╙
&softmax_cross_entropy_loss/num_presentSum8softmax_cross_entropy_loss/num_present/broadcast_weights,softmax_cross_entropy_loss/num_present/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
│
"softmax_cross_entropy_loss/Const_1ConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
й
 softmax_cross_entropy_loss/Sum_1Sumsoftmax_cross_entropy_loss/Sum"softmax_cross_entropy_loss/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
╖
$softmax_cross_entropy_loss/Greater/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
Ь
"softmax_cross_entropy_loss/GreaterGreater&softmax_cross_entropy_loss/num_present$softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
╡
"softmax_cross_entropy_loss/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
Ц
 softmax_cross_entropy_loss/EqualEqual&softmax_cross_entropy_loss/num_present"softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
╗
*softmax_cross_entropy_loss/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
╜
*softmax_cross_entropy_loss/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  А?*
_output_shapes
: 
е
$softmax_cross_entropy_loss/ones_likeFill*softmax_cross_entropy_loss/ones_like/Shape*softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
╝
!softmax_cross_entropy_loss/SelectSelect softmax_cross_entropy_loss/Equal$softmax_cross_entropy_loss/ones_like&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
П
softmax_cross_entropy_loss/divRealDiv softmax_cross_entropy_loss/Sum_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
╕
%softmax_cross_entropy_loss/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
╢
 softmax_cross_entropy_loss/valueSelect"softmax_cross_entropy_loss/Greatersoftmax_cross_entropy_loss/div%softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
а
,OptimizeLoss/learning_rate/Initializer/ConstConst*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
valueB
 *
╫#<*
_output_shapes
: 
н
OptimizeLoss/learning_rate
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *-
_class#
!loc:@OptimizeLoss/learning_rate*
shared_name 
ю
!OptimizeLoss/learning_rate/AssignAssignOptimizeLoss/learning_rate,OptimizeLoss/learning_rate/Initializer/Const*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 
Ч
OptimizeLoss/learning_rate/readIdentityOptimizeLoss/learning_rate*-
_class#
!loc:@OptimizeLoss/learning_rate*
T0*
_output_shapes
: 
_
OptimizeLoss/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
a
OptimizeLoss/gradients/ConstConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
А
OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/ShapeOptimizeLoss/gradients/Const*
T0*
_output_shapes
: 
М
GOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeConst*
dtype0*
valueB
 *    *
_output_shapes
: 
°
COptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectSelect"softmax_cross_entropy_loss/GreaterOptimizeLoss/gradients/FillGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
·
EOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1Select"softmax_cross_entropy_loss/GreaterGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeOptimizeLoss/gradients/Fill*
T0*
_output_shapes
: 
у
MOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectF^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectN^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select*
T0*
_output_shapes
: 
ї
WOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1N^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1*
T0*
_output_shapes
: 
Г
@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
м
POptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ш
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivRealDivUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/SumSumBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivPOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
■
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape*
Tshape0*
T0*
_output_shapes
: 
И
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/NegNeg softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
╙
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Neg!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
┘
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Г
>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulMulUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
Ы
@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1Sum>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulROptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Д
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
▀
KOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1
щ
SOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape*
T0*
_output_shapes
: 
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1*
T0*
_output_shapes
: 
Н
JOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
valueB *
_output_shapes
: 
Я
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyJOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
: 
О
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
dtype0*
valueB *
_output_shapes
: 
П
AOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileTileDOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeKOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
: 
Н
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
dtype0*
valueB
 *    *
_output_shapes
: 
▓
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/SelectSelect softmax_cross_entropy_loss/EqualUOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1HOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
┤
FOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select_1Select softmax_cross_entropy_loss/EqualHOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/zeros_likeUOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
ц
NOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/SelectG^OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select_1
є
VOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/SelectO^OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select*
T0*
_output_shapes
: 
∙
XOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1IdentityFOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select_1O^OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/group_deps*Y
_classO
MKloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/Select_1*
T0*
_output_shapes
: 
Т
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
Н
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeAOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileHOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
Ю
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ShapeShapesoftmax_cross_entropy_loss/Mul*
out_type0*
T0*
_output_shapes
:
Н
?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/TileTileBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
д
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeShape$softmax_cross_entropy_loss/Reshape_2*
out_type0*
T0*
_output_shapes
:
Е
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
м
POptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
▄
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulMul?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile&softmax_cross_entropy_loss/ToFloat_1/x*
T0*#
_output_shapes
:         
Ч
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/SumSum>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulPOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Л
BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape*
Tshape0*
T0*#
_output_shapes
:         
▄
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1Mul$softmax_cross_entropy_loss/Reshape_2?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:         
Э
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1ROptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
Д
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
▀
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
Ў
SOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape*
T0*#
_output_shapes
:         
я
UOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1*
T0*
_output_shapes
: 
Ъ
POptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
┤
JOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeXOptimizeLoss/gradients/softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1POptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
└
HOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/ShapeShape8softmax_cross_entropy_loss/num_present/broadcast_weights*
out_type0*
T0*
_output_shapes
:
е
GOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/TileTileJOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/ReshapeHOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
Э
ZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
▐
\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1ShapeBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
out_type0*
T0*
_output_shapes
:
·
jOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Ъ
XOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMulGOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/TileBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:         
х
XOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumXOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/muljOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
╠
\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeXOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
Tshape0*
T0*
_output_shapes
: 
З
ZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1Mul-softmax_cross_entropy_loss/num_present/SelectGOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:         
ы
ZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1SumZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1lOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
▀
^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1ReshapeZOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:         
н
eOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOp]^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
╤
mOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentity\OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapef^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*o
_classe
caloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
T0*
_output_shapes
: 
ф
oOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identity^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1f^OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*q
_classg
ecloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*
T0*#
_output_shapes
:         
о
dOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
■
bOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumoOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1dOptimizeLoss/gradients/softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
й
FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ShapeShape#softmax_cross_entropy_loss/xentropy*
out_type0*
T0*
_output_shapes
:
м
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/Shape*
Tshape0*
T0*#
_output_shapes
:         
Р
!OptimizeLoss/gradients/zeros_like	ZerosLike%softmax_cross_entropy_loss/xentropy:1*
T0*0
_output_shapes
:                  
Щ
NOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
░
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims
ExpandDimsHOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeNOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
°
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulMulJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims%softmax_cross_entropy_loss/xentropy:1*
T0*0
_output_shapes
:                  
У
DOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ShapeShapedense_5/Softmax*
out_type0*
T0*
_output_shapes
:
Ь
FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ReshapeReshapeCOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulDOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Shape*
Tshape0*
T0*'
_output_shapes
:         

┴
/OptimizeLoss/gradients/dense_5/Softmax_grad/mulMulFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshapedense_5/Softmax*
T0*'
_output_shapes
:         

Л
AOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
ї
/OptimizeLoss/gradients/dense_5/Softmax_grad/SumSum/OptimizeLoss/gradients/dense_5/Softmax_grad/mulAOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indices*

Tidx0*
T0*
	keep_dims( *#
_output_shapes
:         
К
9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
ъ
3OptimizeLoss/gradients/dense_5/Softmax_grad/ReshapeReshape/OptimizeLoss/gradients/dense_5/Softmax_grad/Sum9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shape*
Tshape0*
T0*'
_output_shapes
:         
х
/OptimizeLoss/gradients/dense_5/Softmax_grad/subSubFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshape3OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape*
T0*'
_output_shapes
:         

м
1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1Mul/OptimizeLoss/gradients/dense_5/Softmax_grad/subdense_5/Softmax*
T0*'
_output_shapes
:         

╡
7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
data_formatNHWC*
T0*
_output_shapes
:

▓
<OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/Softmax_grad/mul_18^OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad
║
DOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
T0*'
_output_shapes
:         

╗
FOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

я
1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
с
3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/ReluDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	А

н
;OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
╢
EOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	А

├
1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencydense_4/Relu*
T0*(
_output_shapes
:         А
╢
7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
▓
<OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad
╗
DOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
T0*(
_output_shapes
:         А
╝
FOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
я
1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
т
3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/ReluDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
н
;OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
╖
EOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
├
1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencydense_3/Relu*
T0*(
_output_shapes
:         А
╢
7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
▓
<OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad
╗
DOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
T0*(
_output_shapes
:         А
╝
FOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
я
1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
т
3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/ReluDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
н
;OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
╖
EOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
├
1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencydense_2/Relu*
T0*(
_output_shapes
:         А
╢
7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
▓
<OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad
╗
DOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
T0*(
_output_shapes
:         А
╝
FOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
я
1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
р
3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1MatMul
dense/ReluDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
н
;OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1
╣
COptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
╖
EOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
┐
/OptimizeLoss/gradients/dense/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency
dense/Relu*
T0*(
_output_shapes
:         А
▓
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
м
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/Relu_grad/ReluGrad6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
│
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
T0*(
_output_shapes
:         А
┤
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
щ
/OptimizeLoss/gradients/dense/MatMul_grad/MatMulMatMulBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:         А
с
1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/ReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
АА
з
9OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/MatMul_grad/MatMul2^OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1
▒
AOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/MatMul_grad/MatMul:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul*
T0*(
_output_shapes
:         А
п
COptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
И
1OptimizeLoss/gradients/flatten/Reshape_grad/ShapeShapemax_pooling2d_2/MaxPool*
out_type0*
T0*
_output_shapes
:
¤
3OptimizeLoss/gradients/flatten/Reshape_grad/ReshapeReshapeAOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency1OptimizeLoss/gradients/flatten/Reshape_grad/Shape*
Tshape0*
T0*0
_output_shapes
:         А
╣
?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_4/Relumax_pooling2d_2/MaxPool3OptimizeLoss/gradients/flatten/Reshape_grad/Reshape*0
_output_shapes
:         А*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
╔
2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGradReluGrad?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_4/Relu*
T0*0
_output_shapes
:         А
╕
8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
╡
=OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
╟
EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*0
_output_shapes
:         А
└
GOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
Л
6OptimizeLoss/gradients/conv2d_4/convolution_grad/ShapeShapemax_pooling2d/MaxPool*
out_type0*
T0*
_output_shapes
:
Э
DOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_4/convolution_grad/Shapeconv2d_3/kernel/readEOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
С
8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1Const*
dtype0*%
valueB"      А      *
_output_shapes
:
А
EOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:АА*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
╪
AOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter
є
IOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInput*
T0*0
_output_shapes
:         		А
я
KOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:АА
╦
=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d/MaxPoolIOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency*0
_output_shapes
:         А*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
╟
2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGradReluGrad=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*0
_output_shapes
:         А
╕
8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:А
╡
=OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
╟
EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*0
_output_shapes
:         А
└
GOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
Г
6OptimizeLoss/gradients/conv2d_3/convolution_grad/ShapeShapeconv2d_2/Relu*
out_type0*
T0*
_output_shapes
:
Э
DOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_3/convolution_grad/Shapeconv2d_2/kernel/readEOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
С
8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1Const*
dtype0*%
valueB"      @   А   *
_output_shapes
:
ў
EOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_2/Relu8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@А*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
╪
AOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter
Є
IOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:         @
ю
KOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@А
╥
2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyconv2d_2/Relu*
T0*/
_output_shapes
:         @
╖
8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
╡
=OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
╞
EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*/
_output_shapes
:         @
┐
GOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
Б
6OptimizeLoss/gradients/conv2d_2/convolution_grad/ShapeShapeconv2d/Relu*
out_type0*
T0*
_output_shapes
:
Э
DOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_2/convolution_grad/Shapeconv2d_1/kernel/readEOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
С
8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1Const*
dtype0*%
valueB"          @   *
_output_shapes
:
Ї
EOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
╪
AOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter
Є
IOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:          
э
KOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
╬
0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyconv2d/Relu*
T0*/
_output_shapes
:          
│
6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
: 
п
;OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp1^OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad7^OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad
╛
COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*C
_class9
75loc:@OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
T0*/
_output_shapes
:          
╖
EOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
М
4OptimizeLoss/gradients/conv2d/convolution_grad/ShapeShapefifo_queue_DequeueUpTo:1*
out_type0*
T0*
_output_shapes
:
Х
BOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputConv2DBackpropInput4OptimizeLoss/gradients/conv2d/convolution_grad/Shapeconv2d/kernel/readCOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
П
6OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1Const*
dtype0*%
valueB"             *
_output_shapes
:
√
COptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfifo_queue_DequeueUpTo:16OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
╥
?OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputD^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter
ъ
GOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:         
х
IOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1IdentityCOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
h
OptimizeLoss/loss/tagsConst*
dtype0*"
valueB BOptimizeLoss/loss*
_output_shapes
: 
}
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tags softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
╡
<OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelOptimizeLoss/learning_rate/readIOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1* 
_class
loc:@conv2d/kernel*
use_locking( *
T0*&
_output_shapes
: 
Я
:OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescentApplyGradientDescentconv2d/biasOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@conv2d/bias*
use_locking( *
T0*
_output_shapes
: 
╜
>OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_1/kernel*
use_locking( *
T0*&
_output_shapes
: @
з
<OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescentApplyGradientDescentconv2d_1/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_1/bias*
use_locking( *
T0*
_output_shapes
:@
╛
>OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_2/kernel*
use_locking( *
T0*'
_output_shapes
:@А
и
<OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescentApplyGradientDescentconv2d_2/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_2/bias*
use_locking( *
T0*
_output_shapes	
:А
┐
>OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_3/kernel*
use_locking( *
T0*(
_output_shapes
:АА
и
<OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescentApplyGradientDescentconv2d_3/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_3/bias*
use_locking( *
T0*
_output_shapes	
:А
ж
;OptimizeLoss/train/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelOptimizeLoss/learning_rate/readCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1*
_class
loc:@dense/kernel*
use_locking( *
T0* 
_output_shapes
:
АА
Ь
9OptimizeLoss/train/update_dense/bias/ApplyGradientDescentApplyGradientDescent
dense/biasOptimizeLoss/learning_rate/readDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes	
:А
о
=OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_1/kernel*
use_locking( *
T0* 
_output_shapes
:
АА
д
;OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_1/bias*
use_locking( *
T0*
_output_shapes	
:А
о
=OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescentApplyGradientDescentdense_2/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_2/kernel*
use_locking( *
T0* 
_output_shapes
:
АА
д
;OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescentApplyGradientDescentdense_2/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_2/bias*
use_locking( *
T0*
_output_shapes	
:А
о
=OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescentApplyGradientDescentdense_3/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_3/kernel*
use_locking( *
T0* 
_output_shapes
:
АА
д
;OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescentApplyGradientDescentdense_3/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_3/bias*
use_locking( *
T0*
_output_shapes	
:А
н
=OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescentApplyGradientDescentdense_4/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_4/kernel*
use_locking( *
T0*
_output_shapes
:	А

г
;OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescentApplyGradientDescentdense_4/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_4/bias*
use_locking( *
T0*
_output_shapes
:

П	
OptimizeLoss/train/updateNoOp=^OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescent;^OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescent<^OptimizeLoss/train/update_dense/kernel/ApplyGradientDescent:^OptimizeLoss/train/update_dense/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescent
Ц
OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 
Ъ
OptimizeLoss/train	AssignAddglobal_stepOptimizeLoss/train/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
╕
OptimizeLoss/control_dependencyIdentity softmax_cross_entropy_loss/value^OptimizeLoss/train*3
_class)
'%loc:@softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
m
ArgMaxArgMaxdense_5/SoftmaxArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:         
U
SoftmaxSoftmaxdense_5/Softmax*
T0*'
_output_shapes
:         

T
ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
q
ArgMax_1ArgMaxdense_5/SoftmaxArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:         
T
ArgMax_2/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
z
ArgMax_2ArgMaxfifo_queue_DequeueUpTo:2ArgMax_2/dimension*

Tidx0*
T0*#
_output_shapes
:         
P
EqualEqualArgMax_2ArgMax_1*
T0	*#
_output_shapes
:         
S
ToFloatCastEqual*

DstT0*

SrcT0
*#
_output_shapes
:         
S
accuracy/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/total
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
м
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
U
accuracy/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/count
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
о
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
O
accuracy/SizeSizeToFloat*
out_type0*
T0*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
X
accuracy/ConstConst*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
Ф
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
ж
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
W
accuracy/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
U
accuracy/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
Y
accuracy/Greater_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
Y
accuracy/update_op/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: 
O

mean/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
n

mean/total
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
Ь
mean/total/AssignAssign
mean/total
mean/zeros*
validate_shape(*
_class
loc:@mean/total*
use_locking(*
T0*
_output_shapes
: 
g
mean/total/readIdentity
mean/total*
_class
loc:@mean/total*
T0*
_output_shapes
: 
Q
mean/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
n

mean/count
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
Ю
mean/count/AssignAssign
mean/countmean/zeros_1*
validate_shape(*
_class
loc:@mean/count*
use_locking(*
T0*
_output_shapes
: 
g
mean/count/readIdentity
mean/count*
_class
loc:@mean/count*
T0*
_output_shapes
: 
K
	mean/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
Q
mean/ToFloat_1Cast	mean/Size*

DstT0*

SrcT0*
_output_shapes
: 
M

mean/ConstConst*
dtype0*
valueB *
_output_shapes
: 
{
mean/SumSum softmax_cross_entropy_loss/value
mean/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
Д
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
_class
loc:@mean/total*
use_locking( *
T0*
_output_shapes
: 
п
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1!^softmax_cross_entropy_loss/value*
_class
loc:@mean/count*
use_locking( *
T0*
_output_shapes
: 
S
mean/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Y
mean/GreaterGreatermean/count/readmean/Greater/y*
T0*
_output_shapes
: 
Z
mean/truedivRealDivmean/total/readmean/count/read*
T0*
_output_shapes
: 
Q
mean/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
_

mean/valueSelectmean/Greatermean/truedivmean/value/e*
T0*
_output_shapes
: 
U
mean/Greater_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
^
mean/Greater_1Greatermean/AssignAdd_1mean/Greater_1/y*
T0*
_output_shapes
: 
\
mean/truediv_1RealDivmean/AssignAddmean/AssignAdd_1*
T0*
_output_shapes
: 
U
mean/update_op/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
mean/update_opSelectmean/Greater_1mean/truediv_1mean/update_op/e*
T0*
_output_shapes
: 
8

group_depsNoOp^accuracy/update_op^mean/update_op
{
eval_step/Initializer/zerosConst*
dtype0	*
_class
loc:@eval_step*
value	B	 R *
_output_shapes
: 
Л
	eval_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@eval_step*
shared_name 
к
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
validate_shape(*
_class
loc:@eval_step*
use_locking(*
T0	*
_output_shapes
: 
d
eval_step/readIdentity	eval_step*
_class
loc:@eval_step*
T0	*
_output_shapes
: 
Q
AssignAdd/valueConst*
dtype0	*
value	B	 R*
_output_shapes
: 
Д
	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
_class
loc:@eval_step*
use_locking( *
T0	*
_output_shapes
: 
у
initNoOp^global_step/Assign^conv2d/kernel/Assign^conv2d/bias/Assign^conv2d_1/kernel/Assign^conv2d_1/bias/Assign^conv2d_2/kernel/Assign^conv2d_2/bias/Assign^conv2d_3/kernel/Assign^conv2d_3/bias/Assign^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^dense_4/kernel/Assign^dense_4/bias/Assign"^OptimizeLoss/learning_rate/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1
Я
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
б
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias*
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
й
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
dtype0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
е
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias*
dtype0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
г
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
а
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializeddense_4/kernel*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
д
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializeddense_4/bias*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
└
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedOptimizeLoss/learning_rate*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedaccuracy/total*
dtype0*!
_class
loc:@accuracy/total*
_output_shapes
: 
и
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedaccuracy/count*
dtype0*!
_class
loc:@accuracy/count*
_output_shapes
: 
а
7report_uninitialized_variables/IsVariableInitialized_22IsVariableInitialized
mean/total*
dtype0*
_class
loc:@mean/total*
_output_shapes
: 
а
7report_uninitialized_variables/IsVariableInitialized_23IsVariableInitialized
mean/count*
dtype0*
_class
loc:@mean/count*
_output_shapes
: 
Ю
7report_uninitialized_variables/IsVariableInitialized_24IsVariableInitialized	eval_step*
dtype0	*
_class
loc:@eval_step*
_output_shapes
: 
ы
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_217report_uninitialized_variables/IsVariableInitialized_227report_uninitialized_variables/IsVariableInitialized_237report_uninitialized_variables/IsVariableInitialized_24*
_output_shapes
:*

axis *
T0
*
N
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
ш
$report_uninitialized_variables/ConstConst*
dtype0*П
valueЕBВBglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBdense_3/kernelBdense_3/biasBdense_4/kernelBdense_4/biasBOptimizeLoss/learning_rateBaccuracy/totalBaccuracy/countB
mean/totalB
mean/countB	eval_step*
_output_shapes
:
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
Й
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
┘
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
М
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
ї
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Л
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
Н
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
Н
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
с
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
п
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
_output_shapes
:*

axis *
T0*
N
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
л
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
╦
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
Tshape0*
T0*
_output_shapes
:
О
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
█
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
Tshape0*
T0
*
_output_shapes
:
Ъ
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:         
╢
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:         
В
2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:         
g
$report_uninitialized_resources/ConstConst*
dtype0*
valueB *
_output_shapes
: 
M
concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
╝
concatConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat/axis*#
_output_shapes
:         *

Tidx0*
T0*
N
б
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
г
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 
л
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
л
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias*
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
л
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
dtype0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
з
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias*
dtype0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
е
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
в
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 
к
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializeddense_4/kernel*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
ж
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializeddense_4/bias*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
┬
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedOptimizeLoss/learning_rate*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
°	
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_19*
_output_shapes
:*

axis *
T0
*
N
}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:
з
&report_uninitialized_variables_1/ConstConst*
dtype0*╠
value┬B┐Bglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBdense_3/kernelBdense_3/biasBdense_4/kernelBdense_4/biasBOptimizeLoss/learning_rate*
_output_shapes
:
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
Л
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
у
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 
О
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
√
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Н
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
П
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
П
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ы
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
│
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*
_output_shapes
:*

axis *
T0*
N
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
│
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
╤
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
Tshape0*
T0*
_output_shapes
:
Р
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
с
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
Tshape0*
T0
*
_output_shapes
:
Ю
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:         
║
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:         
И
4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:         
y
init_2NoOp^accuracy/total/Assign^accuracy/count/Assign^mean/total/Assign^mean/count/Assign^eval_step/Assign

init_all_tablesNoOp
/
group_deps_2NoOp^init_2^init_all_tables
а
Merge/MergeSummaryMergeSummaryHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullOptimizeLoss/loss*
N*
_output_shapes
: 
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_89f656f60a704365917f1da6476da40e/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Щ
save/SaveV2/tensor_namesConst*
dtype0*╠
value┬B┐BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBglobal_step*
_output_shapes
:
Л
save/SaveV2/shape_and_slicesConst*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
╛
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOptimizeLoss/learning_rateconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kerneldense_4/biasdense_4/kernelglobal_step*"
dtypes
2	
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*

axis *
T0*
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst*
dtype0*/
value&B$BOptimizeLoss/learning_rate*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save/AssignAssignOptimizeLoss/learning_ratesave/RestoreV2*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBconv2d/bias*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
д
save/Assign_1Assignconv2d/biassave/RestoreV2_1*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
s
save/RestoreV2_2/tensor_namesConst*
dtype0*"
valueBBconv2d/kernel*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
┤
save/Assign_2Assignconv2d/kernelsave/RestoreV2_2*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 
s
save/RestoreV2_3/tensor_namesConst*
dtype0*"
valueBBconv2d_1/bias*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save/Assign_3Assignconv2d_1/biassave/RestoreV2_3*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
u
save/RestoreV2_4/tensor_namesConst*
dtype0*$
valueBBconv2d_1/kernel*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
╕
save/Assign_4Assignconv2d_1/kernelsave/RestoreV2_4*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @
s
save/RestoreV2_5/tensor_namesConst*
dtype0*"
valueBBconv2d_2/bias*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_5Assignconv2d_2/biassave/RestoreV2_5*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_6/tensor_namesConst*
dtype0*$
valueBBconv2d_2/kernel*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
╣
save/Assign_6Assignconv2d_2/kernelsave/RestoreV2_6*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@А
s
save/RestoreV2_7/tensor_namesConst*
dtype0*"
valueBBconv2d_3/bias*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_7Assignconv2d_3/biassave/RestoreV2_7*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_8/tensor_namesConst*
dtype0*$
valueBBconv2d_3/kernel*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
║
save/Assign_8Assignconv2d_3/kernelsave/RestoreV2_8*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:АА
p
save/RestoreV2_9/tensor_namesConst*
dtype0*
valueBB
dense/bias*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
г
save/Assign_9Assign
dense/biassave/RestoreV2_9*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:А
s
save/RestoreV2_10/tensor_namesConst*
dtype0*!
valueBBdense/kernel*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save/Assign_10Assigndense/kernelsave/RestoreV2_10*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
s
save/RestoreV2_11/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_11Assigndense_1/biassave/RestoreV2_11*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_12/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/Assign_12Assigndense_1/kernelsave/RestoreV2_12*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
s
save/RestoreV2_13/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_13Assigndense_2/biassave/RestoreV2_13*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_14/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/Assign_14Assigndense_2/kernelsave/RestoreV2_14*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
s
save/RestoreV2_15/tensor_namesConst*
dtype0*!
valueBBdense_3/bias*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
й
save/Assign_15Assigndense_3/biassave/RestoreV2_15*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:А
u
save/RestoreV2_16/tensor_namesConst*
dtype0*#
valueBBdense_3/kernel*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
▓
save/Assign_16Assigndense_3/kernelsave/RestoreV2_16*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
s
save/RestoreV2_17/tensor_namesConst*
dtype0*!
valueBBdense_4/bias*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save/Assign_17Assigndense_4/biassave/RestoreV2_17*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

u
save/RestoreV2_18/tensor_namesConst*
dtype0*#
valueBBdense_4/kernel*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
▒
save/Assign_18Assigndense_4/kernelsave/RestoreV2_18*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	А

r
save/RestoreV2_19/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2	*
_output_shapes
:
в
save/Assign_19Assignglobal_stepsave/RestoreV2_19*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
т
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19
-
save/restore_allNoOp^save/restore_shard""U
ready_for_local_init_op:
8
6report_uninitialized_variables_1/boolean_mask/Gather:0" 
global_step

global_step:0"Й	
trainable_variablesёю
=
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:0
7
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:0
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
=
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
=
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:0
C
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:0
=
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:0
:
dense/kernel:0dense/kernel/Assigndense/kernel/read:0
4
dense/bias:0dense/bias/Assigndense/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
:
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:0
@
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:0
:
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:0
@
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:0
:
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:0"!
local_init_op

group_deps_2"Ю

	variablesР
Н

7
global_step:0global_step/Assignglobal_step/read:0
=
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:0
7
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:0
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
=
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
=
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:0
C
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:0
=
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:0
:
dense/kernel:0dense/kernel/Assigndense/kernel/read:0
4
dense/bias:0dense/bias/Assigndense/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
:
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:0
@
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:0
:
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:0
@
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:0
:
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:0
d
OptimizeLoss/learning_rate:0!OptimizeLoss/learning_rate/Assign!OptimizeLoss/learning_rate/read:0"0
losses&
$
"softmax_cross_entropy_loss/value:0"p
	summariesc
a
Jenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full:0
OptimizeLoss/loss:0""
train_op

OptimizeLoss/train"b
local_variablesO
M
accuracy/total:0
accuracy/count:0
mean/total:0
mean/count:0
eval_step:0"Ю
queue_runnersМЙ
Ж
enqueue_input/fifo_queue$enqueue_input/fifo_queue_EnqueueManyenqueue_input/fifo_queue_Close" enqueue_input/fifo_queue_Close_1*"J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"&

summary_op

Merge/MergeSummary:0"
	eval_step

eval_step:0"
ready_op


concat:0"
init_op

group_deps_1ис╝?+       Ж├K	жя╩┘║R╓A*

lossi]@

accuracyг#╣=ДяИk,       Їо╠E	sKнQ╗R╓Aш*

lossHG@

accuracy>y╕>`@g╩