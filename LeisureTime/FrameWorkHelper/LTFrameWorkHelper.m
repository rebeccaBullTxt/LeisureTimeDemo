//
//  LYFrameWorkHelper.m
//  LYFrameDemo
//
//  Created by xxx on 2019/8/2.
//  Copyright © 2019 xxx. All rights reserved.
//

#import "LTFrameWorkHelper.h"
#import <Bugly/Bugly.h>
#import "AvoidCrash.h"
@implementation LTFrameWorkHelper

+ (void)startLoadThird {
    [[self class] setBugly];
    [[self class] setAvoidCrash];
}

#pragma mark - 开启Bugly异常检测
+ (void)setBugly {
    BuglyConfig *config = [BuglyConfig new];
    config.blockMonitorEnable = YES;
}

#pragma mark - 基础防崩溃处理
+ (void)setAvoidCrash {
    [AvoidCrash makeAllEffective];
}

@end
