//
//  ViewController.m
//  MapView
//
//  Created by 鈴木 宏昌 on 2013/08/08.
//  Copyright (c) 2013年 鈴木 宏昌. All rights reserved.
//

#import "ViewController.h"
#import "NewClass.h"

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
    
    [mapview setMapType:MKMapTypeStandard];
    
    //mapのズーム許可
    [mapview setZoomEnabled:YES];
    
    //mapのスクロール許可
    [mapview setScrollEnabled:YES];
    
    
    MKCoordinateRegion region = {{0.0,0.0},{0.0,0.0}};
    
    //マップで表示する緯度の設定
    region.center.latitude = 52.509078;
    
    //マップで表示する経度の設定
    region.center.longitude = -1.884799;
    
    region.span.longitudeDelta = 0.01f;
    region.span.latitudeDelta = 0.01f;
    
    [mapview setRegion:region animated:YES];
    
    
    //NewClassのインスタンス
    NewClass *ann=[[NewClass alloc] init];
    
    //アノテーションのタイトル指定
    ann.title = @"AVFC";
    
    //アノテーションのサブタイトル指定
    ann.subtitle = @"Aston Villa Football Club";
    ann.coordinate = region.center;
    [mapview addAnnotation:ann];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
