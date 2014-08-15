//
//  ViewController.m
//  RotationGesture
//
//  Created by KoKang Chu on 12/7/1.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)handleRotation:(UIRotationGestureRecognizer *)sender
{
    float rad = sender.rotation;
    float deg = sender.rotation * 180 / M_PI;
 
    if (rad > 0) {
        // 順時針旋轉
    } else {
        // 逆時針旋轉
    }
    
    NSLog(@"弧度:%f, 角度:%f", rad, deg);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
