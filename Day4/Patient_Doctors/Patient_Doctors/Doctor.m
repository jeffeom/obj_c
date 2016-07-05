//
//  Doctor.m
//  Patient_Doctors
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization: (NSString *)specialization
{
    self = [super init];
    if (self) {
        self.acceptedPatients = [[NSMutableSet alloc] init];
        self.name = name;
        self.specialization = specialization;
    }
    return self;
}

- (BOOL)acceptPatient:(Patient *)patient{
    if (patient) {
        if(patient.healthCard){
            NSLog(@"Welcome in!");
            //add patient in acceptedPatient list
            [self.acceptedPatients addObject:patient];
            //request for Med to the patient
            [self requestMeds:patient];
            return YES;
        }else{
            NSLog(@"Sorry, you need to bring a valid health card");
            return FALSE;
        }
    } else {
        NSLog(@"patient passed was nil");
        return FALSE;
    }
}

- (void)requestMeds:(Patient *)patient{
    if([self.acceptedPatients containsObject:patient]){
        //ask for patient symptoms
        for (NSString *symptom in patient.symptoms){
            //if patient has the symptom
            if ([self.medications objectForKey:symptom]){
                NSArray *pills = @[[self.medications valueForKey:symptom]];
                //before giving the patient the pills note what pills were given on medsTaken SET
                [patient.medsTaken addObject:pills];
                //give patient the pill for the symptom
            }
        }
        NSLog(@"The Patient took the pill: %@", [patient.medsTaken allObjects]);
        NSLog(@"Doctor gave the pills: %@", [self.medications allValues]);
    }
}

@end
