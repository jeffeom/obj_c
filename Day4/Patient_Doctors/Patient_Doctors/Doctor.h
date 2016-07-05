//
//  Doctor.h
//  Patient_Doctors
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;
@property (nonatomic) NSMutableSet *acceptedPatients;
@property (nonatomic) NSDictionary *medications;

- (instancetype)initWithName:(NSString *)name andSpecialization: (NSString *)specialization;

- (BOOL)acceptPatient:(Patient *)patient;
- (void)requestMeds:(Patient *)patient;

@end