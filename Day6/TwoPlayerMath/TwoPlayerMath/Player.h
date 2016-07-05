//
//  Player.h
//  TwoPlayerMath
//
//  Created by Jeff Eom on 2016-07-04.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) int life;
@property (nonatomic) NSString *name;


- (void)loseALife;
- (void)getALife;

- (instancetype)initWithName:(NSString *)name;

@end
