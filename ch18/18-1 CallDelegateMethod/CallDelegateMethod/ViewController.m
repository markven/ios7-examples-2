//
//  ViewController.m
//  CallDelegateMethod
//
//  Created by KoKang Chu on 12/6/28.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSLog(@"%d", [app add:5 value:3]);
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
