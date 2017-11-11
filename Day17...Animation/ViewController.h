//
//  ViewController.h
//  Day17...Animation
//
//  Created by Student P_02 on 07/07/17.
//  Copyright © 2017 Felix ITs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)moveButtonAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *ballImageView;
-(void)animateToNorth;
- (IBAction)zoomInAction:(id)sender;
- (IBAction)zoomOutAction:(id)sender;


@end

