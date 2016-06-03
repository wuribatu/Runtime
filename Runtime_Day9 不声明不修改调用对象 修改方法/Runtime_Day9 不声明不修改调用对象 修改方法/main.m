//
//  main.m
//  Runtime_Day9 不声明不修改调用对象 修改方法
//
//  Created by Batu on 16/6/1.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#if TARGET_IPHNE_SIMULATOR 
#import <objc/ojbc-runtime.h>
#else
#import <objc/runtime.h>
#import <objc/message.h>
#endif
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        People *cangTeacher = [[People alloc] init];
        ((void(*)(id, SEL))objc_msgSend)((id)cangTeacher, @selector(sing));
    }
    return 0;
}
