//
//  model.m
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 7/25/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

#import "model.h"
#import "FirstViewController.h"

@implementation model

-(instancetype)init{
    self = [super init];
    if(!self){
        return nil;
    }
//    _sevenWonders = [];
    _sevenWonders = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"value1", @"key1", @"value2", @"key2", nil];
    return self;
}

@end
