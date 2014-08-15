//
//  ViewController.m
//  CountDown
//
//  Created by KoKang Chu on 12/6/25.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)valueChanged:(UIDatePicker *)sender
{
    // NStimeInterval形態的定義放在NSDate.h中
    // typedef double NSTimeInterval;
    NSTimeInterval n = sender.countDownDuration;
    NSLog(@"倒數計時秒數為: %.0f", n);
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
