//
//  ViewController.m
//  BorrowTime
//
//  Created by Ckk on 13/7/7.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
{
    AppDelegate *app;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        int i = 0;
        while (true) {
            NSLog(@"[%d], %.0f", ++i, [UIApplication sharedApplication].backgroundTimeRemaining);
            [NSThread sleepForTimeInterval:1.0];
            if (i == 10) {
                [app endBackgroundTask];
            }
        }
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
