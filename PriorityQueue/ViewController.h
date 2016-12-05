//
//  ViewController.h
//  PriorityQueue
//
//  Created by zhangjie on 16/12/5.
//  Copyright © 2016年 licorice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PriorityQueue.h"

@interface SeatInfo : QueueNodeObject

@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age;
@end

@interface ViewController : UIViewController


@end

