//
//  Doctor.m
//  Patient&Doctor
//
//  Created by thomas minshull on 2016-06-30.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization {
    self = [super init];
    if (self) {
        self.name = name;
        self.specialization = specialization;
        self.acceptedPatinents = [[NSMutableSet alloc] init];
        self.medications = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (BOOL)acceptPatient:(Patient *)patient {
    if (patient) {
        if (patient.hasValidHC) {
            NSLog(@"Welcome, %@", patient.name);
            [self.acceptedPatinents addObject:patient];
            return true;
        } else {
            NSLog(@"Sorry, your HC is expired");
        }
    } else {
        NSLog(@"patient is nil");
    }
    return false;
}

- (void)requestMeds:(Patient *)patient {
    NSLog(@"request med's called");
    if ([self.acceptedPatinents containsObject:patient]) {
        for (NSString *patientSymptom in patient.symptoms) {
            NSString *med = [self.medications valueForKey:patientSymptom];
            if (med) {
                [patient.medsTaken addObject:med];
                if ([patient.medsTaken containsObject:med]) {
                    NSLog(@"%@", med);
                }
            }
        }
    }
}

@end
