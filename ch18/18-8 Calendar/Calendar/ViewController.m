//
//  ViewController.m
//  Calendar
//
//  Created by KoKang Chu on 12/6/30.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 取得現在的時間
    NSDate *today = [NSDate date];
    // 取得在系統的「日期與時間」中的相關設定，例如時區
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    // 哪些訊息要被封裝
    NSInteger flag = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
    NSDateComponents *c = [calendar components:flag  fromDate:today];
    
    // 輸出結果
    NSLog(@"%d/%d/%d", [c year], [c month], [c day]);
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
