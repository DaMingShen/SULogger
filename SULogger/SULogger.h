//
//  SULogboard.h
//  SUMusic
//
//  Created by 万众科技 on 16/3/4.
//  Copyright © 2016年 KevinSu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SULogger : NSObject

/**
 *  描述：初始化Logger
 */
+ (void)start;

/**
 *  描述：改变Log面板状态(隐藏->显示 or 显示->隐藏)
 */
+ (void)visibleChange;

@end
