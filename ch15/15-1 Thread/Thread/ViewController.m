//
//  ViewController.m
//  Thread
//
//  Created by KoKang Chu on 12/7/1.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)thread1
{
    // 先休息1秒鐘
    [NSThread sleepForTimeInterval:1.0];
    // 印出偶數
    for (int i = 0; i < 10; i += 2)
        NSLog(@"%d", i);
}

-(void)thread2
{
    // 先休息1秒鐘
    [NSThread sleepForTimeInterval:1.0];
    // 印出奇數
    for (int i = 1; i < 10; i += 2)
        NSLog(@"%d", i);
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 開啟第一個thread
    [NSThread detachNewThreadSelector:@selector(thread1) toTarget:self withObject:nil];
    // 開啓第二個thread
    [NSThread detachNewThreadSelector:@selector(thread2) toTarget:self withObject:nil];
    // 主執行續結束
    NSLog(@"主行程結束");
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
