//
//  NewClass.h
//  MapView
//
//  Created by 鈴木 宏昌 on 2013/08/08.
//  Copyright (c) 2013年 鈴木 宏昌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>

@interface NewClass : NSObject <MKAnnotation> {
    
    //アノテーションの座標指定
    CLLocationCoordinate2D coordinate;
    
    //アノテーションのタイトル
    NSString *title;
    
    //アノテーションのサブタイトル
    NSString *subtitle;
    
    
}


//アノテーションの座標を指定する
@property(nonatomic, assign) CLLocationCoordinate2D coordinate;

//アノテーションのタイトルを設定する
@property(nonatomic, copy) NSString *title;

//アノテーションのサブタイトルを設定する
@property(nonatomic, copy) NSString *subtitle;
@end
