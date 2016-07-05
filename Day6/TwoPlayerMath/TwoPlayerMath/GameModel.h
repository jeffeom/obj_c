//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Jeff Eom on 2016-07-04.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property Player* player1;
@property Player* player2;
@property Player* currentPlayer;

@property (nonatomic) int x;
@property (nonatomic) int y;
@property (nonatomic) int answer;

@property (nonatomic) int userX;
@property (nonatomic) int userY;
@property (nonatomic) int userAnswer;

-(BOOL)isCorrect;
-(void)randomize;

@end
