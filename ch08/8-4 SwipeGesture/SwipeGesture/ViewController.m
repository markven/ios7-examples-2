//
//  ViewController.m
//  SwipeGesture
//
//  Created by KoKang Chu on 12/7/1.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender
{
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionRight:
            NSLog(@"right");
            break;
            
        case UISwipeGestureRecognizerDirectionDown:
            NSLog(@"down");
            break;
            
        case UISwipeGestureRecognizerDirectionLeft:
            NSLog(@"left");
            break;
            
        case UISwipeGestureRecognizerDirectionUp:
            NSLog(@"up");
            break;
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
