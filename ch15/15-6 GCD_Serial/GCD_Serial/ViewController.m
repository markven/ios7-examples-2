//
//  ViewController.m
//  GCD_Serial
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
	
    // first_queue與second_queue為佇列識別名稱
    dispatch_queue_t queue1 = dispatch_queue_create("first_queue", NULL);
    dispatch_queue_t queue2 = dispatch_queue_create("second_queue", NULL);
    
    // 程序1: 印出0~4
    dispatch_async(queue1, ^{
        for (int i = 0; i < 5; i++)
            NSLog(@"%d", i);
    });
    
    // 程序2: 印出5~9
    dispatch_async(queue2, ^{
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
