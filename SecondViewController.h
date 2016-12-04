//
//  SecondViewController.h
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 7/14/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *nameOfTheWonder;
@property (weak, nonatomic) IBOutlet UIImageView *imageOfTheWonder;
@property (weak, nonatomic) IBOutlet UITextView *descriptionOfTheWonder;
@property (weak, nonatomic) IBOutlet UIButton *websiteButtonOfTheWonder;
@property (weak, nonatomic) IBOutlet UIButton *mapButtonOfTheWonder;
@property  NSInteger cellRowNr;
@property (nonatomic, strong) NSString* cellNr;
@property (weak, nonatomic) IBOutlet UIButton *animationButtonON;
@property (weak, nonatomic) IBOutlet UIButton *animationButtonOFF;

-(IBAction)showAnimation:(id)sender;
-(IBAction)hideAnimation:(id)sender;

@end
