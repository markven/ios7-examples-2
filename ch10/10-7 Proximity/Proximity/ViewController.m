//
//  ViewController.m
//  Proximity
//
//  Created by KoKang Chu on 12/8/15.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)switchChanged:(UISwitch *)sender
{
    if (sender.isOn)
        [self proximateSensorOn];
    else
        [self proximateSensorOff];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
     
-(void)proximateSensorOn
{
    // 啓動距離感應器
    [[UIDevice currentDevice] setProximityMonitoringEnabled:YES];
    
    if ([UIDevice currentDevice].proximityMonitoringEnabled == YES) {
        NSNotificationCenter *notice = [NSNotificationCenter defaultCenter];
        [notice addObserver:self
                   selector:@selector(proximitySensorChange:)
                       name:UIDeviceProximityStateDidChangeNotification
                     object:nil
         ];
    }
}

-(void)proximateSensorOff
{
    // 關閉距離感應器
    if ([UIDevice currentDevice].proximityMonitoringEnabled == YES) {
        NSNotificationCenter *notice = [NSNotificationCenter defaultCenter];
        [notice removeObserver:self
                          name:UIDeviceProximityStateDidChangeNotification
                        object:nil
        ];
        
    }    
    [[UIDevice currentDevice] setProximityMonitoringEnabled:NO];
}

-(void)proximitySensorChange:(id)notification
{
    static BOOL flag;
    
    flag = !flag;
    if (flag) {
        // 當物體接近感應器要做的事情寫在這裡
        NSLog(@"接近");
    } else {
        // 當物體離開感應器要做的事情寫在這裡
        NSLog(@"離開");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
