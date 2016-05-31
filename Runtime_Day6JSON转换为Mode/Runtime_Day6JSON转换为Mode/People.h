//
//  People.h
//  Runtime_Day6JSON转换为Mode
//
//  Created by Batu on 16/5/26.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *occupation;
@property (nonatomic, copy) NSString *nationality;

@property (nonatomic, strong) NSNumber *age;

// 生产model
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

// 转换成字典
- (NSDictionary *)covertToDictionary;

@end
