//
//  ViewController.m
//  Day17...Animation
//
//  Created by Student P_02 on 07/07/17.
//  Copyright © 2017 Felix ITs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)moveButtonAction:(id)sender {
    
    
    UIButton *button=sender;
    switch (button.tag) {
        case 101:
            [self animateToLeftUp];
            break;
        case 102:
            [self animateToNorth ];
            break;
        case 103:
            [self animateToRightUp];
            break;
        case 104:
            [self animateToWest];
            break;
        case 106:
            [self animateToEast];
            break;
        case 107:
            [self animateToLeftDown];
            break;
        case 108:
            [self animateToSouth];
            break;
        case 109:
            [self animateToRightDown];
            break;
        
        default:
            break;
    }
    
    
}

-(void)animateToNorth
{
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x, self.ballImageView.frame.origin.y-50, self.ballImageView.frame.size.width, self.ballImageView.frame.size.height)];
    } completion:^(BOOL finished) {
        NSLog(@"Up Animation completed");
    }];
}

- (IBAction)zoomInAction:(id)sender {
    do
    {
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x, self.ballImageView.frame.origin.y, self.ballImageView.frame.size.width+30, self.ballImageView.frame.size.height+30)];
    } completion:^(BOOL finished) {
        NSLog(@"Zoom-In Animation completed");
    }];
    }while (self.ballImageView.bounds.origin.x);
    
    
}

- (IBAction)zoomOutAction:(id)sender {
    
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x, self.ballImageView.frame.origin.y, self.ballImageView.frame.size.width-30, self.ballImageView.frame.size.height-30)];
    } completion:^(BOOL finished) {
        NSLog(@"Zoom-Out Animation completed");
    }];
}

-(void)animateToSouth
{
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x, self.ballImageView.frame.origin.y+50, self.ballImageView.frame.size.width, self.ballImageView.frame.size.height)];
    } completion:^(BOOL finished) {
        NSLog(@"Down Animation completed");
    }];
}

-(void)animateToEast
{
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x+50, self.ballImageView.frame.origin.y, self.ballImageView.frame.size.width, self.ballImageView.frame.size.height)];
    } completion:^(BOOL finished) {
        NSLog(@"Right Animation completed");
    }];
}

-(void)animateToWest
{
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x-50, self.ballImageView.frame.origin.y, self.ballImageView.frame.size.width, self.ballImageView.frame.size.height)];
    } completion:^(BOOL finished) {
        NSLog(@"Left Animation completed");
    }];
}

-(void)animateToLeftUp
{
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x-50, self.ballImageView.frame.origin.y-50, self.ballImageView.frame.size.width, self.ballImageView.frame.size.height)];
    } completion:^(BOOL finished) {
        NSLog(@"Left-UP Animation completed");
    }];
}

-(void)animateToRightUp
{
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x+50, self.ballImageView.frame.origin.y-50, self.ballImageView.frame.size.width, self.ballImageView.frame.size.height)];
    } completion:^(BOOL finished) {
        NSLog(@"Right-UP Animation completed");
    }];
}

-(void)animateToLeftDown
{
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x-50, self.ballImageView.frame.origin.y+50, self.ballImageView.frame.size.width, self.ballImageView.frame.size.height)];
    } completion:^(BOOL finished) {
        NSLog(@"Left-Down Animation completed");
    }];
}

-(void)animateToRightDown
{
    [UIView animateWithDuration:0.02 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballImageView setFrame:CGRectMake(self.ballImageView.frame.origin.x+50, self.ballImageView.frame.origin.y+50, self.ballImageView.frame.size.width, self.ballImageView.frame.size.height)];
    } completion:^(BOOL finished) {
        NSLog(@"Right-Down Animation completed");
    }];
}
@end
