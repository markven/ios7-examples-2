//
//  ViewController.m
//  AlertView
//
//  Created by KoKang Chu on 12/6/24.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"MyTitle" 
                              message:@"MyAlert"
                              delegate:nil 
                              cancelButtonTitle:@"確定" 
                              otherButtonTitles:nil, nil];
    [alertView show];
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
