//
//  ViewController.m
//  Direction
//
//  Created by KoKang Chu on 12/8/2.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 取得現在所在位置
    MKMapItem *currentLocation = [MKMapItem mapItemForCurrentLocation];
    
    // 取得台北101所在位置
    // 根據台北101座標設定一個大頭針標示
    MKPlacemark *markTaipei101 = [[MKPlacemark alloc] initWithCoordinate:CLLocationCoordinate2DMake(25.0335, 121.5651) addressDictionary:nil];
    MKMapItem *taipei101 = [[MKMapItem alloc] initWithPlacemark:markTaipei101];
    // 設定大頭針上的標籤資訊
    taipei101.name = @"台北101";
    taipei101.phoneNumber = @"11111111";
    
    // 決定現在所在位置是起點還是終點
    // 這樣的設定是：現在位置為起點，台北101為終點
    NSArray *array = [[NSArray alloc] initWithObjects:currentLocation, taipei101, nil];
    
    // 設定導航模式是行車還是走路
    NSDictionary *param = [NSDictionary dictionaryWithObject:MKLaunchOptionsDirectionsModeDriving forKey:MKLaunchOptionsDirectionsModeKey];
    
    // 開啓內建的地圖
    [MKMapItem openMapsWithItems:array launchOptions:param];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
