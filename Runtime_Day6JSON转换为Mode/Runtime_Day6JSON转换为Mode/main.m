//
//  main.m
//  Runtime_Day6JSON转换为Mode
//
//  Created by Batu on 16/5/26.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = @{
                               @"name": @"wuribatu",
                               @"age": @18,
                               @"occupation": @"iOS Developer",
                               @"nationality": @"Chinese"
                               };
        
        People *people = [[People alloc] initWithDictionary:dict];
        NSLog(@"热烈欢迎，从%@远道而来的%@岁的%@%@",people.nationality,people.age,people.name,people.occupation);

        NSDictionary *covertedDict = [people covertToDictionary];
        NSLog(@"%@",covertedDict);
    }
    return 0;
}
