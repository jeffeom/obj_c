//
//  main.m
//  TheBigPicture
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GreetingDecider.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GreetingDecider *greetingDecider = [[GreetingDecider alloc] init];
//        Greeter *greeter = [[Greeter alloc] init];
        
        //we have to set the delegate to greetingDecider(delegator) to be the delegated.
        greetingDecider.delegate = greetingDecider;
        
        //from delegator(greetingDecider) send message (greetPeople) to your delegate (GreeterDelegate).
        [greetingDecider greetPeople];
    }
    return 0;
}