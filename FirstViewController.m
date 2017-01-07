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
//#import "7Wonders-Swift.h"


//#import "SecondTabCollectionView.swift"

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

        self.title = @"Home";
    
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 7;
    
    
}
NSString *cellName;
int testInteger = 2;



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *cell =(CustomCell *)[tableView dequeueReusableCellWithIdentifier:@"CustomCell"];
    model *obj1 = [[model alloc] init];
    
    if (indexPath.row == 0){

        NSLog(@"inside first View Controller:%@", [obj1.sevenWonders objectForKey:@"key1"]);
        cell.wonderName.text = @"Taj Mahal";
        cell.cityName.text = @"Agra";
        cell.countryName.text = @"India";
        cell.geoCoordinates.text = @"27.1750° N, 78.0422° E";
        cell.wonderImageName.image = [UIImage imageNamed:@"Image1.png"];
        
//
        
        
    }
    if (indexPath.row == 1){
        cell.wonderName.text = @"China Wall";
        cell.cityName.text = @"Some Where";
        cell.countryName.text = @"China";
        cell.geoCoordinates.text = @"40.4319° N, 116.5704° E";
        cell.wonderImageName.image = [UIImage imageNamed:@"GreatWallOfChina.png"];
        
    }
    if (indexPath.row == 2){
        cell.wonderName.text = @"Christ Redeemer";
        cell.cityName.text = @"Rio de Janeiro";
        cell.countryName.text = @"Brazil";
        cell.geoCoordinates.text = @"22.9519° S, 43.2105° W";
        cell.wonderImageName.image = [UIImage imageNamed:@"ChristRedeemer.png"];
        
    }
    
    if (indexPath.row == 3){
        cell.wonderName.text = @"Egypt Pyramid";
        cell.cityName.text = @"Giza Governorate";
        cell.countryName.text = @"Egipt";
        cell.geoCoordinates.text = @"29.9792° N, 31.1342° E";
        cell.wonderImageName.image = [UIImage imageNamed:@"Pyramid.png"];
        
    }
    if (indexPath.row == 4){
        cell.wonderName.text = @"Machu Picchu";
        cell.cityName.text = @"SomeWhere";
        cell.countryName.text = @"Peru";
        cell.geoCoordinates.text = @"13.1631° S, 72.5450° W";
        cell.wonderImageName.image = [UIImage imageNamed:@"MachuPicchu.png"];
        
    }
    
    if (indexPath.row == 5){
        cell.wonderName.text = @"Roman Collosseum";
        cell.cityName.text = @"Rome";
        cell.countryName.text = @"Italy";
        cell.geoCoordinates.text = @"41.8902° N, 12.4922° E";
        cell.wonderImageName.image = [UIImage imageNamed:@"RomanColosseum.png"];
        
    }
    if (indexPath.row == 6){
        cell.wonderName.text = @"Petra Jordan";
        cell.cityName.text = @"Petra";
        cell.countryName.text = @"Jordan";
        cell.geoCoordinates.text = @"30.3285° N, 35.4444° E";
        cell.wonderImageName.image = [UIImage imageNamed:@"PetraJordan.png"];
        
    }
    

    return cell;
    
}
//
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    [self performSegueWithIdentifier:@"ToThirdScreen" sender:indexPath];
//    SecondViewController *secondVC = (SecondViewController *)segue.destinationViewController;
//    secondVC.cellRowNr = cellName;
//    SecondViewController *secondvc = [[SecondViewController alloc] init];

//    [self performSegueWithIdentifier:@"ToThirdScreen" sender:indexPath];
//    SecondViewController *secondvc = (SecondViewController *)segue.destinationViewController;
//    secondvc.cellNr = cellName;

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = (NSIndexPath*)sender;
    
    SecondViewController *secondVC = (SecondViewController *)segue.destinationViewController;

    secondVC.cellRowNr = indexPath.row;
}

@end


