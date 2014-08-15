//
//  ViewController.m
//  PanGesture
//
//  Created by KoKang Chu on 12/7/1.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)handlePan:(UIPanGestureRecognizer *)sender
{
    for (int i = 0; i < sender.numberOfTouches; i++) {
        CGPoint point = [sender locationOfTouch:i inView:sender.view];
        NSLog(@"第%d手指的位置在%@", (i + 1), NSStringFromCGPoint(point));
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
