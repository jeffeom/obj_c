//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Jeff Eom on 2016-07-04.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;

@property (weak, nonatomic) IBOutlet UILabel *questionGiven;

- (IBAction)one:(UIButton *)sender;
- (IBAction)two:(UIButton *)sender;
- (IBAction)three:(UIButton *)sender;
- (IBAction)four:(UIButton *)sender;
- (IBAction)five:(UIButton *)sender;
- (IBAction)six:(UIButton *)sender;
- (IBAction)seven:(UIButton *)sender;
- (IBAction)eight:(UIButton *)sender;
- (IBAction)nine:(UIButton *)sender;
- (IBAction)zero:(UIButton *)sender;

- (IBAction)sendButton:(UIButton *)sender;

@property (nonatomic) GameModel* game;
@property (nonatomic) NSMutableString* userInput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.game = [GameModel new];
    
    [self.game randomize];
    
    self.questionGiven.text = [NSString stringWithFormat:@"%@: %i + %i = ?", _game.currentPlayer.name, _game.x, _game.y];
    self.player1Score.text = [NSString stringWithFormat: @"P1 Score: %i", _game.player1.life];
    self.player2Score.text = [NSString stringWithFormat: @"P2 Score: %i", _game.player2.life];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)refresh{
    self.questionGiven.text = [NSString stringWithFormat:@"%@: %i + %i = ?", _game.currentPlayer.name, _game.x, _game.y];
    self.player1Score.text = [NSString stringWithFormat: @"P1 Score: %i", _game.player1.life];
    self.player2Score.text = [NSString stringWithFormat: @"P2 Score: %i", _game.player2.life];
}

-(void)resetUserInput{
    _game.userX = 0;
    _game.userY = 0;
}


- (IBAction)one:(UIButton *)sender {
    if (!_game.userX){
        _game.userX = 1;
    }else{
        _game.userY = 1;
    }
}

- (IBAction)two:(UIButton *)sender {
    if (!_game.userX){
        _game.userX = 2;
    }else{
       _game.userY = 2;
    }
}

- (IBAction)three:(UIButton *)sender {
    if (!_game.userX){
        _game.userX = 3;
    }else{
        _game.userY = 3;
    }
}

- (IBAction)four:(UIButton *)sender {
    if (!_game.userX){
        _game.userX = 4;
    }else{
        _game.userY = 4;
    }
}

- (IBAction)five:(UIButton *)sender {
    if (!_game.userX){
        _game.userX = 5;
    }else{
        _game.userY = 5;
    }
}

- (IBAction)six:(UIButton *)sender {
    if (!_game.userX){
        _game.userX = 6;
    }else{
        _game.userY = 6;
    }
}

- (IBAction)seven:(UIButton *)sender {
    if (!_game.userX){
        _game.userX = 7;
    }else{
        _game.userY = 7;
    }
}

- (IBAction)eight:(UIButton *)sender {
    if (!_game.userX){
        _game.userX = 8;
    }else{
        _game.userY = 8;
    }
}

- (IBAction)nine:(UIButton *)sender {
    if (!_game.userX){
        _game.userX = 9;
    }else{
        _game.userY = 9;
    }
}

- (IBAction)zero:(UIButton *)sender {
    if (_game.x < 9){
        _game.userX = 0;
    }else{
        _game.userY = 0;
    }
}

- (IBAction)sendButton:(UIButton *)sender {
    
    if (_game.player1.life > 0 && _game.player2.life > 0){
        if(_game.x + _game.y < 10){
            _game.userAnswer = _game.userX;
        }else{
            _game.userAnswer = _game.userX *10 + _game.userY;
        }
        
        [_game isCorrect];
        
        if(_game.currentPlayer == _game.player1){
            _game.currentPlayer = _game.player2;
        }else{
            _game.currentPlayer = _game.player1;
        }
        
        [self resetUserInput];
        [self.game randomize];
        [self refresh];
    }else{
       self.questionGiven.text = @"Game Over";
    }
    
}
@end
