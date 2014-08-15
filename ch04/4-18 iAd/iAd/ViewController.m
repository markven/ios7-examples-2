//
//  ViewController.m
//  iAd
//
//  Created by KoKang Chu on 12/8/24.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    // banner廣告載入
}

-(BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    // 使用者點了banner廣告後開啓廣告內容畫面
    return YES;
}

-(void)bannerViewActionDidFinish:(ADBannerView *)banner
{
    // 使用者關掉廣告內容畫面
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    // 廣告載入錯誤時會呼叫此方法
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
