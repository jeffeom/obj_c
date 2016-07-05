//
//  Plane.m
//  Properties
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Plane.h"

@implementation Plane

@synthesize crewNumber = _crewNumber;

- (instancetype)initWithCrewNumber:(int)crewNumber
{
    self = [super init];
    if (self) {
        _crewNumber = crewNumber;
        // use self. when  you call it from your mother class.
        // in this case we are calling it from Plane class.
    }
    return self;
}

-(int)crewNumber{
    return _crewNumber;
    // return self.crewNumber
    // this will cause an infinite loop.
    // since it is going to constantly return the getter.
}

-(void)setCrewNumber:(int)crewNumber{
    _crewNumber = crewNumber;
    NSLog(@"%d", _crewNumber);
    
    //self.crewNumber = crewNumber;
//    [self setCrewNumber:crewNumber];
}

- (NSString *)crewNumberString{
    // this is a computed properties.
    // this converts integer to string.
    return [NSString stringWithFormat:@"%d", self.crewNumber];
}

- (NSString *)nikita{
    // this is a computed properties.
    // this converts integer to string.
    return [NSString stringWithFormat:@"%d", self.crewNumber];
}

//-(void)printCrewNumber{
//    NSLog(@"Crew Number: %d", self.crewNumber);
//    NSLog(@"Crew Number: %d", _crewNumber);
//}


//ARC:
//Property:
// (Atomoic, readwrite, strong)

//atomic: while first one builder works second builder cannot work on it
//nonatomic: while first one builder works second builder can works as well.

//strong: property pointing at object B increment reference count and if the property is gone object B is released from the memory
//weak: E points C C to D and D to C (with weak point). Weak point do not increment reference count. In this case C will only have 1 reference count. So if E is gone, C will have 0 reference count and it will be released then D will be released as well. (Delegates and ib outlets should be weak).

//Protocols:

//insures if selected classes that they are using it or not. 

@end
