//
//  main.m
//  Runtime_Day8 不声明方法 动态更换调用对象
//
//  Created by Batu on 16/5/31.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

#if TARGET_IPHONE_SIMULATOR
#import <objc/objc-runtime.h>
#else 
#import <objc/runtime.h>
#import <objc/message.h>
#endif

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Bird *bird = [[Bird alloc] init];
        bird.name = @"little bird";
        ((void (*)(id, SEL))objc_msgSend)((id)bird, @selector(sing));
    }
    return 0;
}
