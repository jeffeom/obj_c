//
//  ViewController.m
//  MovingViews
//
//  Created by Cory Alder on 2016-07-05.
//  Copyright © 2016 Davander Mobile Corporation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *greenView;
@property (strong, nonatomic) IBOutlet UIView *blueView;

@property (strong, nonatomic) UIView *orangeView;
@property (strong, nonatomic) IBOutlet UILabel *greetingLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.greenView.clipsToBounds = YES;
    
//    self.view.subviews[0].subviews[0];
//    self.blueView
    
//    [self moveLeft:self];
    
    
    self.orangeView = [[UIView alloc] init];
    
    self.orangeView.backgroundColor = [UIColor orangeColor];
    
    self.orangeView.frame = CGRectMake(20, 20, 100, 100);
    
    [self.greenView addSubview:self.orangeView];
    
    
    self.greetingLabel.text = @"Welcome to app";
    
    
}


- (IBAction)moveLeft:(id)sender {
//    NSLog(@"the move left action was called by %@", sender);
    
//    self.greenView.frame.origin.x -= 20; // doesn't work
    self.orangeView;
    CGRect newFrame = self.blueView.frame;
//    newFrame.origin.x -= 20;
    
    newFrame.origin.x = newFrame.origin.x - 20;
    
    self.blueView.frame = newFrame;
    
}

- (IBAction)moveRight:(id)sender {
    
    
    
    CGPoint newCenter = self.greenView.center;
    newCenter.x += 20;
    
    
//    
//    [UIView animateWithDuration:1.5 animations:^{
//        self.greenView.center = newCenter;
//    }];
    
    [UIView animateWithDuration:1.5 delay:1.0 options:(UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse) animations:^{
        self.greenView.center = newCenter;
    } completion:^(BOOL finished) {
        NSLog(@"done!");
    }];
}




@end
