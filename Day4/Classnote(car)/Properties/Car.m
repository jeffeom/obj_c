//
//  Car.m
//  Properties
//
//  Created by Ken Woo on 2015-10-01.
//  Copyright © 2015 Lighthouse Labs. All rights reserved.
//

#import "Car.h"

@implementation Car {
    int _year;
}

- (int)year {
    return _year;
}

- (void)setYear:(int)newCarYear {
    _year = newCarYear;
}

- (void)sayCarVin {
    NSLog(@"Car Year: %d", self.vin);
}

/* override getter if we wanted to
- (int)vin {
    NSLog(@"getter for vin: %d", _vin);
    return _vin;
}
*/

- (void)whoIsDriving {
    if (self.driver != nil) {
        NSLog(@"%@ is driving.", self.driver.name);
        
        [self.driver sayHello];
    } 
}

@end
