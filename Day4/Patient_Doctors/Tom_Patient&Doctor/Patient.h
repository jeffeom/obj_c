//
//  Patient.h
//  Patient&Doctor
//
//  Created by thomas minshull on 2016-06-30.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic) NSNumber *age;
@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableSet *medsTaken;
@property (nonatomic) NSMutableArray *symptoms;
@property BOOL hasValidHC;

- (instancetype)initWithAge:(NSNumber *)age andName:(NSString *)name;
- (void)visitDoctor:(Doctor *)doctor;

@end
