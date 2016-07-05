//
//  main.m
//  DynamicObjC
//
//  Created by Jeff Eom on 2016-07-01.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Game.h"
#import "NSArray+ContentChecking.h"

//typedef enum : NSUInteger {
//    Red,
//    Green,
//    Blue
//} Colour;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
//        Colour myColour = Red;
//        
//        if(myColour == Red) {
//            return @"Red";
//        } else if (myColour == Blue){
//            return @"Blue";
//        }
//        
//        NSArray *someArray1 = @[];
//        id someArray2 = [@[] mutableCopy];
//
//        
//        if ([someArray1 isKindOfClass:[NSArray class]]){
//            NSLog(@"I found an array");
//        }
//        if ([someArray2 isKindOfClass:[NSArray class]]){
//                NSLog(@"I found an array");
//        }
    
        NSArray *objects = @[
                             @"some string",
                             @"another string",
                             @[],
                             [[NSDate alloc] init],
                             @[],
                             @"final string",
                             @{}
                             ];
        

//        int stringCount = 0; //count up all the striings in my array
//        
//        for (id object in objects) {
//            //            NSLog(@"This is a %@", [object class]);
//            NSLog(@"This is a %@", [[object class] description]); //print a description
//            if ([object isKindOfClass:[NSString class]]){ // introspect an object
//                stringCount ++;
//            }
//        }
//    }
//        
//        NSLog(@"The array has %i strings in it", stringCount);
        
        
        
        NSString *selectorString = @"count";
        
        SEL someSelector = NSSelectorFromString(selectorString); // same as = @selector(count);
        SEL someSelector2 = @selector(count);
        
        if (someSelector == someSelector2){
            NSLog-(NSMutableArray *)splitStringtoChar{
(@"They are they same!!");
        }
        
        for (id object in objects){
            if([object respondsToSelector:someSelector]){
                [object count];
                // same as [object performSelector:someSelector];
                NSLog(@"the object %@ can be counted", object);
            }
        }
     
        NSLog(@"the objects array contains %lu", (unsigned long)[objects countOfString]);
        
        
        
        Game *game = [[Game alloc] init];
        
        Player *player = [[Player alloc] init];
        player.health = 10;
        
        NSLog(@"My player is %@", player); //player has overridden description method.

        player.delegate = game;
        [player takeDamage:5];
        [player takeDamage:5];

//        [player tookDamage:10];
    }
    return 0;
}
