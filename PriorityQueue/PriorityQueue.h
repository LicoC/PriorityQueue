//
//  EmotionQueue.h
//  VansLive
//
//  Created by zhangjie on 16/12/5.
//  Copyright © 2016年 licorice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QueueNodeObject : NSObject

@property (nonatomic, assign) NSUInteger compareValue;

@end

@interface PriorityQueue : NSObject

@property (nonatomic, readonly) QueueNodeObject *topObject;
@property (nonatomic, readonly) NSUInteger count;

- (void)pushObject:(QueueNodeObject *)myObject;
- (void)popObject;
- (void)popAllObjects;

@end
