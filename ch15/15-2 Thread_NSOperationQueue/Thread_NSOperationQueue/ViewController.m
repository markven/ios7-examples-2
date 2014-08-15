//
//  ViewController.m
//  Thread_NSOperationQueue
//
//  Created by KoKang Chu on 12/8/25.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSOperationQueue *q = [[NSOperationQueue alloc] init];
    // 執行續1
    [q addOperationWithBlock:^{
        for (int i = 0; i < 10; i += 2) {
            NSLog(@"%d", i);
        }
    }];
    
    // 執行續2
    [q addOperationWithBlock:^{
        for (int i = 1; i < 10; i += 2) {
            NSLog(@"%d", i);
        }
    }];
    
    NSLog(@"主行程結束");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
