//
//  ViewController.m
//  ImageAnimation
//
//  Created by KoKang Chu on 12/6/26.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [array addObject:[UIImage imageNamed:@"01.jpg"]];
    [array addObject:[UIImage imageNamed:@"02.jpg"]];
    [array addObject:[UIImage imageNamed:@"03.jpg"]];
    [array addObject:[UIImage imageNamed:@"04.jpg"]];
    [array addObject:[UIImage imageNamed:@"05.jpg"]];
    [array addObject:[UIImage imageNamed:@"06.jpg"]];
    [array addObject:[UIImage imageNamed:@"07.jpg"]];
    [array addObject:[UIImage imageNamed:@"08.jpg"]];
    [array addObject:[UIImage imageNamed:@"09.jpg"]];
    [array addObject:[UIImage imageNamed:@"10.jpg"]];
    self.myImg.contentMode = UIViewContentModeScaleAspectFill;
    // 載入圖片陣列
    self.myImg.animationImages = array;
    
    // 10代表所有圖片要在10秒鐘內播完
    self.myImg.animationDuration = 10;
    // 2代表播放次數為兩次，預設值為不斷循環
    self.myImg.animationRepeatCount = 2;
    // 開始播放
    [self.myImg startAnimating];
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
