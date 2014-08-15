//
//  ViewController.m
//  ScrollView
//
//  Created by KoKang Chu on 12/6/26.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    // 也可寫成 return myImg;
    return [scrollView.subviews objectAtIndex:0];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	self.myScroll.delegate = self;
    // 載入圖片
    self.myImg.contentMode = UIViewContentModeScaleAspectFit;
    self.myImg.image = [UIImage imageNamed:@"Sample.JPG"];
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
