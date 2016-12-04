//
//  CustomCell.h
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 7/13/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *wonderName;
@property (weak, nonatomic) IBOutlet UILabel *cityName;
@property (weak, nonatomic) IBOutlet UILabel *countryName;
@property (weak, nonatomic) IBOutlet UILabel *geoCoordinates;
@property (weak, nonatomic) IBOutlet UIImageView *wonderImageName;
//
//@property (weak, nonatomic) IBOutlet UIImageView *wonderImage;

@end
