//
//  DriverDelegate.h
//  Properties
//
//  Created by Ken Woo on 2015-10-01.
//  Copyright © 2015 Lighthouse Labs. All rights reserved.
//

@protocol DriverDelegate

@property (strong, nonatomic) NSString *name;
- (void)sayHello;

@end