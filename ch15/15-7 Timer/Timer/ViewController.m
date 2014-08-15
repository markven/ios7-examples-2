//
//  ViewController.m
//  Timer
//
//  Created by KoKang Chu on 12/7/1.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)ticker:(NSTimer *)theTimer
{
    NSDate *today = [NSDate date];
    NSLog(@"%@", [format stringFromDate:today]);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 設定時間顯示格式為「時:分:秒」
    format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"H:m:s"];
    
    // 設定timer每5秒呼叫ticker:方法一次
    timer = [NSTimer scheduledTimerWithTimeInterval:5.0
                                             target:self
                                           selector:@selector(ticker:)
                                           userInfo:nil
                                            repeats:YES];
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
