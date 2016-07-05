//
//  GreeterDecider.m
//  TheBigPicture
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "GreetingDecider.h"

@implementation GreetingDecider

- (void)greetPeople{
    //sending message to the delegate
    if ([self.delegate shouldSayHello]){
        NSLog(@"Hello!");
    }
}

//Implement how your delegate respond to the methods in the protocol.
- (BOOL)shouldSayHello{
    return YES;
}

@end
