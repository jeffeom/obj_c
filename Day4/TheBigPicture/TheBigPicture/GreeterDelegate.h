//
//  GreeterDelegate.h
//  TheBigPicture
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

//Create a Protocol that defines what messages the delegate can receive
@protocol GreeterDelegate <NSObject>

-(BOOL)shouldSayHello;

@end
