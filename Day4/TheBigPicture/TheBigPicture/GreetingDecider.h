//
//  GreeterDecider.h
//  TheBigPicture
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GreeterDelegate.h"

@interface GreetingDecider : NSObject <GreeterDelegate>;

//added delegate property(delegate) to the delegator(GreetingDecider)
@property (nonatomic, weak) id <GreeterDelegate> delegate;

- (void)greetPeople;

@end
