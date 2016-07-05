//
//  Bird.m
//  W1D3-OOP
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Bird.h"

@implementation Bird

-(instancetype)initWithSound:(NSString *)sound andBodyParts:(NSArray*)bodyParts{
    
    //this overrides sound what I put in in main.m
    self = [super initWithSound:sound];
    
    if (self != nil) {
    
        // this overrides bodyParts what I put in in main.m
        self.bodyParts = bodyParts;
        // _bodyParts = bodyParts;
        
    }
    return self;
}

-(void)printAllBodyParts{
    
    for (NSString* bodyPart in self.bodyParts){
        
        NSLog(@"%@", bodyPart);
    }
}

-(void)printSound{
    [super printSound];
    NSLog(@"and more");
}

@end
