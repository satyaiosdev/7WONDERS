//
//  FirstViewController.m
//  7WONDERS
//
//  Created by Satya Venkata Krishna Achanta on 7/13/16.
//  Copyright © 2016 Satya Venkata Krishna Achanta. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "CustomCell.h"
#import "model.h"
#import "7WONDERS-Bridging-Header.h"
//#import "SecondTabFirstViewController.swift"
#import "Wonders-Swift.h"




@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        self.title = @"7Wonders";
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 7;
    
    
}
NSString *cellName;
//int testInteger = 2;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *cell =(CustomCell *)[tableView dequeueReusableCellWithIdentifier:@"CustomCell"];
    model *obj1 = [[model alloc] init];
    {
        cell.wonderName.text = obj1.wonderName[indexPath.row];
        cell.cityName.text = obj1.cityName[indexPath.row];
        cell.countryName.text = obj1.countryName[indexPath.row];
        cell.geoCoordinates.text = obj1.geoCordinates[indexPath.row];
        cell.wonderImageName.image = [UIImage imageNamed:obj1.imageName[indexPath.row]];
    }
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    [self performSegueWithIdentifier:@"ToThirdScreen" sender:indexPath];

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = (NSIndexPath*)sender;
    
    SecondViewController *secondVC = (SecondViewController *)segue.destinationViewController;

    secondVC.cellRowNr = indexPath.row;
}

@end


