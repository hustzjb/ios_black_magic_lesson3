//
//  HidingMethods.m
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/18.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#import "HidingMethods.h"
#import <objc/runtime.h>

@implementation HidingMethods

- (void)publicMethod1
{
    NSLog(@"This is A Public Method!");
}

- (void)privateMethod2
{
    NSLog(@"This is A Private Method!");
}

@end

void breakMethodEncapsulation3(void){
    HidingMethods *hidingMethods = [[HidingMethods alloc] init];
    //利用方法API
    unsigned int methodsCount;
    Method *methodList = class_copyMethodList([hidingMethods class], &methodsCount);
    for (int i = 0; i < methodsCount; i++) {
        SEL cmd = method_getName(methodList[i]);
        //invocation执行方法
        NSMethodSignature *signature = [hidingMethods methodSignatureForSelector:cmd];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        [invocation setTarget:hidingMethods];
        [invocation setSelector:cmd];
        [invocation invoke];
    }
}
