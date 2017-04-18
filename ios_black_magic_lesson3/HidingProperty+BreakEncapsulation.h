//
//  HidingProperty+BreakEncapsulation.h
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/18.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#import "HidingProperty.h"
#import <objc/runtime.h>

@interface HidingProperty(BreakEncapsulation)

@property (nonatomic, strong) NSString *privateProperty;

@end

void breakPropertyEncapsulation(void);

