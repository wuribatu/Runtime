//
//  main.m
//  Runtime_Day4苍老师增加新技能篇
//
//  Created by Batu on 16/5/26.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People+Associated.h"
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        People *cangTeacher = [[People alloc] init];
        cangTeacher.name = @"苍井空";
        cangTeacher.age  = 18;
        [cangTeacher setValue:@"老师" forKey:@"occupation"];
        cangTeacher.associatedBust = @(90);
        cangTeacher.associatedCallBack = ^(){
            NSLog(@"苍老师要写代码了");
        };
        cangTeacher.associatedCallBack();
        
        NSDictionary *propertyResultDic = [cangTeacher allProperties];
        for (NSString *propertyName in propertyResultDic.allKeys) {
            NSLog(@"propertyName:%@, propertyValue:%@", propertyName, propertyResultDic[propertyName]);
        }
        
        NSDictionary *varResultDict = [cangTeacher allIvars];
        for (NSString *varValue in varResultDict.allKeys) {
            NSLog(@"varName = %@, varValue = %@", varValue, varResultDict[varValue]);
        }
        
        NSDictionary *methodResultDict = [cangTeacher allMethods];
        for (NSString *methodValue in methodResultDict.allKeys) {
            NSLog(@"methodName = %@, argumentsCount = %@", methodValue, methodResultDict[methodValue]);
        }
    }
    return 0;
}
