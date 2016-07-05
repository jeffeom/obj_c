//
//  ViewController.m
//  MovingViewsAutolayout
//
//  Created by Cory Alder on 2016-07-05.
//  Copyright © 2016 Davander Mobile Corporation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *greetingLabel;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *labelHorizontalConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.greetingLabel.text = @"Welcome to this app, it is very simple but pretty cool. So nice.";
    
    
    UIView *orangeView = [[UIView alloc] init];
    
    orangeView.backgroundColor = [UIColor orangeColor];
    
    orangeView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:orangeView];
    
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint
                                    constraintWithItem:orangeView
                                            attribute:(NSLayoutAttributeHeight)
                                            relatedBy:(NSLayoutRelationEqual)
                                            toItem:self.view
                                            attribute:(NSLayoutAttributeHeight)
                                            multiplier:0.5
                                            constant:10];
    
    
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint
                                            constraintWithItem:orangeView
                                            attribute:(NSLayoutAttributeWidth)
                                            relatedBy:(NSLayoutRelationEqual)
                                            toItem:nil
                                            attribute:(NSLayoutAttributeNotAnAttribute)
                                            multiplier:1.0
                                            constant:200];
    
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint
                                            constraintWithItem:orangeView
                                            attribute:(NSLayoutAttributeTop)
                                            relatedBy:(NSLayoutRelationEqual)
                                            toItem:self.view
                                            attribute:(NSLayoutAttributeTop)
                                            multiplier:1.0
                                            constant:20];
    
    
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint
                                            constraintWithItem:orangeView
                                            attribute:(NSLayoutAttributeCenterX)
                                            relatedBy:(NSLayoutRelationEqual)
                                            toItem:self.view
                                            attribute:(NSLayoutAttributeCenterX)
                                            multiplier:1.0
                                            constant:0];
    
    [self.view addConstraint:heightConstraint];
    [self.view addConstraint:widthConstraint];
    [self.view addConstraints:@[topConstraint, centerXConstraint]];
}


- (IBAction)moveLabel:(id)sender {
    
    self.labelHorizontalConstraint.constant -= 10;
//    self.labelHorizontalConstraint.active = NO;
    [UIView animateWithDuration:1.0 animations:^{
        [self.view layoutIfNeeded];
    }];
    
}


@end
