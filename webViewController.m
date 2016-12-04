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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
