//
//  main.m
//  RoomCompare
//
//  Created by Jeff Eom on 2016-06-28.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float roomDepth = 10;
        float roomWidth = 7;
        float roomHeight = 8.5;
        
        float windowHeight = 7.5;
        float windowWidth = 6;
        
        float windowArea = windowHeight * windowWidth;
        float roomVolume = roomDepth * roomWidth * roomHeight;
        
        float brightnessScore1 = windowArea / roomVolume;
        
        NSLog(@"room is %f bright", brightnessScore1);
        
        
        float room2Depth = 10;
        float room2Width = 7;
        float room2Height = 8.5;
        
        float window2Height = 7.5;
        float window2Width = 6;
        
        float window2Area = window2Height * window2Width;
        float room2Volume = room2Depth * room2Width * room2Height;
        
        float brightnessScore2 = window2Area / room2Volume;
        
        NSLog(@"room is %f bright", brightnessScore2);
        
        Room *room1 = [[Room alloc] init];
        
        room1.height = 10;
        room1.width = 100;
        room1.depth = 100;
        
        room1.windowWidth = 10;
        room1.windowHeight = 10;
        
//        float window3Area = room1.windowHeight * room1.windowWidth;
//        float room3Volume = room1.depth * room1.width * room1.height;
//        
//        float room1WindowArea = [room1 windowArea];
//        float room1Volume = [room1 volume];
//
//        float brightnessScore3 = room1WindowArea / room1Volume;
        
        float brightnessScore3 = [room1 brightnessScore];
        
        NSLog(@"room is %f bright!!", brightnessScore3);
        
        
        Room *room2 = [[Room alloc] init];
        
        NSLog(@"Room2 brightness %f", [room2 brightnessScore]);
        
        
        
//        Room *room2 = [[Room alloc] initWithVolume:100];
        Room *room3 = [[Room alloc] initWithHeight:10 width:1000 andDepth:1000];

        NSLog(@"Room3 brightness %f", [room3 brightnessScore]);
        
        
        if ([room1 isEqual:room3]){
            NSLog(@"Room1 and Room3 are the same");
        }else{
            NSLog(@"Room1 and Room3 are NOT the same");
        }
        
        if ([room1 brightnessScore] > [room3 brightnessScore]){
            NSLog(@"Room1 is brighter than Room3");
        }
        
        if ([room1 isBrighterThan:room3]){
            NSLog(@"Room1 is brighter than Room3");
        }
    }
    return 0;
}
