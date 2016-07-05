//
//  Bird.h
//  W1D3-OOP
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Animal.h"

@interface Bird : Animal

@property (nonatomic) NSArray *bodyParts;

-(instancetype)initWithSound:(NSString *)sound andBodyParts:(NSArray*)bodyParts;

-(void)printAllBodyParts;

@end
