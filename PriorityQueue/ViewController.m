//
//  ViewController.m
//  PriorityQueue
//
//  Created by zhangjie on 16/12/5.
//  Copyright © 2016年 licorice. All rights reserved.
//

#import "ViewController.h"

@implementation SeatInfo

- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age {
    if (self = [super init]) {
        self.name = name;
        self.compareValue = age;
    }
    return self;
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SeatInfo *s1 = [[SeatInfo alloc] initWithName:@"贾母" age:70];
    SeatInfo *s2 = [[SeatInfo alloc] initWithName:@"宝玉" age:16];
    SeatInfo *s3 = [[SeatInfo alloc] initWithName:@"黛玉" age:15];
    SeatInfo *s4 = [[SeatInfo alloc] initWithName:@"宝钗" age:17];
    SeatInfo *s5 = [[SeatInfo alloc] initWithName:@"妙玉" age:18];
    SeatInfo *s6 = [[SeatInfo alloc] initWithName:@"贾政" age:40];
    SeatInfo *s7 = [[SeatInfo alloc] initWithName:@"凤姐儿" age:20];
    SeatInfo *s8 = [[SeatInfo alloc] initWithName:@"平儿" age:19];
    
    PriorityQueue *queue = [[PriorityQueue alloc] init];
    
    [queue pushObject:s1];
    [queue pushObject:s2];
    [queue pushObject:s3];
    [queue pushObject:s4];
    [queue pushObject:s5];
    [queue pushObject:s6];
    [queue pushObject:s7];
    [queue pushObject:s8];
    
    while (queue.count) {
        SeatInfo *seatInfo = (SeatInfo *)[queue topObject];
        NSLog(@"%@", seatInfo.name);
        [queue popObject];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
