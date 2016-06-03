//
//  People.m
//  Runtime_Day9 不声明不修改调用对象 修改方法
//
//  Created by Batu on 16/6/1.
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
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return nil;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if ([NSStringFromSelector(aSelector) isEqualToString:@"sing"]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    [anInvocation setSelector:@selector(dance)];
    [anInvocation invokeWithTarget:self];
}

// 若forwardInvocation没有实现，则会调用此方法
- (void)doesNotRecognizeSelector:(SEL)aSelector {
    NSLog(@"消息无法处理:%@", NSStringFromSelector(aSelector));
}

- (void)dance {
    NSLog(@"跳舞 !!! come on!");
}

@end
