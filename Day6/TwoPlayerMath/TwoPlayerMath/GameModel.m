//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Jeff Eom on 2016-07-04.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _player1 = [[Player alloc] initWithName:@"Player 1"];
        _player2 = [[Player alloc] initWithName:@"Player 2"];
    
        _currentPlayer = _player1;
        
    }
    
    return self;
}

-(BOOL)isCorrect {
    
    Player *player = [self currentPlayer];

    if (self.userAnswer != self.x + self.y){
        [player loseALife];
        return FALSE;
        
    } else {
        [player getALife];
        return TRUE;
    }
}

-(void)randomize{
    self.x = arc4random_uniform(20);
    self.y = arc4random_uniform(20);
}



@end
