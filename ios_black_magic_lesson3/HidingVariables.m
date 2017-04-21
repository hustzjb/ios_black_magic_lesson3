//
//  HidingVariables.m
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/17.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#import "HidingVariables.h"
#import <objc/runtime.h>

@interface HidingVariables (){
    float privateIvar2;
}

- (void)start;
@end

@implementation HidingVariables{
    float privateIvar3;
}

- (instancetype)init
{
    if (self = [super init]) {
        privateIvar1 = 1;
        privateIvar2 = 2;
        privateIvar3 = 3;
    }
    return self;
}

- (void)start {
    
}

@end


void breakIvarEncapsulation1(void){
    HidingVariables *hidingVars = [[HidingVariables alloc] init];
    //利用KVC机制打破封装特性
    [hidingVars start];
    int privateIvar1 = [[hidingVars valueForKey:@"privateIvar1"] intValue];
}

void breakIvarEncapsulation2(void){
    HidingVariables *hidingVars = [[HidingVariables alloc] init];
    //利用成员变量API
    unsigned int ivarCount;
    Ivar *ivarList = class_copyIvarList([hidingVars class], &ivarCount);
    for (int i = 0; i < ivarCount; i++) {
        id ivar = object_getIvar(hidingVars, ivarList[i]);
        NSString *name = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivarList[i])];
        
        NSLog(@"%@",ivar);
    }
}
