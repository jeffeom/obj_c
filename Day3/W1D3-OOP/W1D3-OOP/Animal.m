//
//  Animal.m
//  W1D3-OOP
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Animal.h"

@interface Animal()

@property (nonatomic) NSString *sound;

@end

@implementation Animal

- (instancetype)init
{
    // setup parent "NSObject" in this case.
    self = [super init];
    if (self) {
        
        self.sound = @"Grrrr";
        
//        [self printSound];
        
    }
    return self;
}

- (instancetype)initWithSound:(NSString *)sound
{
    self = [super init];
    if (self) {
        self.sound = sound;
    }
    return self;
}


-(void)printSound{
    
    NSLog(@"%@", self.sound);
    
}


@end
