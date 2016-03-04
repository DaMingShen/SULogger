//
//  SULogboard.m
//  SUMusic
//
//  Created by 万众科技 on 16/3/4.
//  Copyright © 2016年 KevinSu. All rights reserved.
//

#import "SULogboard.h"

@interface SULogboard ()

@property (nonatomic, strong) UITextView * logTextView;

@end

@implementation SULogboard

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self configUI];
    }
    return self;
}

- (void)configUI {
    self.backgroundColor = [UIColor clearColor];
    
    self.logTextView = [[UITextView alloc]initWithFrame:self.bounds];
    self.logTextView.backgroundColor = [UIColor darkGrayColor];
    self.logTextView.textColor = [UIColor whiteColor];
    self.logTextView.font = [UIFont systemFontOfSize:15.0];
    self.logTextView.editable = NO;
    self.logTextView.layoutManager.allowsNonContiguousLayout = NO; //default is YES  will reset scoll contentoffset
    [self addSubview:self.logTextView];
}

- (void)updateLog:(NSString *)logText {
    if (self.logTextView.contentSize.height - (self.logTextView.contentOffset.y + CGRectGetHeight(self.bounds)) <= 30 ) {
        self.logTextView.text = logText;
        [self.logTextView scrollRangeToVisible:NSMakeRange(self.logTextView.text.length, 1)];
    }else {
        self.logTextView.text = logText;
    }
}


@end
