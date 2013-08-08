//
//  ViewController.h
//  MapView
//
//  Created by 鈴木 宏昌 on 2013/08/08.
//  Copyright (c) 2013年 鈴木 宏昌. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController{
    MKMapView *mapview;
    
}
@property (nonatomic,retain) IBOutlet MKMapView *mapview;
-(IBAction)setMap:(id)sender;
-(IBAction)getlocation;
@end
