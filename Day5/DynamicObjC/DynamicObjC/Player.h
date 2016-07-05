//
//  Player.h
//  DynamicObjC
//
//  Created by Jeff Eom on 2016-07-01.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PlayerDelegate <NSObject>

-(void)playerHasDied;
-(void)playerTookDamage;

@optional

-(void)explode;

@end


@interface Player : NSObject

@property (nonatomic, strong, readonly) NSString *name; //readonly
@property (nonatomic, readwrite) int health;

@property (nonatomic, strong) id<PlayerDelegate> delegate; //player can be selected to the delegate if they follow the rule (protocol)

-(void)takeDamage:(int)howMuch;

@end
