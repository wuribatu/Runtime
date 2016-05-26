//
//  ViewController.m
//  Runtime_Day1
//
//  Created by Batu on 16/5/10.
//  Copyright © 2016年 Mainbo Education Technology Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

}

// 获取类成员变量
- (void)getIvarList {
    unsigned int outCount = 0;
    Ivar *ivars = class_copyIvarList([Person class], &outCount);
    
    for (int i = 0; i < outCount; i++) {
        Ivar ivar = ivars[i];
        
        const char *name = ivar_getName(ivar);
        const char *type = ivar_getTypeEncoding(ivar);
        
        NSLog(@"成员变量名: %s 成员变量类型:%s", name, type);
    }
    
    // 释放内存
    free(ivars);
}

// 交换2个方法的实现
- (void)exchangeMethod {
    [Person run];
    [Person study];
    
    Method m1 = class_getClassMethod([Person class], @selector(run));
    Method m2 = class_getClassMethod([Person class], @selector(study));
    
    method_exchangeImplementations(m1, m2);
    
    [Person run];
    [Person study];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
