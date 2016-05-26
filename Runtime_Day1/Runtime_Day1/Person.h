//
//  Person.h
//  Runtime_Day1
//
//  Created by Batu on 16/5/10.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *name;
    NSUInteger age;
    
    NSArray *hobbyArray;
    NSDictionary *powerDictionary;
}

+ (void)run;

+ (void)study;

@end
