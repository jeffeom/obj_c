//
//  ViewController.m
//  MovingViews
//
//  Created by Jeff Eom on 2016-07-05.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *greenView;
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;

- (IBAction)moveLeft:(id)sender;
- (IBAction)moveRight:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.subviews[0] == greenView
//    self.view.subviews[0].subviews[0] == blueView
//    self.blueView
    
//    [self moveLeft:self];
    
    self.greenView.clipsToBounds = YES;
    //cuts the blue when its moved outside the frame (green)
    
    
    UIView *orangeView = [[UIView alloc] init];
    
    orangeView.backgroundColor = [UIColor orangeColor];
    
    orangeView.frame = CGRectMake(20, 20, 100, 100);
    
//    [self.view addSubview:orangeView];
    // root view to add a subview called orangeView
    [self.greenView addSubview:orangeView];
    self.greetingLabel.text = @"Hello World!!!!!!!!!!!";

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moveLeft:(id)sender {
//    NSLog(@"the move left action was called by %@", sender);
    
//    self.greenView.frame.origin.x -= 20; //does not work
    
//    CGRect newFrame = self.greenView.frame;
    CGRect newFrame = self.blueView.frame;

    newFrame.origin.x -= 20;
    
//    self.greenView.frame = newFrame;
    self.blueView.frame = newFrame;
    
    
}

- (IBAction)moveRight:(id)sender {
    
    CGPoint newCenter = self.greenView.center;
//    CGPoint newCenter = self.blueView.center;

    newCenter.x += 20;
    
//    self.greenView.center= newCenter;
    
//    
//    [UIView animateWithDuration:1.5 animations:^{
//        self.blueView.center= newCenter;}];
    
    [UIView animateWithDuration:1.5 delay:1.0 options:(UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse) animations:^{
        self.greenView.center = newCenter;
    } completion:^(BOOL finished) {
        NSLog(@"done!");
    }];
    
}
@end
