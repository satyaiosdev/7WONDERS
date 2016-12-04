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

-(instancetype) init;

@end
