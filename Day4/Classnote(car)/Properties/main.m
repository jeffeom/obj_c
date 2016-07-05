//
//  main.m
//  Properties
//
//  Created by Ken Woo on 2015-10-01.
//  Copyright © 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Ken.h"
#import "Adam.h"

int main(int argc, const char * argv[]) {

    int sum = 2 + 2;
    
    Car *myCar = [[Car alloc] init];
    
    [myCar setYear:1988];
    int carYear = [myCar year];

    [myCar setVin:1000];
    myCar.vin = 1000;
    
    int myCarVin = [myCar vin];
    myCarVin = myCar.vin;
    
    NSLog(@"carYear: %d", carYear);
    NSLog(@"vin: %d", myCarVin);
    
    Ken *ken = [[Ken alloc] init];
    ken.name = @"Ken";
    
    Adam *adam = [[Adam alloc] init];
    adam.name = @"Adam";
    
    myCar.driver = ken;
    [myCar whoIsDriving];
    
    NSMutableSet 
    /*
    Car *anotherCar = [[Car alloc] init];
    int anotherYear = [anotherCar year];
    NSLog(@"%d", anotherYear);
    
    NSMutableArray *listOfCars = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 10; i++) {
        Car *newCar = [[Car alloc] init];
        [newCar setYear:(2000 + i)];
        
        [listOfCars addObject:newCar];
    }
    
    for (Car *currentCar in listOfCars) {
        int currentCarYear = [currentCar year];
        NSLog(@"%d", currentCarYear);
    }
    
    NSLog(@"%@", listOfCars);
    */
    return 0;
}
