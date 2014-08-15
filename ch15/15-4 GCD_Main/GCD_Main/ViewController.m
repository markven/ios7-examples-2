//
//  ViewController.m
//  GCD_Main
//
//  Created by KoKang Chu on 12/7/1.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    dispatch_queue_t queue = dispatch_get_main_queue();
    
    // 程序1: 印出0~4
    dispatch_async(queue, ^{
        for (int i = 0; i < 5; i++)
            NSLog(@"%d", i);
    });
    
    // 程序2: 印出5~9
    dispatch_async(queue, ^{
        for (int i = 5; i < 10; i++)
            NSLog(@"%d", i);
    });
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
