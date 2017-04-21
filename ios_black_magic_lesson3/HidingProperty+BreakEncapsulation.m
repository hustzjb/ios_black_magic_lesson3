//
//  HidingProperty+BreakEncapsulation.m
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/18.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#import "HidingProperty+BreakEncapsulation.h"

@implementation HidingProperty(BreakEncapsulation)

@end

void breakPropertyEncapsulation(void){
    HidingProperty *hidingProperty = [[HidingProperty alloc] init];
    //利用propertyAPI
    unsigned int propertysCount;
    objc_property_t *propertyList = class_copyPropertyList([hidingProperty class], &propertysCount);
    for (int i = 0; i < propertysCount; i++) {
        objc_property_t property = propertyList[i];
        //取得属性名
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property)
                                                          encoding:NSUTF8StringEncoding];
        //利用kvc获取成员变量
        id ivar = [hidingProperty valueForKey:propertyName];
    }
    free(propertyList);
}
