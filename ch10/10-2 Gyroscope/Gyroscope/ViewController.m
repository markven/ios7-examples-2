//
//  ViewController.m
//  Gyroscope
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
    
    [mm startGyroUpdatesToQueue:q
                    withHandler:^(CMGyroData *gyroData, NSError *error) {
                        NSLog(@"x = %f", gyroData.rotationRate.x);
                        NSLog(@"y = %f", gyroData.rotationRate.y);
                        NSLog(@"z = %f", gyroData.rotationRate.z);
                    }];
}

-(void)viewDidDisappear:(BOOL)animated
{
    // 不使用時停止接收資料
    [mm stopGyroUpdates];
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
