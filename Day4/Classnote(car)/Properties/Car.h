//
//  Car.h
//  Properties
//
//  Created by Ken Woo on 2015-10-01.
//  Copyright © 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DriverDelegate.h"

@interface Car : NSObject

@property (weak, nonatomic) id <DriverDelegate> driver;

@property (assign, nonatomic) int vin;

- (int)year;
- (void)setYear:(int)newCarYear;

- (void)sayCarVin;

- (void)whoIsDriving;

@end
