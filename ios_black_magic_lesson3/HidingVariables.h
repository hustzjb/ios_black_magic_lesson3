//
//  HidingVariables.h
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/17.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HidingVariables : NSObject {
@private
    int privateIvar1;
}
@end
void breakIvarEncapsulation1(void);
void breakIvarEncapsulation2(void);
