//
//  AppDelegate.m
//  SULoggerDemo
//
//  Created by KevinSu on 16/3/5.
//  Copyright © 2016年 KevinSu. All rights reserved.
//

#import "AppDelegate.h"
#import "SULogger.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [SULogger start];
    
    return YES;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.type == UIEventSubtypeMotionShake) {
        [SULogger visibleChange];
    }
}

@end
