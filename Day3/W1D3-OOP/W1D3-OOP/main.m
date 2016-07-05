//
//  main.m
//  W1D3-OOP
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Bird.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Animal *animal1 = [[Animal alloc] init];
        [animal1 printSound];
//        This .sound won't work when sound is in private not public.
//        NSLog(@"%@", animal1.sound);
        
        Animal *animal2 = nil;
        [animal2 printSound];
        
        Animal *cat = [[Animal alloc] initWithSound:@"Meow"];
        [cat printSound];
        
        
        Bird *bird1 = [[Bird alloc] initWithSound:@"Squak" andBodyParts:@[@"wings", @"tails"]];
        [bird1 printSound];
        [bird1 printAllBodyParts];
        
        NSSet *teachers = [NSSet setWithObjects:@"Dan", @"Cory", @"Nikita", @"Dan", nil];
        
        BOOL isInSet = [teachers containsObject:@"Dan"];
        
        //NSArray array = alloc init
//        NSArray *array = [NSArray array];
        
    }
    return 0;
}
