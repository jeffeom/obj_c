//
//  Player.m
//  TwoPlayerMath
//
//  Created by Jeff Eom on 2016-07-04.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _life = 3;
        _name = name;
    }
    return self;
}


-(void)loseALife{
    self.life = self.life - 1;
}

-(void)getALife{
    self.life = self.life + 1;
}

@end
