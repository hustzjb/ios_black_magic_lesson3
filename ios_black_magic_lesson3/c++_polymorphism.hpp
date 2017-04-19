//
//  c++_polymorphism.hpp
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/19.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#ifndef c___polymorphism_hpp
#define c___polymorphism_hpp

#include <stdio.h>

class Car {
public:
    int gas;
    virtual void drive(void);
    void stop(void);
};

class Taxi : public Car {
public:
    int money;
    virtual void drive();
    virtual void stop();
};

void testPolymorphism(Car *car);
void test(void);


#endif /* c___polymorphism_hpp */
