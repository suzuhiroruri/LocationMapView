//
//  ViewController.m
//  MapView
//
//  Created by 鈴木 宏昌 on 2013/08/08.
//  Copyright (c) 2013年 鈴木 宏昌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mapview;
-(IBAction)getlocation{
    mapview.showsUserLocation = YES;
}
-(IBAction)setMap:(id)sender{
    switch(((UISegmentedControl *)sender).selectedSegmentIndex){
        case 0:
            mapview.mapType = MKMapTypeStandard;
            break;
        case 1:
            mapview.mapType = MKMapTypeSatellite;
            break;
        case 2:
            mapview.mapType = MKMapTypeHybrid;
            break;
            
        default:
            break;
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
