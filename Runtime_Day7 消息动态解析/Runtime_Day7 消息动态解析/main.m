//
//  main.m
//  Runtime_Day7 消息动态解析
//
//  Created by Batu on 16/5/31.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        People *cangTeacher = [[People alloc] init];
        cangTeacher.name = @"wuribatu";
        [cangTeacher sing];
    }
    return 0;
}
