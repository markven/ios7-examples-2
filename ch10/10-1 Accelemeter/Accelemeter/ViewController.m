//
//  ViewController.m
//  Accelemeter
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
    
    [mm startAccelerometerUpdatesToQueue:q
                             withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
                                 NSLog(@"x = %f", accelerometerData.acceleration.x);
                                 NSLog(@"y = %f", accelerometerData.acceleration.y);
                                 NSLog(@"z = %f", accelerometerData.acceleration.z);
                             }];
}

-(void)viewDidDisappear:(BOOL)animated
{
    // 不用時要關掉加速儀
    [mm stopAccelerometerUpdates];
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
