//
//  ViewController.m
//  RandomNumber
//
//  Created by KoKang Chu on 12/9/2.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 利用餘數來限定範圍, %100後的範圍為0~99, +1後則為1~100
    u_int32_t n = arc4random() % 100 + 1;
    NSLog(@"%u", n);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
