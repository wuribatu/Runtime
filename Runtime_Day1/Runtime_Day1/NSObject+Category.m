//
//  NSObject+Category.m
//  Runtime_Day1
//
//  Created by Batu on 16/5/10.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import "NSObject+Category.h"
#import <objc/runtime.h>


@implementation NSObject (Category)

// 给分类添加成员变量
char nameKey;

- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, &nameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name {
    return objc_getAssociatedObject(self, &nameKey);
}

@end
