//
//  ViewController.m
//  SULoggerDemo
//
//  Created by KevinSu on 16/3/5.
//  Copyright © 2016年 KevinSu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int _count;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _count = 0;
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(giveLog) userInfo:nil repeats:YES];
}

- (void)giveLog {
    NSLog(@"This is NO.%d log",_count);
    _count ++;
}

@end
