//
//  ViewController.m
//  MovingViewsAutolayout
//
//  Created by Jeff Eom on 2016-07-05.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
- (IBAction)moveLabel:(id)sender;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelHorizontalConstraint;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.greetingLabel.text = @"Welcome to this app, it is very simple but pretty cool. So nice";
    
    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moveLabel:(id)sender {
//    
    [UIView animateWithDuration:1.0 animations:^{
        self.labelHorizontalConstraint.constant -= 10;
        [self.view layoutIfNeeded];
    }];
}
@end
