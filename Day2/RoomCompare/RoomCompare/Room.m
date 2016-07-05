//
//  Room.m
//  RoomCompare
//
//  Created by Jeff Eom on 2016-06-28.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "Room.h"

@implementation Room

-(instancetype)initWithHeight:(float)height width:(float)width andDepth:(float)depth {
    self = [super init];
    if (self) {
        
        self.depth = depth;
        self.height = height;
        self.width = width;
        
        self.windowHeight = 10;
        self.windowWidth = 10;
        
    }
    return self;
}


//Room is going to have 10x10x10.
- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.depth = 10;
        self.height = 10;
        self.width = 10;
        
        self.windowHeight = 10;
        self.windowWidth = 10;
        
    }
    return self;
}

-(float)windowArea {
    float windowArea = self.windowHeight * self.windowWidth;
    
    return windowArea;
}

-(float)volume {
    return self.depth * self.height * self.width;
}

-(float)brightnessScore{
    // give a space between self and windowArea for computing "windowArea"
    return [self windowArea] / [self volume];
}

-(BOOL)isEqual:(Room *)otherRoom{
    return [self brightnessScore] == [otherRoom brightnessScore];
}

-(BOOL)isBrighterThan:(Room *)otherRoom{
    return [self brightnessScore] > [otherRoom brightnessScore];
}


@end
