  *	S????v@2e
.Iterator::Root::ParallelMapV2::Zip[0]::FlatMapO?\?	??!????uE@)?L?????1=??È4D@:Preprocessing2t
=Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::MapG?&jin??!??=V]?D@)?VBwI???1ud??$7@:Preprocessing2?
KIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat?s]?@??!????y2@)g&?5̰?1?|oS?1@:Preprocessing2T
Iterator::Root::ParallelMapV2=?U?????!?Ic??m@)=?U?????1?Ic??m@:Preprocessing2k
4Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat?:TS?u??!?̾f?1@)??ʅʿ??1??]@:Preprocessing2o
8Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch????u?!??"ɉ}??)????u?1??"ɉ}??:Preprocessing2E
Iterator::Root??x>???!f?<? @)Y?|^?t?17	(?m??:Preprocessing2Y
"Iterator::Root::ParallelMapV2::Zip??:M???!????v/I@)???V?j?1??Er???:Preprocessing2v
?Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[13]::TensorSlice_{fI?j?!׳?%?a??)_{fI?j?1׳?%?a??:Preprocessing2?
RIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat::Range?ZӼ?]?!k??!%??)?ZӼ?]?1k??!%??:Preprocessing2w
@Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor겘?|\[?!^?Z{M??)겘?|\[?1^?Z{M??:Preprocessing2v
?Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[12]::TensorSlice?xy:W?B?!??????)?xy:W?B?1??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysisk
unknownTNo step time measured. Therefore we cannot tell where the performance bottleneck is.no*noZno#You may skip the rest of this page.BZ
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown
  " * 2 : B J R Z b JCPU_ONLYb??No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.