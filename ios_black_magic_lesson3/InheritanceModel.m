//
//  InheritanceModel.m
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/18.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#import "InheritanceModel.h"
#import <objc/runtime.h>

@implementation A


@end

@implementation B

- (void)test
{
    NSLog(@"B Class test method");
}
@end

typedef void(*Function)(id iself, SEL sel);

@implementation C

- (void)test
{
    NSLog(@"C Class test method");
    Class superClas = [[self class] superclass];
    unsigned int count;
    Method *methodsList = class_copyMethodList(superClas, &count);
    for (int i = 0; i < count; i++) {
        IMP imp = method_getImplementation(methodsList[i]);
        SEL sel = method_getName(methodsList[i]);
        Function func = (Function)imp;
        func(self,sel);
    }
}

@end

@implementation Child

@end
