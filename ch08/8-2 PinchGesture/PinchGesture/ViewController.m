//
//  ViewController.m
//  PinchGesture
//
//  Created by KoKang Chu on 12/6/30.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)handlePinch:(UIPinchGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateBegan) {
        // 開始縮放手勢
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        if (sender.scale >= 1) {
            // 放大
        } else if (sender.scale < 1) {
            // 縮小
        }
        NSLog(@"%f", sender.scale);
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        // 結束縮放手勢
    }
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
