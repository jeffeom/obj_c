//
//  Game.h
//  DynamicObjC
//
//  Created by Jeff Eom on 2016-07-01.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Game : NSObject <PlayerDelegate> //mygame is a player delegate

-(void)explode;

@end
