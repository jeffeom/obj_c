//
//  Adam.h
//  Properties
//
//  Created by Ken Woo on 2015-10-01.
//  Copyright © 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DriverDelegate.h"

@interface Adam : NSObject <DriverDelegate>

@property (strong, nonatomic) NSString *name;

- (void)feedDog;

@end
