//
//  ViewController.m
//  DeviceMotion
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
    
    [mm startDeviceMotionUpdatesToQueue:q
                            withHandler:^(CMDeviceMotion *motion, NSError *error) {
                                dispatch_async(dispatch_get_main_queue(),  ^{
                                    float pitch = motion.attitude.pitch;
                                    float roll = motion.attitude.roll;
                                    float yaw = motion.attitude.yaw;
            
                                    self.pitchLabel.text = [[NSString alloc] initWithFormat:@"%2.0f", pitch * 180 / M_PI];
                                    self.rollLabel.text  = [[NSString alloc] initWithFormat:@"%2.0f", roll * 180 / M_PI];
                                    self.yawLabel.text   = [[NSString alloc] initWithFormat:@"%2.0f", yaw * 180 / M_PI];
                                }); // for dispatch_async
                            }]; // for startDeviceMotionUpdatesToQueue
}

-(void)viewDidDisappear:(BOOL)animated
{
    // 不用時關閉更新
    [mm stopDeviceMotionUpdates];
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
