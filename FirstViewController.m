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
<<<<<<< HEAD
//#import "SecondTabFirstViewController.swift"
#import "Wonders-Swift.h"



=======
//#import "7Wonders-Swift.h"
<<<<<<< HEAD
=======
<<<<<<< Updated upstream


//#import "SecondTabCollectionView.swift"
=======
>>>>>>> Stashed changes
>>>>>>> origin/master
>>>>>>> origin/master

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
<<<<<<< HEAD
=======
    
        self.title = @"7Wonders";
>>>>>>> origin/master
    
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
<<<<<<< HEAD
=======
<<<<<<< Updated upstream
    
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
        
=======
>>>>>>> origin/master
    {
        cell.wonderName.text = obj1.wonderName[indexPath.row];
        cell.cityName.text = obj1.cityName[indexPath.row];
        cell.countryName.text = obj1.countryName[indexPath.row];
        cell.geoCoordinates.text = obj1.geoCordinates[indexPath.row];
        cell.wonderImageName.image = [UIImage imageNamed:obj1.imageName[indexPath.row]];
<<<<<<< HEAD
=======
>>>>>>> Stashed changes
>>>>>>> origin/master
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


