//
//  c++_polymorphism.cpp
//  ios_black_magic_lesson3
//
//  Created by 张进宝 on 2017/4/19.
//  Copyright © 2017年 Chengwei Zang. All rights reserved.
//

#include "c++_polymorphism.hpp"
#include <iostream>


void Car::drive(){
    std::cout << "Car Drive" << std::endl;
}
void Car::stop(){
    std::cout << "Car Stop" << std::endl;
}

void Taxi::drive(){
    money++;
    std::cout << "Taxi Drive" << std::endl;
}
void Taxi::stop(){
    std::cout << "Taxi Stop" << std::endl;
}

void testPolymorphism(Car *car){
    car->drive();
    car->stop();
}
void test(void){
    Taxi taxi;
    Car *car = &taxi;
    testPolymorphism(car);
}

