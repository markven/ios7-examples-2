//
//  ViewController.m
//  BatteryInfo
//
//  Created by KoKang Chu on 12/6/28.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 開啓電池狀態監視開關
    [UIDevice currentDevice].batteryMonitoringEnabled = YES;
    // 取得目前電力, 如果得到-1，代表未開啓電池狀態監視
    NSLog(@"Battery Level: %3.0f%%", [UIDevice currentDevice].batteryLevel * 100.0);
    
    // 取得目前電池狀態
    switch ([UIDevice currentDevice].batteryState) {
        case UIDeviceBatteryStateUnknown:
            NSLog(@"無法讀取電池狀態");
            break;
            
        case UIDeviceBatteryStateUnplugged:
            NSLog(@"未充電");
            break;
            
        case UIDeviceBatteryStateCharging:
            NSLog(@"充電中");
            break;
            
        case UIDeviceBatteryStateFull:
            NSLog(@"電力已滿");
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
