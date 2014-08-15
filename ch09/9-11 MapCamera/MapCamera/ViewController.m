//
//  ViewController.m
//  MapCamera
//
//  Created by Ckk on 13/7/13.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // ground 為自由女神像的座標
    CLLocationCoordinate2D ground = CLLocationCoordinate2DMake(40.689213, -74.044566);
    // eyeFrom 為攝影機的座標
    CLLocationCoordinate2D eyeFrom = CLLocationCoordinate2DMake(40.684, -74.042);
    // 設定攝影機位置與高度
    MKMapCamera *camera = [MKMapCamera cameraLookingAtCenterCoordinate:ground
                                                     fromEyeCoordinate:eyeFrom
                                                           eyeAltitude:50
                           ];
    // 允許可以從斜的方向觀看地圖，否則都是從正上方
    self.myMap.pitchEnabled = YES;
    // 在地圖上加上攝影機
    self.myMap.camera = camera;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
