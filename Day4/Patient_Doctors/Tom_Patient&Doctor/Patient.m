//
//  Patient.m
//  Patient&Doctor
//
//  Created by thomas minshull on 2016-06-30.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithAge:(NSNumber *)age andName:(NSString *)name {
    self = [super init];
    if (self) {
        self.age = age;
        self.name = name;
        self.symptoms = [[NSMutableArray alloc] init];
        self.medsTaken = [[NSMutableSet alloc] init];
    }
    return self;
}

- (void)visitDoctor:(Doctor *)doctor {
    if ([doctor acceptPatient:self]){
        NSLog(@"visitDoctor called, step 1");
        [doctor requestMeds:self];
    }
    
}

@end
