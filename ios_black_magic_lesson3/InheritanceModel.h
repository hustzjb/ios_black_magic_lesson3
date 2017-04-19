//
//  InheritanceModel.h
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/18.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#import "HidingProperty.h"

@interface Person : NSObject

@property (assign) float age;

@end

@interface Student : Person

@property (assign) int grade;
@property (assign) int score;

@end

@interface A : NSObject

@end

@interface B : A

- (void)test;

@end

@interface C : B

- (void)test;

@end

@interface Child : C

@end




