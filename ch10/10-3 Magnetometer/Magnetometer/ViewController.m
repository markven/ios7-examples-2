//
//  ViewController.m
//  Magnetometer
//
//  Created by KoKang Chu on 12/7/2.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    mm = [[CMMotionManager alloc] init];
    NSOperationQueue *q = [[NSOperationQueue alloc] init];
    
    [mm startMagnetometerUpdatesToQueue:q
                            withHandler:^(CMMagnetometerData *magnetometerData, NSError *error) {
                                NSLog(@"x = %f", magnetometerData.magneticField.x);
                                NSLog(@"y = %f", magnetometerData.magneticField.y);
                                NSLog(@"z = %f", magnetometerData.magneticField.z);
                            }];
}

-(void)viewDidDisappear:(BOOL)animated
{
    // 不用時關閉更新
    [mm stopMagnetometerUpdates];
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
