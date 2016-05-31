//
//  People.m
//  Runtime_Day7 消息动态解析
//
//  Created by Batu on 16/5/31.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import "People.h"

#if TARGET_IPHONE_SIMULATOR
#import <objc/objc-runtime.h>
#else 
#import <objc/runtime.h>
#import <objc/message.h>
#endif

@implementation People

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if ([NSStringFromSelector(sel) isEqualToString:@"sing"]) {
        class_addMethod(self, sel, (IMP)otherSing, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

void otherSing(id self, SEL cmd) {
    NSLog(@"%@sing sing", ((People *)self).name);
}

@end
