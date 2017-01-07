//
//  model.h
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 7/25/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface model : NSObject

//NSMutableDictionary *sevenWonders = [NSMutableDictionary dictionary];
@property (strong, nonatomic) NSDictionary * sevenWonders;

@property (strong, nonatomic) NSArray * wonderName;
@property (strong, nonatomic) NSArray * imageName;
@property (strong, nonatomic) NSArray * cityName;
@property (strong, nonatomic) NSArray * countryName;
@property (strong, nonatomic) NSArray * geoCoordinates;


-(instancetype) init;

@end
