//
//  Plane.h
//  Properties
//
//  Created by Jeff Eom on 2016-06-30.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Plane : NSObject
//{
//    it is an instance Variable
//    int crewNumber;
//}

// @property creates iVar
@property int crewNumber;

@property (readonly, getter=nikita)NSString *crewNumberString;


// setter and getter can be overwritten.
//it is a getter
-(int)crewNumber;
//it is a setter
-(void)setCrewNumber:(int)crewNumber;
-(void)printCrewNumber;

@end
