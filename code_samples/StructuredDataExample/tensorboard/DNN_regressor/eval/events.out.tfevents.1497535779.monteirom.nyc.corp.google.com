       БK"	  └HЦPоAbrain.Event:2с;ѓё a     кё╗Ё	д]ЛHЦPоA"з┴

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step
Ј
global_step
VariableV2*
	container *
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
shape: *
shared_name 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
Х
enqueue_input/fifo_queueFIFOQueueV2*
	container *
_output_shapes
: *
shared_name * 
component_types
2		*
capacityУ*
shapes
: : : : : : : : : 
^
enqueue_input/PlaceholderPlaceholder*
dtype0	*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_1Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_2Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_4Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_5Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_6Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_7Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_8Placeholder*
dtype0*
_output_shapes
:*
shape:
љ
$enqueue_input/fifo_queue_EnqueueManyQueueEnqueueManyV2enqueue_input/fifo_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5enqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8*
Tcomponents
2		*

timeout_ms         
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
dtype0*
_output_shapes
: *
value	B : 
m
enqueue_input/subSubenqueue_input/fifo_queue_Sizeenqueue_input/sub/y*
T0*
_output_shapes
: 
Y
enqueue_input/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B : 
m
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub*
T0*
_output_shapes
: 
a
enqueue_input/CastCastenqueue_input/Maximum*

SrcT0*
_output_shapes
: *

DstT0
X
enqueue_input/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *oЃ:
b
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y*
T0*
_output_shapes
: 
о
Menqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsConst*
dtype0*
_output_shapes
: *Y
valuePBN BHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full
▄
Henqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullScalarSummaryMenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsenqueue_input/mul*
T0*
_output_shapes
: 
Z
fifo_queue_DequeueUpTo/nConst*
dtype0*
_output_shapes
: *
value	B :
й
fifo_queue_DequeueUpToQueueDequeueUpToV2enqueue_input/fifo_queuefifo_queue_DequeueUpTo/n*Ю
_output_shapesі
Є:         :         :         :         :         :         :         :         :         *

timeout_ms         * 
component_types
2		
А
Vdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
љ
Rdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:4Vdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
Ы
`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/ShapeShapeRdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dims*
T0*
out_type0*
_output_shapes
:
§
_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/CastCast`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Shape*

SrcT0*
_output_shapes
:*

DstT0	
ц
cdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
┌
cdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/NotEqualNotEqualRdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dimscdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Cast_1/x*
T0*'
_output_shapes
:         
э
`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/WhereWherecdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/NotEqual*'
_output_shapes
:         
╗
hdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
у
bdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/ReshapeReshapeRdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dimshdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Reshape/shape*
T0*#
_output_shapes
:         *
Tshape0
┐
ndnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       
┴
pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
┴
pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
═
hdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_sliceStridedSlice`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Wherendnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stackpdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stack_1pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:         *

begin_mask*
Index0
┴
pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
├
rdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
├
rdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
┘
jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1StridedSlice`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Wherepdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stackrdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stack_1rdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:         *

begin_mask*
Index0
Є
bdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/unstackUnpack_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Cast*
T0	*	
num*
_output_shapes
: : *

axis 
ѕ
`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/stackPackddnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
т
^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/MulMuljdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/stack*
T0	*'
_output_shapes
:         
║
pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
ѓ
^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/SumSum^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Mulpdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:         *
	keep_dims( 
П
^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/AddAddhdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Sum*
T0	*#
_output_shapes
:         
І
adnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/GatherGatherbdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Reshape^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Add*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
ѓ
Mdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/lookupStringToHashBucketFastadnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Gather*
num_buckets2*#
_output_shapes
:         
▒
gdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
│
idnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
│
idnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Д
adnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_sliceStridedSlice_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Castgdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stackidnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stack_1idnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*
_output_shapes
:*

begin_mask*
Index0
│
idnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
х
kdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
х
kdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
»
cdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1StridedSlice_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Castidnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stackkdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stack_1kdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*
_output_shapes
:*

begin_mask *
Index0
Б
Ydnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
я
Xdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/ProdProdcdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1Ydnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 
 
cdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat/values_1PackXdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/Prod*
T0	*
_output_shapes
:*
N*

axis 
А
_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╔
Zdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concatConcatV2adnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slicecdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat/values_1_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat/axis*

Tidx0*
T0	*
_output_shapes
:*
N
└
adnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshapeSparseReshape`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Where_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/CastZdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat*-
_output_shapes
:         :
з
jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshape/IdentityIdentityMdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/lookup*
T0	*#
_output_shapes
:         
Г
bdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SparseToDense/default_valueConst*
dtype0	*
_output_shapes
: *
valueB	 R
         
Я
Tdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SparseToDenseSparseToDenseadnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshapecdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshape:1jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshape/Identitybdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SparseToDense/default_value*
T0	*0
_output_shapes
:                  *
validate_indices(*
Tindices0	
Ў
Tdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
Џ
Vdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
ќ
Tdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :2
ю
Wdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
Ю
Xdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ћ
Ndnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hotOneHotTdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SparseToDenseTdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/depthWdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/on_valueXdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/off_value*
axis         *
TI0	*4
_output_shapes"
 :                  2*
T0
д
\dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
╬
Jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SumSumNdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot\dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/Sum/reduction_indices*

Tidx0*
T0*'
_output_shapes
:         2*
	keep_dims( 
Е
^dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
а
Zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:1^dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
ѓ
hdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/ShapeShapeZdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dims*
T0*
out_type0*
_output_shapes
:
Ї
gdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/CastCasthdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Shape*

SrcT0*
_output_shapes
:*

DstT0	
г
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
Ы
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/NotEqualNotEqualZdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dimskdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Cast_1/x*
T0*'
_output_shapes
:         
Є
hdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/WhereWherekdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/NotEqual*'
_output_shapes
:         
├
pdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
 
jdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/ReshapeReshapeZdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dimspdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Reshape/shape*
T0*#
_output_shapes
:         *
Tshape0
К
vdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       
╔
xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
╔
xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ш
pdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_sliceStridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Wherevdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stackxdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stack_1xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:         *

begin_mask*
Index0
╔
xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
╦
zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
╦
zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ђ
rdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1StridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Wherexdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stackzdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stack_1zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:         *

begin_mask*
Index0
Ќ
jdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/unstackUnpackgdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Cast*
T0	*	
num*
_output_shapes
: : *

axis 
ў
hdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/stackPackldnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
§
fdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/MulMulrdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1hdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/stack*
T0	*'
_output_shapes
:         
┬
xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
џ
fdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/SumSumfdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Mulxdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:         *
	keep_dims( 
ш
fdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/AddAddpdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slicefdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Sum*
T0	*#
_output_shapes
:         
Б
idnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/GatherGatherjdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Reshapefdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Add*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
Г
[dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/ConstConst*
dtype0*
_output_shapes
:*
valueBBtwoBfour
ю
Zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/SizeConst*
dtype0*
_output_shapes
: *
value	B :
Б
adnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Б
adnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
«
[dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/rangeRangeadnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range/startZdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/Sizeadnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range/delta*

Tidx0*
_output_shapes
:
Ш
]dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/ToInt64Cast[dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
Ь
`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table	HashTable*
	container *
	key_dtype0*
use_node_name_sharing( *
_output_shapes
:*
value_dtype0	*
shared_name 
▒
fdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
         
Е
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table/table_initInitializeTable`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table[dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/Const]dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/ToInt64*

Tval0	*

Tkey0*s
_classi
geloc:@dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table
┘
`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/hash_table_LookupLookupTableFind`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_tableidnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Gatherfdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table/Const*#
_output_shapes
:         *

Tout0	*	
Tin0*s
_classi
geloc:@dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table
╣
odnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
╗
qdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
╗
qdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
¤
idnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_sliceStridedSlicegdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Castodnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stackqdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stack_1qdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*
_output_shapes
:*

begin_mask*
Index0
╗
qdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
й
sdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
й
sdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
О
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1StridedSlicegdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Castqdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stacksdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stack_1sdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*
_output_shapes
:*

begin_mask *
Index0
Ф
adnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ш
`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/ProdProdkdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1adnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 
Ј
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat/values_1Pack`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/Prod*
T0	*
_output_shapes
:*
N*

axis 
Е
gdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ж
bdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concatConcatV2idnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slicekdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat/values_1gdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat/axis*

Tidx0*
T0	*
_output_shapes
:*
N
Я
idnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshapeSparseReshapehdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Wheregdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Castbdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat*-
_output_shapes
:         :
ј
rdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshape/IdentityIdentity`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/hash_table_Lookup*
T0	*#
_output_shapes
:         
х
jdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SparseToDense/default_valueConst*
dtype0	*
_output_shapes
: *
valueB	 R
         
ѕ
\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SparseToDenseSparseToDenseidnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshapekdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshape:1rdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshape/Identityjdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SparseToDense/default_value*
T0	*0
_output_shapes
:                  *
validate_indices(*
Tindices0	
А
\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
Б
^dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
ъ
\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :
ц
_dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
Ц
`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
й
Vdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hotOneHot\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SparseToDense\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/depth_dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/on_value`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/off_value*
axis         *
TI0	*4
_output_shapes"
 :                  *
T0
«
ddnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Т
Rdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SumSumVdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hotddnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/Sum/reduction_indices*

Tidx0*
T0*'
_output_shapes
:         *
	keep_dims( 
Џ
Pdnn/input_from_feature_columns/input_from_feature_columns/height/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
ё
Ldnn/input_from_feature_columns/input_from_feature_columns/height/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:6Pdnn/input_from_feature_columns/input_from_feature_columns/height/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
Ъ
Tdnn/input_from_feature_columns/input_from_feature_columns/horsepower/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
ї
Pdnn/input_from_feature_columns/input_from_feature_columns/horsepower/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:3Tdnn/input_from_feature_columns/input_from_feature_columns/horsepower/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
Џ
Pdnn/input_from_feature_columns/input_from_feature_columns/length/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
ё
Ldnn/input_from_feature_columns/input_from_feature_columns/length/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:5Pdnn/input_from_feature_columns/input_from_feature_columns/length/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
џ
Odnn/input_from_feature_columns/input_from_feature_columns/width/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
ѓ
Kdnn/input_from_feature_columns/input_from_feature_columns/width/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:7Odnn/input_from_feature_columns/input_from_feature_columns/width/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
Є
Ednn/input_from_feature_columns/input_from_feature_columns/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
х
@dnn/input_from_feature_columns/input_from_feature_columns/concatConcatV2Jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SumRdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SumLdnn/input_from_feature_columns/input_from_feature_columns/height/expand_dimsPdnn/input_from_feature_columns/input_from_feature_columns/horsepower/expand_dimsLdnn/input_from_feature_columns/input_from_feature_columns/length/expand_dimsKdnn/input_from_feature_columns/input_from_feature_columns/width/expand_dimsEdnn/input_from_feature_columns/input_from_feature_columns/concat/axis*

Tidx0*
T0*'
_output_shapes
:         8*
N
К
Adnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"8   2   *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╣
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *аsЙ*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╣
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *аs>*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
А
Idnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
seed2 *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
dtype0*
T0*
_output_shapes

:82*

seed 
ъ
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
░
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:82*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
б
;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:82*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╔
 dnn/hiddenlayer_0/weights/part_0
VariableV2*
	container *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes

:82*
shape
:82*
shared_name 
Ќ
'dnn/hiddenlayer_0/weights/part_0/AssignAssign dnn/hiddenlayer_0/weights/part_0;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:82*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
▒
%dnn/hiddenlayer_0/weights/part_0/readIdentity dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes

:82*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
▓
1dnn/hiddenlayer_0/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:2*
valueB2*    *2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
┐
dnn/hiddenlayer_0/biases/part_0
VariableV2*
	container *2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
dtype0*
_output_shapes
:2*
shape:2*
shared_name 
є
&dnn/hiddenlayer_0/biases/part_0/AssignAssigndnn/hiddenlayer_0/biases/part_01dnn/hiddenlayer_0/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:2*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
ф
$dnn/hiddenlayer_0/biases/part_0/readIdentitydnn/hiddenlayer_0/biases/part_0*
T0*
_output_shapes
:2*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
u
dnn/hiddenlayer_0/weightsIdentity%dnn/hiddenlayer_0/weights/part_0/read*
T0*
_output_shapes

:82
О
dnn/hiddenlayer_0/MatMulMatMul@dnn/input_from_feature_columns/input_from_feature_columns/concatdnn/hiddenlayer_0/weights*
T0*'
_output_shapes
:         2*
transpose_a( *
transpose_b( 
o
dnn/hiddenlayer_0/biasesIdentity$dnn/hiddenlayer_0/biases/part_0/read*
T0*
_output_shapes
:2
А
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/biases*
T0*'
_output_shapes
:         2*
data_formatNHWC
y
$dnn/hiddenlayer_0/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:         2
[
dnn/zero_fraction/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
љ
dnn/zero_fraction/EqualEqual$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:         2
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

SrcT0
*'
_output_shapes
:         2*

DstT0
h
dnn/zero_fraction/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Ї
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
а
2dnn/dnn/hiddenlayer_0_fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_0_fraction_of_zero_values
Ф
-dnn/dnn/hiddenlayer_0_fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0_fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 
Ё
$dnn/dnn/hiddenlayer_0_activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_0_activation
А
 dnn/dnn/hiddenlayer_0_activationHistogramSummary$dnn/dnn/hiddenlayer_0_activation/tag$dnn/hiddenlayer_0/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
К
Adnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"2      *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╣
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ї7їЙ*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╣
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ї7ї>*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
А
Idnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
seed2 *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
dtype0*
T0*
_output_shapes

:2*

seed 
ъ
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
░
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:2*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
б
;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:2*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╔
 dnn/hiddenlayer_1/weights/part_0
VariableV2*
	container *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes

:2*
shape
:2*
shared_name 
Ќ
'dnn/hiddenlayer_1/weights/part_0/AssignAssign dnn/hiddenlayer_1/weights/part_0;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:2*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
▒
%dnn/hiddenlayer_1/weights/part_0/readIdentity dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes

:2*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
▓
1dnn/hiddenlayer_1/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
┐
dnn/hiddenlayer_1/biases/part_0
VariableV2*
	container *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
dtype0*
_output_shapes
:*
shape:*
shared_name 
є
&dnn/hiddenlayer_1/biases/part_0/AssignAssigndnn/hiddenlayer_1/biases/part_01dnn/hiddenlayer_1/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
ф
$dnn/hiddenlayer_1/biases/part_0/readIdentitydnn/hiddenlayer_1/biases/part_0*
T0*
_output_shapes
:*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
u
dnn/hiddenlayer_1/weightsIdentity%dnn/hiddenlayer_1/weights/part_0/read*
T0*
_output_shapes

:2
╗
dnn/hiddenlayer_1/MatMulMatMul$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/hiddenlayer_1/weights*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
o
dnn/hiddenlayer_1/biasesIdentity$dnn/hiddenlayer_1/biases/part_0/read*
T0*
_output_shapes
:
А
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/biases*
T0*'
_output_shapes
:         *
data_formatNHWC
y
$dnn/hiddenlayer_1/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:         
]
dnn/zero_fraction_1/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
ћ
dnn/zero_fraction_1/EqualEqual$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:         
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

SrcT0
*'
_output_shapes
:         *

DstT0
j
dnn/zero_fraction_1/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Њ
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
а
2dnn/dnn/hiddenlayer_1_fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_1_fraction_of_zero_values
Г
-dnn/dnn/hiddenlayer_1_fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1_fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 
Ё
$dnn/dnn/hiddenlayer_1_activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_1_activation
А
 dnn/dnn/hiddenlayer_1_activationHistogramSummary$dnn/dnn/hiddenlayer_1_activation/tag$dnn/hiddenlayer_1/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
К
Adnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╣
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЭKкЙ*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╣
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЭKк>*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
А
Idnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shape*
seed2 *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
dtype0*
T0*
_output_shapes

:
*

seed 
ъ
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
░
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:
*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
б
;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:
*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╔
 dnn/hiddenlayer_2/weights/part_0
VariableV2*
	container *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
dtype0*
_output_shapes

:
*
shape
:
*
shared_name 
Ќ
'dnn/hiddenlayer_2/weights/part_0/AssignAssign dnn/hiddenlayer_2/weights/part_0;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:
*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
▒
%dnn/hiddenlayer_2/weights/part_0/readIdentity dnn/hiddenlayer_2/weights/part_0*
T0*
_output_shapes

:
*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
▓
1dnn/hiddenlayer_2/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:
*
valueB
*    *2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
┐
dnn/hiddenlayer_2/biases/part_0
VariableV2*
	container *2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
dtype0*
_output_shapes
:
*
shape:
*
shared_name 
є
&dnn/hiddenlayer_2/biases/part_0/AssignAssigndnn/hiddenlayer_2/biases/part_01dnn/hiddenlayer_2/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:
*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
ф
$dnn/hiddenlayer_2/biases/part_0/readIdentitydnn/hiddenlayer_2/biases/part_0*
T0*
_output_shapes
:
*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
u
dnn/hiddenlayer_2/weightsIdentity%dnn/hiddenlayer_2/weights/part_0/read*
T0*
_output_shapes

:

╗
dnn/hiddenlayer_2/MatMulMatMul$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/hiddenlayer_2/weights*
T0*'
_output_shapes
:         
*
transpose_a( *
transpose_b( 
o
dnn/hiddenlayer_2/biasesIdentity$dnn/hiddenlayer_2/biases/part_0/read*
T0*
_output_shapes
:

А
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/biases*
T0*'
_output_shapes
:         
*
data_formatNHWC
y
$dnn/hiddenlayer_2/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:         

]
dnn/zero_fraction_2/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
ћ
dnn/zero_fraction_2/EqualEqual$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:         

|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*'
_output_shapes
:         
*

DstT0
j
dnn/zero_fraction_2/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Њ
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
а
2dnn/dnn/hiddenlayer_2_fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_2_fraction_of_zero_values
Г
-dnn/dnn/hiddenlayer_2_fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2_fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 
Ё
$dnn/dnn/hiddenlayer_2_activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_2_activation
А
 dnn/dnn/hiddenlayer_2_activationHistogramSummary$dnn/dnn/hiddenlayer_2_activation/tag$dnn/hiddenlayer_2/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
╣
:dnn/logits/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"
      *,
_class"
 loc:@dnn/logits/weights/part_0
Ф
8dnn/logits/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *І=┐*,
_class"
 loc:@dnn/logits/weights/part_0
Ф
8dnn/logits/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *І=?*,
_class"
 loc:@dnn/logits/weights/part_0
ї
Bdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn/logits/weights/part_0/Initializer/random_uniform/shape*
seed2 *,
_class"
 loc:@dnn/logits/weights/part_0*
dtype0*
T0*
_output_shapes

:
*

seed 
ѓ
8dnn/logits/weights/part_0/Initializer/random_uniform/subSub8dnn/logits/weights/part_0/Initializer/random_uniform/max8dnn/logits/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *,
_class"
 loc:@dnn/logits/weights/part_0
ћ
8dnn/logits/weights/part_0/Initializer/random_uniform/mulMulBdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn/logits/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:
*,
_class"
 loc:@dnn/logits/weights/part_0
є
4dnn/logits/weights/part_0/Initializer/random_uniformAdd8dnn/logits/weights/part_0/Initializer/random_uniform/mul8dnn/logits/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:
*,
_class"
 loc:@dnn/logits/weights/part_0
╗
dnn/logits/weights/part_0
VariableV2*
	container *,
_class"
 loc:@dnn/logits/weights/part_0*
dtype0*
_output_shapes

:
*
shape
:
*
shared_name 
ч
 dnn/logits/weights/part_0/AssignAssigndnn/logits/weights/part_04dnn/logits/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:
*
validate_shape(*
use_locking(*,
_class"
 loc:@dnn/logits/weights/part_0
ю
dnn/logits/weights/part_0/readIdentitydnn/logits/weights/part_0*
T0*
_output_shapes

:
*,
_class"
 loc:@dnn/logits/weights/part_0
ц
*dnn/logits/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *+
_class!
loc:@dnn/logits/biases/part_0
▒
dnn/logits/biases/part_0
VariableV2*
	container *+
_class!
loc:@dnn/logits/biases/part_0*
dtype0*
_output_shapes
:*
shape:*
shared_name 
Ж
dnn/logits/biases/part_0/AssignAssigndnn/logits/biases/part_0*dnn/logits/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/biases/part_0
Ћ
dnn/logits/biases/part_0/readIdentitydnn/logits/biases/part_0*
T0*
_output_shapes
:*+
_class!
loc:@dnn/logits/biases/part_0
g
dnn/logits/weightsIdentitydnn/logits/weights/part_0/read*
T0*
_output_shapes

:

Г
dnn/logits/MatMulMatMul$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/logits/weights*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
a
dnn/logits/biasesIdentitydnn/logits/biases/part_0/read*
T0*
_output_shapes
:
ї
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/biases*
T0*'
_output_shapes
:         *
data_formatNHWC
]
dnn/zero_fraction_3/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
ѓ
dnn/zero_fraction_3/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_3/zero*
T0*'
_output_shapes
:         
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*'
_output_shapes
:         *

DstT0
j
dnn/zero_fraction_3/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Њ
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
њ
+dnn/dnn/logits_fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *7
value.B, B&dnn/dnn/logits_fraction_of_zero_values
Ъ
&dnn/dnn/logits_fraction_of_zero_valuesScalarSummary+dnn/dnn/logits_fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits_activation/tagConst*
dtype0*
_output_shapes
: **
value!B Bdnn/dnn/logits_activation
Ђ
dnn/dnn/logits_activationHistogramSummarydnn/dnn/logits_activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
і
&dnn/regression_head/predictions/scoresSqueezednn/logits/BiasAdd*
T0*#
_output_shapes
:         *
squeeze_dims

і
(dnn/regression_head/predictions/IdentityIdentity&dnn/regression_head/predictions/scores*
T0*#
_output_shapes
:         
~
4dnn/regression_head/mean_squared_loss/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
╠
0dnn/regression_head/mean_squared_loss/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:84dnn/regression_head/mean_squared_loss/ExpandDims/dim*
T0*'
_output_shapes
:         *

Tdim0
е
)dnn/regression_head/mean_squared_loss/subSubdnn/logits/BiasAdd0dnn/regression_head/mean_squared_loss/ExpandDims*
T0*'
_output_shapes
:         
ї
%dnn/regression_head/mean_squared_lossSquare)dnn/regression_head/mean_squared_loss/sub*
T0*'
_output_shapes
:         
Ђ
0dnn/regression_head/mean_squared_loss/loss/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
╔
*dnn/regression_head/mean_squared_loss/lossMean%dnn/regression_head/mean_squared_loss0dnn/regression_head/mean_squared_loss/loss/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
k
&dnn/regression_head/ScalarSummary/tagsConst*
dtype0*
_output_shapes
: *
valueB
 Bloss
Д
!dnn/regression_head/ScalarSummaryScalarSummary&dnn/regression_head/ScalarSummary/tags*dnn/regression_head/mean_squared_loss/loss*
T0*
_output_shapes
: 
k
&dnn/regression_head/metrics/mean/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
і
&dnn/regression_head/metrics/mean/total
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
ї
-dnn/regression_head/metrics/mean/total/AssignAssign&dnn/regression_head/metrics/mean/total&dnn/regression_head/metrics/mean/zeros*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*9
_class/
-+loc:@dnn/regression_head/metrics/mean/total
╗
+dnn/regression_head/metrics/mean/total/readIdentity&dnn/regression_head/metrics/mean/total*
T0*
_output_shapes
: *9
_class/
-+loc:@dnn/regression_head/metrics/mean/total
m
(dnn/regression_head/metrics/mean/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
і
&dnn/regression_head/metrics/mean/count
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
ј
-dnn/regression_head/metrics/mean/count/AssignAssign&dnn/regression_head/metrics/mean/count(dnn/regression_head/metrics/mean/zeros_1*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*9
_class/
-+loc:@dnn/regression_head/metrics/mean/count
╗
+dnn/regression_head/metrics/mean/count/readIdentity&dnn/regression_head/metrics/mean/count*
T0*
_output_shapes
: *9
_class/
-+loc:@dnn/regression_head/metrics/mean/count
g
%dnn/regression_head/metrics/mean/SizeConst*
dtype0*
_output_shapes
: *
value	B :
Ѕ
*dnn/regression_head/metrics/mean/ToFloat_1Cast%dnn/regression_head/metrics/mean/Size*

SrcT0*
_output_shapes
: *

DstT0
i
&dnn/regression_head/metrics/mean/ConstConst*
dtype0*
_output_shapes
: *
valueB 
й
$dnn/regression_head/metrics/mean/SumSum*dnn/regression_head/mean_squared_loss/loss&dnn/regression_head/metrics/mean/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
З
*dnn/regression_head/metrics/mean/AssignAdd	AssignAdd&dnn/regression_head/metrics/mean/total$dnn/regression_head/metrics/mean/Sum*
T0*
_output_shapes
: *
use_locking( *9
_class/
-+loc:@dnn/regression_head/metrics/mean/total
Е
,dnn/regression_head/metrics/mean/AssignAdd_1	AssignAdd&dnn/regression_head/metrics/mean/count*dnn/regression_head/metrics/mean/ToFloat_1+^dnn/regression_head/mean_squared_loss/loss*
T0*
_output_shapes
: *
use_locking( *9
_class/
-+loc:@dnn/regression_head/metrics/mean/count
o
*dnn/regression_head/metrics/mean/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
Г
(dnn/regression_head/metrics/mean/GreaterGreater+dnn/regression_head/metrics/mean/count/read*dnn/regression_head/metrics/mean/Greater/y*
T0*
_output_shapes
: 
«
(dnn/regression_head/metrics/mean/truedivRealDiv+dnn/regression_head/metrics/mean/total/read+dnn/regression_head/metrics/mean/count/read*
T0*
_output_shapes
: 
m
(dnn/regression_head/metrics/mean/value/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
¤
&dnn/regression_head/metrics/mean/valueSelect(dnn/regression_head/metrics/mean/Greater(dnn/regression_head/metrics/mean/truediv(dnn/regression_head/metrics/mean/value/e*
T0*
_output_shapes
: 
q
,dnn/regression_head/metrics/mean/Greater_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
▓
*dnn/regression_head/metrics/mean/Greater_1Greater,dnn/regression_head/metrics/mean/AssignAdd_1,dnn/regression_head/metrics/mean/Greater_1/y*
T0*
_output_shapes
: 
░
*dnn/regression_head/metrics/mean/truediv_1RealDiv*dnn/regression_head/metrics/mean/AssignAdd,dnn/regression_head/metrics/mean/AssignAdd_1*
T0*
_output_shapes
: 
q
,dnn/regression_head/metrics/mean/update_op/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
█
*dnn/regression_head/metrics/mean/update_opSelect*dnn/regression_head/metrics/mean/Greater_1*dnn/regression_head/metrics/mean/truediv_1,dnn/regression_head/metrics/mean/update_op/e*
T0*
_output_shapes
: 
?

group_depsNoOp+^dnn/regression_head/metrics/mean/update_op
{
eval_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@eval_step
І
	eval_step
VariableV2*
	container *
_class
loc:@eval_step*
dtype0	*
_output_shapes
: *
shape: *
shared_name 
ф
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@eval_step
d
eval_step/readIdentity	eval_step*
T0	*
_output_shapes
: *
_class
loc:@eval_step
Q
AssignAdd/valueConst*
dtype0	*
_output_shapes
: *
value	B	 R
ё
	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
T0	*
_output_shapes
: *
use_locking( *
_class
loc:@eval_step
▀
initNoOp^global_step/Assign(^dnn/hiddenlayer_0/weights/part_0/Assign'^dnn/hiddenlayer_0/biases/part_0/Assign(^dnn/hiddenlayer_1/weights/part_0/Assign'^dnn/hiddenlayer_1/biases/part_0/Assign(^dnn/hiddenlayer_2/weights/part_0/Assign'^dnn/hiddenlayer_2/biases/part_0/Assign!^dnn/logits/weights/part_0/Assign ^dnn/logits/biases/part_0/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1
Ъ
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
╦
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitialized dnn/hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╔
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializeddnn/hiddenlayer_0/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
╦
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitialized dnn/hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╔
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializeddnn/hiddenlayer_1/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
╦
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitialized dnn/hiddenlayer_2/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╔
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializeddnn/hiddenlayer_2/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
й
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializeddnn/logits/weights/part_0*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn/logits/weights/part_0
╗
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializeddnn/logits/biases/part_0*
dtype0*
_output_shapes
: *+
_class!
loc:@dnn/logits/biases/part_0
О
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitialized&dnn/regression_head/metrics/mean/total*
dtype0*
_output_shapes
: *9
_class/
-+loc:@dnn/regression_head/metrics/mean/total
п
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized&dnn/regression_head/metrics/mean/count*
dtype0*
_output_shapes
: *9
_class/
-+loc:@dnn/regression_head/metrics/mean/count
ъ
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitialized	eval_step*
dtype0	*
_output_shapes
: *
_class
loc:@eval_step
є
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_11*
T0
*
_output_shapes
:*
N*

axis 
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
н
$report_uninitialized_variables/ConstConst*
dtype0*
_output_shapes
:*ч
valueыBЬBglobal_stepB dnn/hiddenlayer_0/weights/part_0Bdnn/hiddenlayer_0/biases/part_0B dnn/hiddenlayer_1/weights/part_0Bdnn/hiddenlayer_1/biases/part_0B dnn/hiddenlayer_2/weights/part_0Bdnn/hiddenlayer_2/biases/part_0Bdnn/logits/weights/part_0Bdnn/logits/biases/part_0B&dnn/regression_head/metrics/mean/totalB&dnn/regression_head/metrics/mean/countB	eval_step
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
Ѕ
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
І
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
І
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
┘
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
:*

begin_mask*
Index0
ї
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
ш
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
І
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
Ї
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ї
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
р
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
: *

begin_mask *
Index0
»
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
T0*
_output_shapes
:*
N*

axis 
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ф
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
╦
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
T0*
_output_shapes
:*
Tshape0
ј
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
█
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:*
Tshape0
џ
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:         
Х
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
T0	*#
_output_shapes
:         *
squeeze_dims

ѓ
2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
g
$report_uninitialized_resources/ConstConst*
dtype0*
_output_shapes
: *
valueB 
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╝
concatConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat/axis*

Tidx0*
T0*#
_output_shapes
:         *
N
А
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
═
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitialized dnn/hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╦
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializeddnn/hiddenlayer_0/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
═
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitialized dnn/hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╦
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializeddnn/hiddenlayer_1/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
═
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitialized dnn/hiddenlayer_2/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╦
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializeddnn/hiddenlayer_2/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
┐
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializeddnn/logits/weights/part_0*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn/logits/weights/part_0
й
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializeddnn/logits/biases/part_0*
dtype0*
_output_shapes
: *+
_class!
loc:@dnn/logits/biases/part_0
­
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_8*
T0
*
_output_shapes
:	*
N	*

axis 
}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:	
ч
&report_uninitialized_variables_1/ConstConst*
dtype0*
_output_shapes
:	*а
valueќBЊ	Bglobal_stepB dnn/hiddenlayer_0/weights/part_0Bdnn/hiddenlayer_0/biases/part_0B dnn/hiddenlayer_1/weights/part_0Bdnn/hiddenlayer_1/biases/part_0B dnn/hiddenlayer_2/weights/part_0Bdnn/hiddenlayer_2/biases/part_0Bdnn/logits/weights/part_0Bdnn/logits/biases/part_0
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
dtype0*
_output_shapes
:*
valueB:	
І
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ї
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ї
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
с
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
:*

begin_mask*
Index0
ј
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
ч
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:	
Ї
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
Ј
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ј
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
в
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
: *

begin_mask *
Index0
│
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*
T0*
_output_shapes
:*
N*

axis 
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
│
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
Л
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
T0*
_output_shapes
:	*
Tshape0
љ
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
р
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:	*
Tshape0
ъ
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:         
║
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
T0	*#
_output_shapes
:         *
squeeze_dims

ѕ
4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
Ђ
init_2NoOp.^dnn/regression_head/metrics/mean/total/Assign.^dnn/regression_head/metrics/mean/count/Assign^eval_step/Assign
Ё
init_all_tablesNoOpl^dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table/table_init
/
group_deps_2NoOp^init_2^init_all_tables
Т
Merge/MergeSummaryMergeSummaryHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full-dnn/dnn/hiddenlayer_0_fraction_of_zero_values dnn/dnn/hiddenlayer_0_activation-dnn/dnn/hiddenlayer_1_fraction_of_zero_values dnn/dnn/hiddenlayer_1_activation-dnn/dnn/hiddenlayer_2_fraction_of_zero_values dnn/dnn/hiddenlayer_2_activation&dnn/dnn/logits_fraction_of_zero_valuesdnn/dnn/logits_activation!dnn/regression_head/ScalarSummary*
_output_shapes
: *
N

P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
ё
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_5efdae9c2d9f434ead622c02e69c76c1/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
х
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:	*У
valueяB█	Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_step
╔
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:	*y
valuepBn	B50 0,50B56 50 0,56:0,50B30 0,30B50 30 0,50:0,30B10 0,10B30 10 0,30:0,10B1 0,1B10 1 0,10:0,1B 
»
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/read$dnn/hiddenlayer_2/biases/part_0/read%dnn/hiddenlayer_2/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_step*
dtypes
2		
Љ
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
Ю
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*
_output_shapes
:*
N*

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
|
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Bdnn/hiddenlayer_0/biases
o
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB50 0,50
љ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
╚
save/AssignAssigndnn/hiddenlayer_0/biases/part_0save/RestoreV2*
T0*
_output_shapes
:2*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0

save/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#Bdnn/hiddenlayer_0/weights
y
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*$
valueBB56 50 0,56:0,50
ќ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save/RestoreV2_1*
T0*
_output_shapes

:82*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
~
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Bdnn/hiddenlayer_1/biases
q
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB30 0,30
ќ
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
╠
save/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save/RestoreV2_2*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0

save/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#Bdnn/hiddenlayer_1/weights
y
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*$
valueBB50 30 0,50:0,30
ќ
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save/RestoreV2_3*
T0*
_output_shapes

:2*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
~
save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Bdnn/hiddenlayer_2/biases
q
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB10 0,10
ќ
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
╠
save/Assign_4Assigndnn/hiddenlayer_2/biases/part_0save/RestoreV2_4*
T0*
_output_shapes
:
*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0

save/RestoreV2_5/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#Bdnn/hiddenlayer_2/weights
y
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*$
valueBB30 10 0,30:0,10
ќ
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_5Assign dnn/hiddenlayer_2/weights/part_0save/RestoreV2_5*
T0*
_output_shapes

:
*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
w
save/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBdnn/logits/biases
o
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB1 0,1
ќ
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Й
save/Assign_6Assigndnn/logits/biases/part_0save/RestoreV2_6*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/biases/part_0
x
save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBdnn/logits/weights
w
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*"
valueBB10 1 0,10:0,1
ќ
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
─
save/Assign_7Assigndnn/logits/weights/part_0save/RestoreV2_7*
T0*
_output_shapes

:
*
validate_shape(*
use_locking(*,
_class"
 loc:@dnn/logits/weights/part_0
q
save/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
ќ
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2	
а
save/Assign_8Assignglobal_stepsave/RestoreV2_8*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@global_step
е
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard"нАјldЄ     Зeн8	#ПHЦPоAJОј
У*┬*
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
p
	AssignAdd
ref"Tђ

value"T

output_ref"Tђ"
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
A
Equal
x"T
y"T
z
"
Ttype:
2	
љ
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
«
FIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint         "
	containerstring "
shared_namestring ѕ
ї
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
б
	HashTable
table_handleђ"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeѕ
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
`
InitializeTable
table_handleђ
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
N
IsVariableInitialized
ref"dtypeђ
is_initialized
"
dtypetypeў


LogicalNot
x

y

u
LookupTableFind
table_handleђ
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	љ
і
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
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
2	љ

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	
љ
ї
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint         "	
Ttype"
TItype0	:
2	
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
і
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
cancel_pending_enqueuesbool( ѕ
ї
QueueDequeueUpToV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint         ѕ
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint         ѕ
&
QueueSizeV2

handle
sizeѕ
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
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
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
╝
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
0
Square
x"T
y"T"
Ttype:
	2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Ш
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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
Ѕ
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ

Where	
input
	
index	*	1.2.0-rc12v1.2.0-rc0-24-g94484aaз┴

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step
Ј
global_step
VariableV2*
	container *
_class
loc:@global_step*
dtype0	*
_output_shapes
: *
shape: *
shared_name 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
Х
enqueue_input/fifo_queueFIFOQueueV2*
	container *
_output_shapes
: *
shapes
: : : : : : : : : * 
component_types
2		*
capacityУ*
shared_name 
^
enqueue_input/PlaceholderPlaceholder*
dtype0	*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_1Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_2Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_4Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_5Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_6Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_7Placeholder*
dtype0*
_output_shapes
:*
shape:
`
enqueue_input/Placeholder_8Placeholder*
dtype0*
_output_shapes
:*
shape:
љ
$enqueue_input/fifo_queue_EnqueueManyQueueEnqueueManyV2enqueue_input/fifo_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5enqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8*
Tcomponents
2		*

timeout_ms         
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
dtype0*
_output_shapes
: *
value	B : 
m
enqueue_input/subSubenqueue_input/fifo_queue_Sizeenqueue_input/sub/y*
T0*
_output_shapes
: 
Y
enqueue_input/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B : 
m
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub*
T0*
_output_shapes
: 
a
enqueue_input/CastCastenqueue_input/Maximum*

SrcT0*
_output_shapes
: *

DstT0
X
enqueue_input/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *oЃ:
b
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y*
T0*
_output_shapes
: 
о
Menqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsConst*
dtype0*
_output_shapes
: *Y
valuePBN BHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full
▄
Henqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullScalarSummaryMenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsenqueue_input/mul*
T0*
_output_shapes
: 
Z
fifo_queue_DequeueUpTo/nConst*
dtype0*
_output_shapes
: *
value	B :
й
fifo_queue_DequeueUpToQueueDequeueUpToV2enqueue_input/fifo_queuefifo_queue_DequeueUpTo/n*Ю
_output_shapesі
Є:         :         :         :         :         :         :         :         :         *

timeout_ms         * 
component_types
2		
А
Vdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
љ
Rdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:4Vdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
Ы
`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/ShapeShapeRdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dims*
T0*
out_type0*
_output_shapes
:
§
_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/CastCast`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Shape*

SrcT0*
_output_shapes
:*

DstT0	
ц
cdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
┌
cdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/NotEqualNotEqualRdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dimscdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Cast_1/x*
T0*'
_output_shapes
:         
э
`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/WhereWherecdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/NotEqual*'
_output_shapes
:         
╗
hdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
у
bdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/ReshapeReshapeRdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/expand_dimshdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Reshape/shape*
T0*#
_output_shapes
:         *
Tshape0
┐
ndnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       
┴
pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
┴
pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
═
hdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_sliceStridedSlice`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Wherendnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stackpdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stack_1pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:         *

begin_mask*
Index0
┴
pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
├
rdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
├
rdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
┘
jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1StridedSlice`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Wherepdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stackrdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stack_1rdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:         *

begin_mask*
Index0
Є
bdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/unstackUnpack_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Cast*
T0	*	
num*
_output_shapes
: : *

axis 
ѕ
`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/stackPackddnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
т
^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/MulMuljdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice_1`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/stack*
T0	*'
_output_shapes
:         
║
pdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
ѓ
^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/SumSum^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Mulpdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:         *
	keep_dims( 
П
^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/AddAddhdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/strided_slice^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Sum*
T0	*#
_output_shapes
:         
І
adnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/GatherGatherbdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Reshape^dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Add*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
ѓ
Mdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/lookupStringToHashBucketFastadnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Gather*
num_buckets2*#
_output_shapes
:         
▒
gdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
│
idnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
│
idnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Д
adnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_sliceStridedSlice_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Castgdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stackidnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stack_1idnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*
_output_shapes
:*

begin_mask*
Index0
│
idnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
х
kdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
х
kdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
»
cdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1StridedSlice_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Castidnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stackkdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stack_1kdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*
_output_shapes
:*

begin_mask *
Index0
Б
Ydnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
я
Xdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/ProdProdcdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slice_1Ydnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 
 
cdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat/values_1PackXdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/Prod*
T0	*
_output_shapes
:*
N*

axis 
А
_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╔
Zdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concatConcatV2adnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/strided_slicecdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat/values_1_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat/axis*

Tidx0*
T0	*
_output_shapes
:*
N
└
adnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshapeSparseReshape`dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/Where_dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/DenseToSparseTensor/CastZdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/concat*-
_output_shapes
:         :
з
jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshape/IdentityIdentityMdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/lookup*
T0	*#
_output_shapes
:         
Г
bdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SparseToDense/default_valueConst*
dtype0	*
_output_shapes
: *
valueB	 R
         
Я
Tdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SparseToDenseSparseToDenseadnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshapecdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshape:1jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/InnerFlatten/SparseReshape/Identitybdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SparseToDense/default_value*
T0	*0
_output_shapes
:                  *
validate_indices(*
Tindices0	
Ў
Tdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
Џ
Vdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
ќ
Tdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :2
ю
Wdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
Ю
Xdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ћ
Ndnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hotOneHotTdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SparseToDenseTdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/depthWdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/on_valueXdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot/off_value*
axis         *
TI0	*4
_output_shapes"
 :                  2*
T0
д
\dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
╬
Jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SumSumNdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/one_hot\dnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/Sum/reduction_indices*

Tidx0*
T0*'
_output_shapes
:         2*
	keep_dims( 
Е
^dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
а
Zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:1^dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
ѓ
hdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/ShapeShapeZdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dims*
T0*
out_type0*
_output_shapes
:
Ї
gdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/CastCasthdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Shape*

SrcT0*
_output_shapes
:*

DstT0	
г
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Cast_1/xConst*
dtype0*
_output_shapes
: *
valueB B 
Ы
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/NotEqualNotEqualZdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dimskdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Cast_1/x*
T0*'
_output_shapes
:         
Є
hdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/WhereWherekdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/NotEqual*'
_output_shapes
:         
├
pdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
 
jdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/ReshapeReshapeZdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/expand_dimspdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Reshape/shape*
T0*#
_output_shapes
:         *
Tshape0
К
vdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"       
╔
xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
╔
xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ш
pdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_sliceStridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Wherevdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stackxdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stack_1xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
T0	*#
_output_shapes
:         *

begin_mask*
Index0
╔
xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB"        
╦
zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
╦
zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ђ
rdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1StridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Wherexdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stackzdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stack_1zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*'
_output_shapes
:         *

begin_mask*
Index0
Ќ
jdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/unstackUnpackgdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Cast*
T0	*	
num*
_output_shapes
: : *

axis 
ў
hdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/stackPackldnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/unstack:1*
T0	*
_output_shapes
:*
N*

axis 
§
fdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/MulMulrdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slice_1hdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/stack*
T0	*'
_output_shapes
:         
┬
xdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
џ
fdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/SumSumfdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Mulxdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Sum/reduction_indices*

Tidx0*
T0	*#
_output_shapes
:         *
	keep_dims( 
ш
fdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/AddAddpdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/strided_slicefdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Sum*
T0	*#
_output_shapes
:         
Б
idnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/GatherGatherjdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Reshapefdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Add*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
Г
[dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/ConstConst*
dtype0*
_output_shapes
:*
valueBBtwoBfour
ю
Zdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/SizeConst*
dtype0*
_output_shapes
: *
value	B :
Б
adnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Б
adnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
«
[dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/rangeRangeadnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range/startZdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/Sizeadnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range/delta*

Tidx0*
_output_shapes
:
Ш
]dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/ToInt64Cast[dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
Ь
`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table	HashTable*
	container *
	key_dtype0*
use_node_name_sharing( *
_output_shapes
:*
shared_name *
value_dtype0	
▒
fdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
         
Е
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table/table_initInitializeTable`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table[dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/Const]dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/ToInt64*

Tval0	*

Tkey0*s
_classi
geloc:@dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table
┘
`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/hash_table_LookupLookupTableFind`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_tableidnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Gatherfdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table/Const*#
_output_shapes
:         *

Tout0	*	
Tin0*s
_classi
geloc:@dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table
╣
odnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
╗
qdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
╗
qdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
¤
idnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_sliceStridedSlicegdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Castodnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stackqdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stack_1qdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*
_output_shapes
:*

begin_mask*
Index0
╗
qdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
й
sdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
й
sdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
О
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1StridedSlicegdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Castqdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stacksdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stack_1sdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0	*
_output_shapes
:*

begin_mask *
Index0
Ф
adnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ш
`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/ProdProdkdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slice_1adnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/Const*

Tidx0*
T0	*
_output_shapes
: *
	keep_dims( 
Ј
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat/values_1Pack`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/Prod*
T0	*
_output_shapes
:*
N*

axis 
Е
gdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ж
bdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concatConcatV2idnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/strided_slicekdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat/values_1gdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat/axis*

Tidx0*
T0	*
_output_shapes
:*
N
Я
idnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshapeSparseReshapehdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Wheregdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/DenseToSparseTensor/Castbdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/concat*-
_output_shapes
:         :
ј
rdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshape/IdentityIdentity`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/hash_table_Lookup*
T0	*#
_output_shapes
:         
х
jdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SparseToDense/default_valueConst*
dtype0	*
_output_shapes
: *
valueB	 R
         
ѕ
\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SparseToDenseSparseToDenseidnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshapekdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshape:1rdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/InnerFlatten/SparseReshape/Identityjdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SparseToDense/default_value*
T0	*0
_output_shapes
:                  *
validate_indices(*
Tindices0	
А
\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
Б
^dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
ъ
\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :
ц
_dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/on_valueConst*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
Ц
`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
й
Vdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hotOneHot\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SparseToDense\dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/depth_dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/on_value`dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hot/off_value*
axis         *
TI0	*4
_output_shapes"
 :                  *
T0
«
ddnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Т
Rdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SumSumVdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/one_hotddnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/Sum/reduction_indices*

Tidx0*
T0*'
_output_shapes
:         *
	keep_dims( 
Џ
Pdnn/input_from_feature_columns/input_from_feature_columns/height/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
ё
Ldnn/input_from_feature_columns/input_from_feature_columns/height/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:6Pdnn/input_from_feature_columns/input_from_feature_columns/height/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
Ъ
Tdnn/input_from_feature_columns/input_from_feature_columns/horsepower/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
ї
Pdnn/input_from_feature_columns/input_from_feature_columns/horsepower/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:3Tdnn/input_from_feature_columns/input_from_feature_columns/horsepower/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
Џ
Pdnn/input_from_feature_columns/input_from_feature_columns/length/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
ё
Ldnn/input_from_feature_columns/input_from_feature_columns/length/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:5Pdnn/input_from_feature_columns/input_from_feature_columns/length/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
џ
Odnn/input_from_feature_columns/input_from_feature_columns/width/expand_dims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
ѓ
Kdnn/input_from_feature_columns/input_from_feature_columns/width/expand_dims
ExpandDimsfifo_queue_DequeueUpTo:7Odnn/input_from_feature_columns/input_from_feature_columns/width/expand_dims/dim*
T0*'
_output_shapes
:         *

Tdim0
Є
Ednn/input_from_feature_columns/input_from_feature_columns/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
х
@dnn/input_from_feature_columns/input_from_feature_columns/concatConcatV2Jdnn/input_from_feature_columns/input_from_feature_columns/make_one_hot/SumRdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/SumLdnn/input_from_feature_columns/input_from_feature_columns/height/expand_dimsPdnn/input_from_feature_columns/input_from_feature_columns/horsepower/expand_dimsLdnn/input_from_feature_columns/input_from_feature_columns/length/expand_dimsKdnn/input_from_feature_columns/input_from_feature_columns/width/expand_dimsEdnn/input_from_feature_columns/input_from_feature_columns/concat/axis*

Tidx0*
T0*'
_output_shapes
:         8*
N
К
Adnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"8   2   *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╣
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *аsЙ*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╣
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *аs>*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
А
Idnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
seed2 *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
dtype0*
T0*
_output_shapes

:82*

seed 
ъ
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
░
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:82*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
б
;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:82*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╔
 dnn/hiddenlayer_0/weights/part_0
VariableV2*
	container *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes

:82*
shape
:82*
shared_name 
Ќ
'dnn/hiddenlayer_0/weights/part_0/AssignAssign dnn/hiddenlayer_0/weights/part_0;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:82*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
▒
%dnn/hiddenlayer_0/weights/part_0/readIdentity dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes

:82*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
▓
1dnn/hiddenlayer_0/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:2*
valueB2*    *2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
┐
dnn/hiddenlayer_0/biases/part_0
VariableV2*
	container *2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
dtype0*
_output_shapes
:2*
shape:2*
shared_name 
є
&dnn/hiddenlayer_0/biases/part_0/AssignAssigndnn/hiddenlayer_0/biases/part_01dnn/hiddenlayer_0/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:2*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
ф
$dnn/hiddenlayer_0/biases/part_0/readIdentitydnn/hiddenlayer_0/biases/part_0*
T0*
_output_shapes
:2*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
u
dnn/hiddenlayer_0/weightsIdentity%dnn/hiddenlayer_0/weights/part_0/read*
T0*
_output_shapes

:82
О
dnn/hiddenlayer_0/MatMulMatMul@dnn/input_from_feature_columns/input_from_feature_columns/concatdnn/hiddenlayer_0/weights*
T0*'
_output_shapes
:         2*
transpose_a( *
transpose_b( 
o
dnn/hiddenlayer_0/biasesIdentity$dnn/hiddenlayer_0/biases/part_0/read*
T0*
_output_shapes
:2
А
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/biases*
T0*'
_output_shapes
:         2*
data_formatNHWC
y
$dnn/hiddenlayer_0/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:         2
[
dnn/zero_fraction/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
љ
dnn/zero_fraction/EqualEqual$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:         2
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

SrcT0
*'
_output_shapes
:         2*

DstT0
h
dnn/zero_fraction/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Ї
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
а
2dnn/dnn/hiddenlayer_0_fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_0_fraction_of_zero_values
Ф
-dnn/dnn/hiddenlayer_0_fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0_fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 
Ё
$dnn/dnn/hiddenlayer_0_activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_0_activation
А
 dnn/dnn/hiddenlayer_0_activationHistogramSummary$dnn/dnn/hiddenlayer_0_activation/tag$dnn/hiddenlayer_0/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
К
Adnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"2      *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╣
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ї7їЙ*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╣
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ї7ї>*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
А
Idnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
seed2 *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
dtype0*
T0*
_output_shapes

:2*

seed 
ъ
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
░
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:2*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
б
;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:2*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╔
 dnn/hiddenlayer_1/weights/part_0
VariableV2*
	container *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes

:2*
shape
:2*
shared_name 
Ќ
'dnn/hiddenlayer_1/weights/part_0/AssignAssign dnn/hiddenlayer_1/weights/part_0;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:2*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
▒
%dnn/hiddenlayer_1/weights/part_0/readIdentity dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes

:2*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
▓
1dnn/hiddenlayer_1/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
┐
dnn/hiddenlayer_1/biases/part_0
VariableV2*
	container *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
dtype0*
_output_shapes
:*
shape:*
shared_name 
є
&dnn/hiddenlayer_1/biases/part_0/AssignAssigndnn/hiddenlayer_1/biases/part_01dnn/hiddenlayer_1/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
ф
$dnn/hiddenlayer_1/biases/part_0/readIdentitydnn/hiddenlayer_1/biases/part_0*
T0*
_output_shapes
:*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
u
dnn/hiddenlayer_1/weightsIdentity%dnn/hiddenlayer_1/weights/part_0/read*
T0*
_output_shapes

:2
╗
dnn/hiddenlayer_1/MatMulMatMul$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/hiddenlayer_1/weights*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
o
dnn/hiddenlayer_1/biasesIdentity$dnn/hiddenlayer_1/biases/part_0/read*
T0*
_output_shapes
:
А
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/biases*
T0*'
_output_shapes
:         *
data_formatNHWC
y
$dnn/hiddenlayer_1/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:         
]
dnn/zero_fraction_1/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
ћ
dnn/zero_fraction_1/EqualEqual$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:         
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

SrcT0
*'
_output_shapes
:         *

DstT0
j
dnn/zero_fraction_1/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Њ
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
а
2dnn/dnn/hiddenlayer_1_fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_1_fraction_of_zero_values
Г
-dnn/dnn/hiddenlayer_1_fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1_fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 
Ё
$dnn/dnn/hiddenlayer_1_activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_1_activation
А
 dnn/dnn/hiddenlayer_1_activationHistogramSummary$dnn/dnn/hiddenlayer_1_activation/tag$dnn/hiddenlayer_1/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
К
Adnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╣
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ЭKкЙ*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╣
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЭKк>*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
А
Idnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shape*
seed2 *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
dtype0*
T0*
_output_shapes

:
*

seed 
ъ
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
░
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:
*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
б
;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:
*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╔
 dnn/hiddenlayer_2/weights/part_0
VariableV2*
	container *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
dtype0*
_output_shapes

:
*
shape
:
*
shared_name 
Ќ
'dnn/hiddenlayer_2/weights/part_0/AssignAssign dnn/hiddenlayer_2/weights/part_0;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:
*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
▒
%dnn/hiddenlayer_2/weights/part_0/readIdentity dnn/hiddenlayer_2/weights/part_0*
T0*
_output_shapes

:
*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
▓
1dnn/hiddenlayer_2/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:
*
valueB
*    *2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
┐
dnn/hiddenlayer_2/biases/part_0
VariableV2*
	container *2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
dtype0*
_output_shapes
:
*
shape:
*
shared_name 
є
&dnn/hiddenlayer_2/biases/part_0/AssignAssigndnn/hiddenlayer_2/biases/part_01dnn/hiddenlayer_2/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:
*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
ф
$dnn/hiddenlayer_2/biases/part_0/readIdentitydnn/hiddenlayer_2/biases/part_0*
T0*
_output_shapes
:
*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
u
dnn/hiddenlayer_2/weightsIdentity%dnn/hiddenlayer_2/weights/part_0/read*
T0*
_output_shapes

:

╗
dnn/hiddenlayer_2/MatMulMatMul$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/hiddenlayer_2/weights*
T0*'
_output_shapes
:         
*
transpose_a( *
transpose_b( 
o
dnn/hiddenlayer_2/biasesIdentity$dnn/hiddenlayer_2/biases/part_0/read*
T0*
_output_shapes
:

А
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/biases*
T0*'
_output_shapes
:         
*
data_formatNHWC
y
$dnn/hiddenlayer_2/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:         

]
dnn/zero_fraction_2/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
ћ
dnn/zero_fraction_2/EqualEqual$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:         

|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*'
_output_shapes
:         
*

DstT0
j
dnn/zero_fraction_2/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Њ
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
а
2dnn/dnn/hiddenlayer_2_fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_2_fraction_of_zero_values
Г
-dnn/dnn/hiddenlayer_2_fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2_fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 
Ё
$dnn/dnn/hiddenlayer_2_activation/tagConst*
dtype0*
_output_shapes
: *1
value(B& B dnn/dnn/hiddenlayer_2_activation
А
 dnn/dnn/hiddenlayer_2_activationHistogramSummary$dnn/dnn/hiddenlayer_2_activation/tag$dnn/hiddenlayer_2/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
╣
:dnn/logits/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"
      *,
_class"
 loc:@dnn/logits/weights/part_0
Ф
8dnn/logits/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *І=┐*,
_class"
 loc:@dnn/logits/weights/part_0
Ф
8dnn/logits/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *І=?*,
_class"
 loc:@dnn/logits/weights/part_0
ї
Bdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn/logits/weights/part_0/Initializer/random_uniform/shape*
seed2 *,
_class"
 loc:@dnn/logits/weights/part_0*
dtype0*
T0*
_output_shapes

:
*

seed 
ѓ
8dnn/logits/weights/part_0/Initializer/random_uniform/subSub8dnn/logits/weights/part_0/Initializer/random_uniform/max8dnn/logits/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *,
_class"
 loc:@dnn/logits/weights/part_0
ћ
8dnn/logits/weights/part_0/Initializer/random_uniform/mulMulBdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn/logits/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:
*,
_class"
 loc:@dnn/logits/weights/part_0
є
4dnn/logits/weights/part_0/Initializer/random_uniformAdd8dnn/logits/weights/part_0/Initializer/random_uniform/mul8dnn/logits/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:
*,
_class"
 loc:@dnn/logits/weights/part_0
╗
dnn/logits/weights/part_0
VariableV2*
	container *,
_class"
 loc:@dnn/logits/weights/part_0*
dtype0*
_output_shapes

:
*
shape
:
*
shared_name 
ч
 dnn/logits/weights/part_0/AssignAssigndnn/logits/weights/part_04dnn/logits/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:
*
validate_shape(*
use_locking(*,
_class"
 loc:@dnn/logits/weights/part_0
ю
dnn/logits/weights/part_0/readIdentitydnn/logits/weights/part_0*
T0*
_output_shapes

:
*,
_class"
 loc:@dnn/logits/weights/part_0
ц
*dnn/logits/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *+
_class!
loc:@dnn/logits/biases/part_0
▒
dnn/logits/biases/part_0
VariableV2*
	container *+
_class!
loc:@dnn/logits/biases/part_0*
dtype0*
_output_shapes
:*
shape:*
shared_name 
Ж
dnn/logits/biases/part_0/AssignAssigndnn/logits/biases/part_0*dnn/logits/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/biases/part_0
Ћ
dnn/logits/biases/part_0/readIdentitydnn/logits/biases/part_0*
T0*
_output_shapes
:*+
_class!
loc:@dnn/logits/biases/part_0
g
dnn/logits/weightsIdentitydnn/logits/weights/part_0/read*
T0*
_output_shapes

:

Г
dnn/logits/MatMulMatMul$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/logits/weights*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
a
dnn/logits/biasesIdentitydnn/logits/biases/part_0/read*
T0*
_output_shapes
:
ї
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/biases*
T0*'
_output_shapes
:         *
data_formatNHWC
]
dnn/zero_fraction_3/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
ѓ
dnn/zero_fraction_3/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_3/zero*
T0*'
_output_shapes
:         
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*'
_output_shapes
:         *

DstT0
j
dnn/zero_fraction_3/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
Њ
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
њ
+dnn/dnn/logits_fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *7
value.B, B&dnn/dnn/logits_fraction_of_zero_values
Ъ
&dnn/dnn/logits_fraction_of_zero_valuesScalarSummary+dnn/dnn/logits_fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits_activation/tagConst*
dtype0*
_output_shapes
: **
value!B Bdnn/dnn/logits_activation
Ђ
dnn/dnn/logits_activationHistogramSummarydnn/dnn/logits_activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
і
&dnn/regression_head/predictions/scoresSqueezednn/logits/BiasAdd*
T0*#
_output_shapes
:         *
squeeze_dims

і
(dnn/regression_head/predictions/IdentityIdentity&dnn/regression_head/predictions/scores*
T0*#
_output_shapes
:         
~
4dnn/regression_head/mean_squared_loss/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
╠
0dnn/regression_head/mean_squared_loss/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:84dnn/regression_head/mean_squared_loss/ExpandDims/dim*
T0*'
_output_shapes
:         *

Tdim0
е
)dnn/regression_head/mean_squared_loss/subSubdnn/logits/BiasAdd0dnn/regression_head/mean_squared_loss/ExpandDims*
T0*'
_output_shapes
:         
ї
%dnn/regression_head/mean_squared_lossSquare)dnn/regression_head/mean_squared_loss/sub*
T0*'
_output_shapes
:         
Ђ
0dnn/regression_head/mean_squared_loss/loss/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
╔
*dnn/regression_head/mean_squared_loss/lossMean%dnn/regression_head/mean_squared_loss0dnn/regression_head/mean_squared_loss/loss/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
k
&dnn/regression_head/ScalarSummary/tagsConst*
dtype0*
_output_shapes
: *
valueB
 Bloss
Д
!dnn/regression_head/ScalarSummaryScalarSummary&dnn/regression_head/ScalarSummary/tags*dnn/regression_head/mean_squared_loss/loss*
T0*
_output_shapes
: 
k
&dnn/regression_head/metrics/mean/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
і
&dnn/regression_head/metrics/mean/total
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
ї
-dnn/regression_head/metrics/mean/total/AssignAssign&dnn/regression_head/metrics/mean/total&dnn/regression_head/metrics/mean/zeros*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*9
_class/
-+loc:@dnn/regression_head/metrics/mean/total
╗
+dnn/regression_head/metrics/mean/total/readIdentity&dnn/regression_head/metrics/mean/total*
T0*
_output_shapes
: *9
_class/
-+loc:@dnn/regression_head/metrics/mean/total
m
(dnn/regression_head/metrics/mean/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
і
&dnn/regression_head/metrics/mean/count
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
ј
-dnn/regression_head/metrics/mean/count/AssignAssign&dnn/regression_head/metrics/mean/count(dnn/regression_head/metrics/mean/zeros_1*
T0*
_output_shapes
: *
validate_shape(*
use_locking(*9
_class/
-+loc:@dnn/regression_head/metrics/mean/count
╗
+dnn/regression_head/metrics/mean/count/readIdentity&dnn/regression_head/metrics/mean/count*
T0*
_output_shapes
: *9
_class/
-+loc:@dnn/regression_head/metrics/mean/count
g
%dnn/regression_head/metrics/mean/SizeConst*
dtype0*
_output_shapes
: *
value	B :
Ѕ
*dnn/regression_head/metrics/mean/ToFloat_1Cast%dnn/regression_head/metrics/mean/Size*

SrcT0*
_output_shapes
: *

DstT0
i
&dnn/regression_head/metrics/mean/ConstConst*
dtype0*
_output_shapes
: *
valueB 
й
$dnn/regression_head/metrics/mean/SumSum*dnn/regression_head/mean_squared_loss/loss&dnn/regression_head/metrics/mean/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
З
*dnn/regression_head/metrics/mean/AssignAdd	AssignAdd&dnn/regression_head/metrics/mean/total$dnn/regression_head/metrics/mean/Sum*
T0*
_output_shapes
: *
use_locking( *9
_class/
-+loc:@dnn/regression_head/metrics/mean/total
Е
,dnn/regression_head/metrics/mean/AssignAdd_1	AssignAdd&dnn/regression_head/metrics/mean/count*dnn/regression_head/metrics/mean/ToFloat_1+^dnn/regression_head/mean_squared_loss/loss*
T0*
_output_shapes
: *
use_locking( *9
_class/
-+loc:@dnn/regression_head/metrics/mean/count
o
*dnn/regression_head/metrics/mean/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
Г
(dnn/regression_head/metrics/mean/GreaterGreater+dnn/regression_head/metrics/mean/count/read*dnn/regression_head/metrics/mean/Greater/y*
T0*
_output_shapes
: 
«
(dnn/regression_head/metrics/mean/truedivRealDiv+dnn/regression_head/metrics/mean/total/read+dnn/regression_head/metrics/mean/count/read*
T0*
_output_shapes
: 
m
(dnn/regression_head/metrics/mean/value/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
¤
&dnn/regression_head/metrics/mean/valueSelect(dnn/regression_head/metrics/mean/Greater(dnn/regression_head/metrics/mean/truediv(dnn/regression_head/metrics/mean/value/e*
T0*
_output_shapes
: 
q
,dnn/regression_head/metrics/mean/Greater_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
▓
*dnn/regression_head/metrics/mean/Greater_1Greater,dnn/regression_head/metrics/mean/AssignAdd_1,dnn/regression_head/metrics/mean/Greater_1/y*
T0*
_output_shapes
: 
░
*dnn/regression_head/metrics/mean/truediv_1RealDiv*dnn/regression_head/metrics/mean/AssignAdd,dnn/regression_head/metrics/mean/AssignAdd_1*
T0*
_output_shapes
: 
q
,dnn/regression_head/metrics/mean/update_op/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
█
*dnn/regression_head/metrics/mean/update_opSelect*dnn/regression_head/metrics/mean/Greater_1*dnn/regression_head/metrics/mean/truediv_1,dnn/regression_head/metrics/mean/update_op/e*
T0*
_output_shapes
: 
?

group_depsNoOp+^dnn/regression_head/metrics/mean/update_op
{
eval_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@eval_step
І
	eval_step
VariableV2*
	container *
_class
loc:@eval_step*
dtype0	*
_output_shapes
: *
shape: *
shared_name 
ф
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@eval_step
d
eval_step/readIdentity	eval_step*
T0	*
_output_shapes
: *
_class
loc:@eval_step
Q
AssignAdd/valueConst*
dtype0	*
_output_shapes
: *
value	B	 R
ё
	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
T0	*
_output_shapes
: *
use_locking( *
_class
loc:@eval_step
▀
initNoOp^global_step/Assign(^dnn/hiddenlayer_0/weights/part_0/Assign'^dnn/hiddenlayer_0/biases/part_0/Assign(^dnn/hiddenlayer_1/weights/part_0/Assign'^dnn/hiddenlayer_1/biases/part_0/Assign(^dnn/hiddenlayer_2/weights/part_0/Assign'^dnn/hiddenlayer_2/biases/part_0/Assign!^dnn/logits/weights/part_0/Assign ^dnn/logits/biases/part_0/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1
Ъ
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
╦
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitialized dnn/hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╔
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializeddnn/hiddenlayer_0/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
╦
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitialized dnn/hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╔
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializeddnn/hiddenlayer_1/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
╦
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitialized dnn/hiddenlayer_2/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╔
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializeddnn/hiddenlayer_2/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
й
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializeddnn/logits/weights/part_0*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn/logits/weights/part_0
╗
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializeddnn/logits/biases/part_0*
dtype0*
_output_shapes
: *+
_class!
loc:@dnn/logits/biases/part_0
О
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitialized&dnn/regression_head/metrics/mean/total*
dtype0*
_output_shapes
: *9
_class/
-+loc:@dnn/regression_head/metrics/mean/total
п
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized&dnn/regression_head/metrics/mean/count*
dtype0*
_output_shapes
: *9
_class/
-+loc:@dnn/regression_head/metrics/mean/count
ъ
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitialized	eval_step*
dtype0	*
_output_shapes
: *
_class
loc:@eval_step
є
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_11*
T0
*
_output_shapes
:*
N*

axis 
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
н
$report_uninitialized_variables/ConstConst*
dtype0*
_output_shapes
:*ч
valueыBЬBglobal_stepB dnn/hiddenlayer_0/weights/part_0Bdnn/hiddenlayer_0/biases/part_0B dnn/hiddenlayer_1/weights/part_0Bdnn/hiddenlayer_1/biases/part_0B dnn/hiddenlayer_2/weights/part_0Bdnn/hiddenlayer_2/biases/part_0Bdnn/logits/weights/part_0Bdnn/logits/biases/part_0B&dnn/regression_head/metrics/mean/totalB&dnn/regression_head/metrics/mean/countB	eval_step
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
Ѕ
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
І
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
І
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
┘
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
:*

begin_mask*
Index0
ї
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
ш
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
І
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
Ї
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ї
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
р
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
: *

begin_mask *
Index0
»
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
T0*
_output_shapes
:*
N*

axis 
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ф
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
╦
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
T0*
_output_shapes
:*
Tshape0
ј
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
█
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:*
Tshape0
џ
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:         
Х
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
T0	*#
_output_shapes
:         *
squeeze_dims

ѓ
2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
g
$report_uninitialized_resources/ConstConst*
dtype0*
_output_shapes
: *
valueB 
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╝
concatConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat/axis*

Tidx0*
T0*#
_output_shapes
:         *
N
А
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
═
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitialized dnn/hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
╦
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializeddnn/hiddenlayer_0/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0
═
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitialized dnn/hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
╦
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializeddnn/hiddenlayer_1/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0
═
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitialized dnn/hiddenlayer_2/weights/part_0*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
╦
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializeddnn/hiddenlayer_2/biases/part_0*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
┐
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializeddnn/logits/weights/part_0*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn/logits/weights/part_0
й
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializeddnn/logits/biases/part_0*
dtype0*
_output_shapes
: *+
_class!
loc:@dnn/logits/biases/part_0
­
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_8*
T0
*
_output_shapes
:	*
N	*

axis 
}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:	
ч
&report_uninitialized_variables_1/ConstConst*
dtype0*
_output_shapes
:	*а
valueќBЊ	Bglobal_stepB dnn/hiddenlayer_0/weights/part_0Bdnn/hiddenlayer_0/biases/part_0B dnn/hiddenlayer_1/weights/part_0Bdnn/hiddenlayer_1/biases/part_0B dnn/hiddenlayer_2/weights/part_0Bdnn/hiddenlayer_2/biases/part_0Bdnn/logits/weights/part_0Bdnn/logits/biases/part_0
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
dtype0*
_output_shapes
:*
valueB:	
І
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ї
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ї
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
с
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
:*

begin_mask*
Index0
ј
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
ч
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:	
Ї
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
Ј
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ј
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
в
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
end_mask*
ellipsis_mask *
new_axis_mask *
shrink_axis_mask *
T0*
_output_shapes
: *

begin_mask *
Index0
│
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*
T0*
_output_shapes
:*
N*

axis 
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
│
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
Л
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
T0*
_output_shapes
:	*
Tshape0
љ
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
р
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
T0
*
_output_shapes
:	*
Tshape0
ъ
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:         
║
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
T0	*#
_output_shapes
:         *
squeeze_dims

ѕ
4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*#
_output_shapes
:         *
validate_indices(*
Tparams0*
Tindices0	
Ђ
init_2NoOp.^dnn/regression_head/metrics/mean/total/Assign.^dnn/regression_head/metrics/mean/count/Assign^eval_step/Assign
Ё
init_all_tablesNoOpl^dnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table/table_init
/
group_deps_2NoOp^init_2^init_all_tables
Т
Merge/MergeSummaryMergeSummaryHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full-dnn/dnn/hiddenlayer_0_fraction_of_zero_values dnn/dnn/hiddenlayer_0_activation-dnn/dnn/hiddenlayer_1_fraction_of_zero_values dnn/dnn/hiddenlayer_1_activation-dnn/dnn/hiddenlayer_2_fraction_of_zero_values dnn/dnn/hiddenlayer_2_activation&dnn/dnn/logits_fraction_of_zero_valuesdnn/dnn/logits_activation!dnn/regression_head/ScalarSummary*
_output_shapes
: *
N

P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
ё
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_5efdae9c2d9f434ead622c02e69c76c1/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
х
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:	*У
valueяB█	Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_step
╔
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:	*y
valuepBn	B50 0,50B56 50 0,56:0,50B30 0,30B50 30 0,50:0,30B10 0,10B30 10 0,30:0,10B1 0,1B10 1 0,10:0,1B 
»
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/read$dnn/hiddenlayer_2/biases/part_0/read%dnn/hiddenlayer_2/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_step*
dtypes
2		
Љ
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
Ю
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*
_output_shapes
:*
N*

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
|
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Bdnn/hiddenlayer_0/biases
o
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB50 0,50
љ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
╚
save/AssignAssigndnn/hiddenlayer_0/biases/part_0save/RestoreV2*
T0*
_output_shapes
:2*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0

save/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#Bdnn/hiddenlayer_0/weights
y
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*$
valueBB56 50 0,56:0,50
ќ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save/RestoreV2_1*
T0*
_output_shapes

:82*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
~
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Bdnn/hiddenlayer_1/biases
q
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB30 0,30
ќ
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
╠
save/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save/RestoreV2_2*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0

save/RestoreV2_3/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#Bdnn/hiddenlayer_1/weights
y
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
_output_shapes
:*$
valueBB50 30 0,50:0,30
ќ
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save/RestoreV2_3*
T0*
_output_shapes

:2*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
~
save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*-
value$B"Bdnn/hiddenlayer_2/biases
q
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB10 0,10
ќ
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
╠
save/Assign_4Assigndnn/hiddenlayer_2/biases/part_0save/RestoreV2_4*
T0*
_output_shapes
:
*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0

save/RestoreV2_5/tensor_namesConst*
dtype0*
_output_shapes
:*.
value%B#Bdnn/hiddenlayer_2/weights
y
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*$
valueBB30 10 0,30:0,10
ќ
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_5Assign dnn/hiddenlayer_2/weights/part_0save/RestoreV2_5*
T0*
_output_shapes

:
*
validate_shape(*
use_locking(*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
w
save/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*&
valueBBdnn/logits/biases
o
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB1 0,1
ќ
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
Й
save/Assign_6Assigndnn/logits/biases/part_0save/RestoreV2_6*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/biases/part_0
x
save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*'
valueBBdnn/logits/weights
w
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*"
valueBB10 1 0,10:0,1
ќ
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
─
save/Assign_7Assigndnn/logits/weights/part_0save/RestoreV2_7*
T0*
_output_shapes

:
*
validate_shape(*
use_locking(*,
_class"
 loc:@dnn/logits/weights/part_0
q
save/RestoreV2_8/tensor_namesConst*
dtype0*
_output_shapes
:* 
valueBBglobal_step
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
ќ
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2	
а
save/Assign_8Assignglobal_stepsave/RestoreV2_8*
T0	*
_output_shapes
: *
validate_shape(*
use_locking(*
_class
loc:@global_step
е
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard""!
local_init_op

group_deps_2"v
local_variablesc
a
(dnn/regression_head/metrics/mean/total:0
(dnn/regression_head/metrics/mean/count:0
eval_step:0"ъ
queue_runnersїЅ
є
enqueue_input/fifo_queue$enqueue_input/fifo_queue_EnqueueManyenqueue_input/fifo_queue_Close" enqueue_input/fifo_queue_Close_1*"U
ready_for_local_init_op:
8
6report_uninitialized_variables_1/boolean_mask/Gather:0" 
global_step

global_step:0"о	
trainable_variablesЙ	╗	
Ъ
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weights82  "82
ў
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biases2 "2
Ъ
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weights2  "2
ў
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biases "
Ъ
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weights
  "

ў
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases
 "

Ѓ
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights
  "

|
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases ""J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"&

summary_op

Merge/MergeSummary:0"ё
table_initializero
m
kdnn/input_from_feature_columns/input_from_feature_columns/num-of-doors_one_hot/lookup/hash_table/table_init"Ў
dnnЉ
ј
"dnn/hiddenlayer_0/weights/part_0:0
!dnn/hiddenlayer_0/biases/part_0:0
"dnn/hiddenlayer_1/weights/part_0:0
!dnn/hiddenlayer_1/biases/part_0:0
"dnn/hiddenlayer_2/weights/part_0:0
!dnn/hiddenlayer_2/biases/part_0:0
dnn/logits/weights/part_0:0
dnn/logits/biases/part_0:0"Ц
model_variablesЉ
ј
"dnn/hiddenlayer_0/weights/part_0:0
!dnn/hiddenlayer_0/biases/part_0:0
"dnn/hiddenlayer_1/weights/part_0:0
!dnn/hiddenlayer_1/biases/part_0:0
"dnn/hiddenlayer_2/weights/part_0:0
!dnn/hiddenlayer_2/biases/part_0:0
dnn/logits/weights/part_0:0
dnn/logits/biases/part_0:0"
ready_op


concat:0"Ё

	variablesэ	З	
7
global_step:0global_step/Assignglobal_step/read:0
Ъ
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weights82  "82
ў
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biases2 "2
Ъ
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weights2  "2
ў
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biases "
Ъ
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weights
  "

ў
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases
 "

Ѓ
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights
  "

|
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases ""╚
	summaries║
и
Jenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full:0
/dnn/dnn/hiddenlayer_0_fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0_activation:0
/dnn/dnn/hiddenlayer_1_fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1_activation:0
/dnn/dnn/hiddenlayer_2_fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2_activation:0
(dnn/dnn/logits_fraction_of_zero_values:0
dnn/dnn/logits_activation:0
#dnn/regression_head/ScalarSummary:0"
	eval_step

eval_step:0"
init_op

group_deps_1ТkW       ╚┴Ћ	rEПHЦPоAаю*

lossПkKсі4є