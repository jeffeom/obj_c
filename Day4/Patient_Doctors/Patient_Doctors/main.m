//
//  main.m
//  Patient_Doctors
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor1 = [[Doctor alloc] initWithName:@"Eric" andSpecialization:@"Doctor1"];
//        Doctor *doctor2 = [[Doctor alloc] initWithName:@"Kevin" andSpecialization:@"Doctor2"];
//        Doctor *doctor3 = [[Doctor alloc] initWithName:@"Kanye" andSpecialization:@"Doctor3"];

        Patient *patient1 = [[Patient alloc] initWithName:@"John" andAge:23];
//        Patient *patient2 = [[Patient alloc] initWithName:@"West" andAge:23];
//        Patient *patient3 = [[Patient alloc] initWithName:@"South" andAge:23];

        NSArray *patient1Symptoms = @[@"headache", @"nausea", @"runnynose", @"cough"];
        [patient1.symptoms addObjectsFromArray:patient1Symptoms];
        patient1.healthCard = YES;
        doctor1.medications = [[NSDictionary alloc] initWithObjectsAndKeys:@"pill1 (cough pill)", @"cough",
                                                                           @"pill2 (nausea pill)", @"nausea",
                                                                           @"pill3 (headache pill)", @"headache",
                                                                           @"pill4 (runnynose pill)", @"runnynose", nil];
        [patient1 visitDoctor:doctor1];
    }
    return 0;
}
