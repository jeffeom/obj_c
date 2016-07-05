//
//  Animal.h
//  W1D3-OOP
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

//@property (nonatomic) NSString *sound;

-(void)printSound;

- (instancetype)initWithSound:(NSString *)sound;

@end
