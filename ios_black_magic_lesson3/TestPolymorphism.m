//
//  TestPolymorphism.m
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/19.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#import "TestPolymorphism.h"

@interface Car : NSObject
- (void)drive;
@end

@implementation Car

- (void)drive
{
    NSLog(@"Car drive");
}

@end

@interface Taxi : Car
- (void)drive;
@end

@implementation Taxi

- (void)drive
{
    NSLog(@"Taxi drive");
}

@end

@implementation TestPolymorphism

+ (void)testPolymorphism
{
    Car *car = [[Taxi alloc] init];
    [TestPolymorphism testMethodWithClass:car];
}

+ (void)testMethodWithClass:(Car *)car
{
    [car drive];
}

@end
