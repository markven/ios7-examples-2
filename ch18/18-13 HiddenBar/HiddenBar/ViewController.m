//
//  ViewController.m
//  HiddenBar
//
//  Created by KoKang Chu on 12/8/21.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 將最上方的狀態列隱藏，設定 YES 為顯示
    // iOS6寫法
    [UIApplication sharedApplication].statusBarHidden = YES;
}

// 實作此method為iOS7寫法
-(BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
