//
//  Person.m
//  Runtime_Day1
//
//  Created by Batu on 16/5/10.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import "Person.h"
#import "NSObject+Extension.h"

@interface Person ()
{
    NSString *secret;
}

@property (nonatomic, copy) NSString *ppSring;

@end

@implementation Person

+ (void)run {
    NSLog(@"跑");
}

+ (void)study {
    NSLog(@"学习");
}

- (NSArray *)ignoredNames {
    return @[@"bone"];
}

// 利用runtime 获取所有属性来重写归档解档方法
// 在系统方法内来调用我们的方法
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        [self decode:aDecoder];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self encode:aCoder];
}

@end
