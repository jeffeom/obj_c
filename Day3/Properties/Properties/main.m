//
//  main.m
//  Properties
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Plane.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Plane *plane = [Plane new];
        // is same as Plane *plane = [[Plane alloc] init];
        
        plane.crewNumber = 10;
//        is same as[plane setCrewNumber:10];
        
//        NSLog(@"%d", plane.crewNumber);
//        NSLog(@"%d", [plane crewNumber]);
        
        [plane printCrewNumber];

        
    }
    return 0;
}
