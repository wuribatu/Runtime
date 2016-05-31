//
//  People.m
//  Runtime_Day6JSON转换为Mode
//
//  Created by Batu on 16/5/26.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import "People.h"

#if TARGET_IPHONE_SIMULATOR
#import <objc/objc-runtime.h>
#else
#import <objc/runtime.h>
#import <objc/message.h>
#endif

@implementation People

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        for (NSString *key in dictionary.allKeys) {
            id value = dictionary[key];
            
            SEL setter = [self propertySetterByKey:key];
            if (setter) {
                ((void (*)(id, SEL, id))objc_msgSend)(self, setter, value);
            }
        }
    }
    
    return self;
}

- (NSDictionary *)covertToDictionary {
    
    unsigned int count = 0;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    
    if (count) {
        NSMutableDictionary *resultDict = @{}.mutableCopy;
        for (NSUInteger i = 0; i < count; i++) {
            const void *propertyName = property_getName(properties[i]);
            NSString *name = [NSString stringWithUTF8String:propertyName];
            
            SEL getter = [self propertyGetterByKey:name];
            if (getter) {
                id value = ((id (*)(id, SEL))objc_msgSend)(self, getter);
                if (value) {
                    resultDict[name] = value;
                } else {
                    resultDict[name] = @"字典的key对应的value不能为nil！";
                }
            }
        }
        free(properties);
        return resultDict;
    }
    free(properties);
    return nil;
}

#pragma mark - private methods

// 生成setter方法
- (SEL)propertySetterByKey:(NSString *)key {
    NSString *propertySetterName = [NSString stringWithFormat:@"set%@:", key.capitalizedString];
    SEL setter = NSSelectorFromString(propertySetterName);
    if ([self respondsToSelector:setter]) {
        return setter;
    }
    return nil;
}

// 生产getter方法
- (SEL)propertyGetterByKey:(NSString *)name {
    SEL getter = NSSelectorFromString(name);
    if ([self respondsToSelector:getter]) {
        return getter;
    }
    return nil;
}

@end













