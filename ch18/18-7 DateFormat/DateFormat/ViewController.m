//
//  ViewController.m
//  DateFormat
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
	
    // 準備好顯示格式
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"西元yyyy年M月d日 H時m分s秒"];
     
    // 取得現在時間
    NSDate *today = [NSDate date];
    // 格式化輸出
    NSLog(@"%@", [format stringFromDate:today]);
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
