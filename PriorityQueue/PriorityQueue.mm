//
//  EmotionQueue.m
//  VansLive
//
//  Created by zhangjie on 16/12/5.
//  Copyright © 2016年 licorcie. All rights reserved.
//

#import "PriorityQueue.h"
#include <queue>

class QueueCompare {
public:
    bool operator()(QueueNodeObject *l, QueueNodeObject *r) const {
        if (l.compareValue < r.compareValue) {
            return true;
        }else {
            return false;
        }
    }
};

typedef  std::priority_queue<QueueNodeObject *, std::vector<QueueNodeObject *>, QueueCompare> Queue;

#pragma mark - QueueNodeObject
@implementation QueueNodeObject

@end

#pragma mark - PriorityQueue
@interface  PriorityQueue ()

@property (nonatomic) Queue *priority_queue;

@end

@implementation PriorityQueue
- (instancetype)init {
    self = [super init];
    if (self) {
        _priority_queue = new Queue();
    }
    return self;
}

- (void)dealloc {
    delete _priority_queue;
    _priority_queue = NULL;
}

- (QueueNodeObject *)topObject {
    return !self.priority_queue->empty() ? self.priority_queue->top() : nil;
}

- (NSUInteger)count {
    return (NSUInteger)self.priority_queue->size();
}

- (void)popObject {
    if (!self.priority_queue->empty()) {
        self.priority_queue->pop();
    }
}

- (void)pushObject:(QueueNodeObject *)myObject {
    self.priority_queue->push(myObject);
}

- (void)popAllObjects {
    if (!self.priority_queue->empty()) {
        delete _priority_queue;
        _priority_queue = new Queue();
    }
}

@end
