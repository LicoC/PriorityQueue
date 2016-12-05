# PriorityQueue
Wrap C++ STL std::priority_queue<> with Objective-C.
Example with using PriorityQueue in ViewControlller.m.
SubClass QueueNodeObject in your project, you can only use compareValue as your priority level as NSUInteger type.

用Objective-C封装了一个C++的STL的优先队列，OC本身是没有优先队列的实现的，Core Foundation倒是有个CFBinaryHeap不过我一直认为CF一套的东西用起来都比较晦涩。你需要继承QueueNodeObject实现你自己的优先队列中的对象，QueueNodeObject目前初步只支持以整型变量做为优先级比较的方式，后续可能会拓展。
