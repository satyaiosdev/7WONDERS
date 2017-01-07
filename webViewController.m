//
//  WebViewController.m
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 12/3/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()


@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    
    NSURL *myURL = [NSURL URLWithString:@"http://www.google.com"];
    
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    
    [_myWebView loadRequest:myRequest];
    NSLog(@"it is inside webView");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
