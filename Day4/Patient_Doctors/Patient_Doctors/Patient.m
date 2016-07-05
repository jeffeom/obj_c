//
//  Patient.m
//  Patient_Doctors
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.symptoms = [[NSMutableArray alloc] init];
        self.medsTaken = [[NSMutableSet alloc] init];
    }
    return self;
}

- (void)visitDoctor:(Doctor *)doctor{
    
    if (doctor){
        [doctor acceptPatient:self];
        NSLog(@"Thanks, Doc!");
    }else{
        NSLog(@"I will return with a valid health card");
    }
}

@end
