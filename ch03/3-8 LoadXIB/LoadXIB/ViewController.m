//
//  ViewController.m
//  LoadXIB
//
//  Created by KoKang Chu on 12/6/23.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"
#import "XIBViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)loadxibButtonPress:(id)sender
{
    XIBViewController *view = [[XIBViewController alloc] initWithNibName:@"XIBViewController" bundle:nil];
    [self presentViewController:view animated:YES completion:nil];
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
