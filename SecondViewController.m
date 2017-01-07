//
//  SecondViewController.m
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 7/14/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

#import "SecondViewController.h"



@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    {
    _animationButtonON.hidden = NO;
    _imageOfTheWonder.hidden=YES;
    _animationButtonOFF.hidden = YES;

    
    NSLog(@"it is wonder Name inside sv%ld",(long)_cellRowNr);
    _nameOfTheWonder.text = @"Taj Mahal";
    _imageOfTheWonder.image = [UIImage imageNamed:@"Image1.png"];
    _descriptionOfTheWonder.text = @"It is taj mahal and located in agra, nearby delhi";;
    }
    
}
-(IBAction)showAnimation:(id)sender{
    _animationButtonON.hidden=YES;
    _animationButtonOFF.hidden=NO;
    _imageOfTheWonder.hidden=NO;
    
    _imageOfTheWonder.animationImages = [NSArray arrayWithObjects:
                                         [UIImage imageNamed:@"Image1.png"],
                                         [UIImage imageNamed:@"Image2.png"],
                                         [UIImage imageNamed:@"Image1.png"],
                                         [UIImage imageNamed:@"Image2.png"],
                                         [UIImage imageNamed:@"Image1.png"],
                                         [UIImage imageNamed:@"Image2.png"],
                                         [UIImage imageNamed:@"Image1.png"],
                                         
                                         
                                         nil];
    [_imageOfTheWonder setAnimationRepeatCount:0];
    _imageOfTheWonder.animationDuration =1;
    [_imageOfTheWonder startAnimating];

    
}
-(IBAction)hideAnimation:(id)sender{
    _imageOfTheWonder.hidden = YES;
    _animationButtonOFF.hidden =YES;
    _animationButtonON.hidden = NO;
    
    
}

@end
