//
//  People+Associated.h
//  Runtime_Day4苍老师增加新技能篇
//
//  Created by Batu on 16/5/26.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import "People.h"

typedef void (^CodingCallBack)();

@interface People (Associated)

@property (nonatomic, strong) NSNumber *associatedBust; // 胸围
@property (nonatomic, copy) CodingCallBack associatedCallBack; // 写代码

@end
