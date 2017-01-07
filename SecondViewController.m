//
//  SecondViewController.m
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 7/14/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

#import "SecondViewController.h"
#import "model.h"


<<<<<<< HEAD
=======

>>>>>>> origin/master


@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    {
    _animationButtonON.hidden = NO;
    _imageOfTheWonder.hidden=NO;
    _animationButtonOFF.hidden = YES;
        self.title = @"7Wonders";

    model *obj2 = [[model alloc] init];
        
    _nameOfTheWonder.text = obj2.wonderName[(long)_cellRowNr];
//    _imageOfTheWonder.image = obj2.imageName[(long)_cellRowNr];
    _descriptionOfTheWonder.text = obj2.wonderDescription[(long)_cellRowNr];
        
      
        _animationButtonON.hidden=YES;
        _animationButtonOFF.hidden=NO;
        _imageOfTheWonder.hidden=NO;
        _imageOfTheWonder.animationImages = [NSArray arrayWithObjects:
                                         [UIImage imageNamed:obj2.imageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.animationImageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.imageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.animationImageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.imageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.animationImageName[(long)_cellRowNr]],
                                         
                                             
                                             
                                             nil];
        [_imageOfTheWonder setAnimationRepeatCount:0];
        _imageOfTheWonder.animationDuration =1;
        [_imageOfTheWonder startAnimating];
    }
}
-(IBAction)showAnimation:(id)sender{
    
    _animationButtonON.hidden=YES;
    _animationButtonOFF.hidden=NO;
    _imageOfTheWonder.hidden=NO;
    model *obj2 = [[model alloc] init];
    _imageOfTheWonder.animationImages = [NSArray arrayWithObjects:
                                         [UIImage imageNamed:obj2.imageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.animationImageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.imageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.animationImageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.imageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.animationImageName[(long)_cellRowNr]],
                                         
                                         
                                         
                                         nil];


    [_imageOfTheWonder setAnimationRepeatCount:0];
    _imageOfTheWonder.animationDuration =1;
    [_imageOfTheWonder startAnimating];

    
}
-(IBAction)hideAnimation:(id)sender{
    model *obj2 = [[model alloc] init];
    
    _animationButtonON.hidden=NO;
    _animationButtonOFF.hidden=YES;
    _imageOfTheWonder.hidden=NO;
    
    _imageOfTheWonder.animationImages = [NSArray arrayWithObjects:
                                         [UIImage imageNamed:obj2.imageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.imageName[(long)_cellRowNr]],
                                         [UIImage imageNamed:obj2.imageName[(long)_cellRowNr]],
                                         
                                         nil];
    [_imageOfTheWonder setAnimationRepeatCount:0];
    _imageOfTheWonder.animationDuration =1;
    [_imageOfTheWonder startAnimating];
    
   
    
    
}

@end
