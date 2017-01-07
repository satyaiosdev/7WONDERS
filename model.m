//
//  model.m
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 7/25/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

#import "model.h"
#import "FirstViewController.h"
#import "FirstViewController.m"

@interface model ()

@end

@implementation model

-(instancetype)init{
    self = [super init];
    if(!self){
        return nil;
    }
//    FirstViewController *obj2 = [[FirstViewController alloc] init];
    _wonderName = @[@"Taj Mahal",@"China Wall",@"Christ Redeemer",@"Egypt Pyramid",@"Machu Picchu",@"Roman Collosseum",@"Petra Jordan"];
    _imageName = @[[UIImage imageNamed:@"Image1.png"],[UIImage imageNamed:@"GreatWallOfChina.png"],[UIImage imageNamed:@"ChristRedeemer.png"],[UIImage imageNamed:@"Pyramid.png"],[UIImage imageNamed:@"MachuPicchu.png"],[UIImage imageNamed:@"RomanColosseum.png"],[UIImage imageNamed:@"PetraJordan.png"]];
    _cityName =@[@"Agra",@"Some Where",@"Rio de Janeiro",@"Giza Governorate",@"SomeWhere",@"Rome",@"Petra"];
    _countryName = @[@"India",@"China",@"Brazil",@"Egipt",@"Peru",@"Italy",@"Jordan"];
    _geoCoordinates = @[@"27.1750° N, 78.0422° E",@"40.4319° N, 116.5704° E",@"22.9519° S, 43.2105° W",@"29.9792° N, 31.1342° E",@"13.1631° S, 72.5450° W",@"41.8902° N, 12.4922° E",@"30.3285° N, 35.4444° E"];
    NSLog(@"%@", _wonderName[1]);
//    _sevenWonders = [];
//    _sevenWonders = [NSDictionary dictionaryWithObjectsAndKeys:
//                          @"value1", @"key1", @"value2", @"key2", nil];
//    _wonderArray = @[_wonderName[0]];
//    obj2.wonderArray = @[_imageName[0]];
    
    return self;
}

@end
