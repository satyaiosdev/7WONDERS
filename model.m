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
<<<<<<< Updated upstream
//    _sevenWonders = [NSDictionary dictionaryWithObjectsAndKeys:
//                          @"value1", @"key1", @"value2", @"key2", nil];
//    _wonderArray = @[_wonderName[0]];
//    obj2.wonderArray = @[_imageName[0]];
    
=======
    // Saving all the vlues into Arrays, these can be used in other view controllers.
    _wonderName = @[@"Taj Mahal",@"China Wall",@"Christ Redeemer",@"Egypt Pyramid",@"Machu Picchu",@"Roman Collosseum",@"Petra Jordan"];
    _imageName = @[@"TajMahal1.png",@"ChinaWall1.png",@"ChristRedeemer1.png",@"Pyramid1.png",@"MachuPicchu1.png",@"RomanColosseum1.png",@"PetraJordan1.png"];
    _animationImageName = @[@"TajMahal2.png",@"ChinaWall2.png",@"ChristRedeemer2.png",@"Pyramid2.png",@"MachuPicchu2.png",@"RomanColosseum2.png",@"PetraJordan2.png"];
    _cityName =@[@"Agra",@"Some Where",@"Rio de Janeiro",@"Giza Governorate",@"SomeWhere",@"Rome",@"Petra"];
    _countryName = @[@"India",@"China",@"Brazil",@"Egipt",@"Peru",@"Italy",@"Jordan"];
    _geoCordinates = @[@"27.1750° N, 78.0422° E",@"40.4319° N, 116.5704° E",@"22.9519° S, 43.2105° W",@"29.9792° N, 31.1342° E",@"13.1631° S, 72.5450° W",@"41.8902° N, 12.4922° E",@"30.3285° N, 35.4444° E"];
    _sevenWonders = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"value1", @"key1", @"value2", @"key2", nil];
    _wonderDescription = @[@" Symbol of Love. The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan, to house the tomb of his favourite wife, Mumtaz Mahal",@"The Great Wall of China is a series of fortifications made of stone, brick, tamped earth, wood, and other materials, generally built along an east-to-west line across the historical northern borders of..",@"Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by the Brazilian engineer Heitor da Silva Costa, in collaboration with the French engineer Albert Caquot",@"The Egyptian pyramids are ancient pyramid-shaped masonry structures located in Egypt. As of November 2008, sources cite either 118 or 138 as the number of identified Egyptian pyramids.",@"Machu Picchu is an Incan citadel set high in the Andes Mountains in Peru, above the Urubamba River valley. Built in the 15th century and later abandoned, it’s renowned for its sophisticated dry-stone walls that fuse huge blocks without the use of mortar, intriguing buildings that play on astronomical alignments and panoramic views. Its exact former use remains a mystery.",@"The Colosseum or Coliseum, also known as the Flavian Amphitheatre, is an oval amphitheatre in the centre of the city of Rome, Italy. Built of concrete and sand, it is the largest amphitheatre ever built.",@"Petra is a famous archaeological site in Jordan's southwestern desert. Dating to around 300 B.C., it was the capital of the Nabatean Kingdom. Accessed via a narrow canyon called Al Siq, it contains tombs and temples carved into pink sandstone cliffs, earning its nickname, the Rose City. Perhaps its most famous structure is Al Khazneh, a temple with an ornate, Greek-style facade."];
>>>>>>> Stashed changes
    return self;
}

@end
