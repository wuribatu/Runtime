//
//  People.h
//  Runtime_Day5苍老师的资料归档篇
//
//  Created by Batu on 16/5/26.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject <NSCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *occupation;
@property (nonatomic, copy) NSString *nationality;

@property (nonatomic, strong) NSNumber *age;

@end
