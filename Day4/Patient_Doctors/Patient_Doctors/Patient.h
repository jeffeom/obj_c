//
//  Patient.h
//  Patient_Doctors
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger *age;
@property (nonatomic) BOOL healthCard;
@property (nonatomic) NSMutableArray *symptoms;
@property (nonatomic) NSMutableSet *medsTaken;

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age;

- (void)visitDoctor:(Doctor *)doctor;

@end
