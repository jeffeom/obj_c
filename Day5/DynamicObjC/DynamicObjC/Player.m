
//
//  Player.m
//  DynamicObjC
//
//  Created by Jeff Eom on 2016-07-01.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Player.h"

@interface Player()

@property (nonatomic, strong) NSString *name; //readwrite

@end

@implementation Player

-(NSString *)description{
    return [[super description] stringByAppendingString:@"- woo!"];
//    return @"Woooo!";
}

-(void)takeDamage:(int)howMuch{
    self.health -= howMuch;
    if (self.health <= 0){
        NSLog(@"Critical [[-%i!!]]", howMuch);
        [self.delegate playerHasDied];
        if([self.delegate respondsToSelector:@selector(explode)]){
            [self.delegate explode];
        }
    }else {
        [self.delegate playerTookDamage];
        NSLog(@"Critical [[-%i!!]]", howMuch);
    }
}

@end
