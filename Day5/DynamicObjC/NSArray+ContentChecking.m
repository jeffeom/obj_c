//
//  NSArray+ContentChecking.m
//  DynamicObjC
//
//  Created by Jeff Eom on 2016-07-01.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "NSArray+ContentChecking.h"

@implementation NSArray (ContentChecking)

-(NSUInteger)countOfString{
    int stringCount = 0; //count up all the striings in my array
    
    for (id object in self) {
        //            NSLog(@"This is a %@", [object class]);
        if ([object isKindOfClass:[NSString class]]){ // introspect an object
            stringCount ++;
        }
    }
    return stringCount;
}

@end
