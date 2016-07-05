//
//  main.m
//  Patient&Doctor
//
//  Created by thomas minshull on 2016-06-30.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *patientAge = [NSNumber numberWithInt:23];
        NSString *patientName = @"bob";
        
        NSString *drName = @"Dr. Bob";
        NSString *drSpecialty = @"Dentist";
        
        Doctor *doctor = [[Doctor alloc] initWithName:drName andSpecialization:drSpecialty];
        Patient *patient = [[Patient alloc] initWithAge:patientAge andName:patientName];
        
        NSString *symptom1 = @"cough";
        NSString *symptom2 = @"feaver";
        NSString *symptom3 = @"chills";
        NSString *symptom4 = @"runnynose";
        
        
        NSString *pill1 = @"pill1";
        NSString *pill2 = @"pill2";
        NSString *pill3 = @"pill3";
        NSString *pill4 = @"pill4";
        
        doctor.medications = [[NSMutableDictionary alloc] initWithObjectsAndKeys: pill1, symptom1, pill2, symptom2, pill3, symptom3, nil];
        
        patient.symptoms = [@[symptom2, symptom3, symptom4] mutableCopy];
        patient.hasValidHC = true;
        
        [patient visitDoctor:doctor];
        
        
        
    }
    return 0;
}
