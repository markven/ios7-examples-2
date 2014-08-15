//
//  ViewController.m
//  TapGesture
//
//  Created by KoKang Chu on 12/6/30.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)handleTap:(UITapGestureRecognizer *)sender
{    
    for (int i = 0; i < sender.numberOfTouches; i++) {
        CGPoint touchPoint = [sender locationOfTouch:i inView:sender.view];
        NSLog(@"第%d根手指的位置為%@", (i + 1), NSStringFromCGPoint(touchPoint));
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
