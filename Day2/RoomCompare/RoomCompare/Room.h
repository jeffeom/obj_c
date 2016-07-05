//
//  Room.h
//  RoomCompare
//
//  Created by Jeff Eom on 2016-06-28.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Room : NSObject

@property float height;
@property float width;
@property float depth;

@property float windowHeight;
@property float windowWidth;

-(instancetype)initWithHeight:(float)height width:(float)width andDepth:(float)depth;

-(float)windowArea;
-(float)volume;
-(float)brightnessScore;

-(BOOL)isBrighterThan:(Room *)otherRoom;

@end
