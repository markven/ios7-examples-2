//
//  ViewController.m
//  Scrolling_Paging
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
	
    // 動態產生三個 UIImageView 元件並且載入三張圖片
    UIImageView *img1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image01.jpg"]];
    UIImageView *img2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image02.jpg"]];
    UIImageView *img3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image03.jpg"]];
    
    // 設定這三個UIImageView的圖片顯示模式
    img1.contentMode = UIViewContentModeScaleAspectFit;
    img2.contentMode = UIViewContentModeScaleAspectFit;
    img3.contentMode = UIViewContentModeScaleAspectFit;
    
    // 設定這三個UIImageView的座標
    CGRect rect = self.myScroll.frame;
    img1.frame = rect;
    img2.frame = CGRectOffset(img1.frame, img1.frame.size.width, 0);
    img3.frame = CGRectOffset(img2.frame, img2.frame.size.width, 0);

    // 設定 scroll bar的內容大小
    CGSize size = CGSizeMake(img1.frame.size.width + img1.frame.size.width + img1.frame.size.width, rect.origin.y);
    self.myScroll.contentSize = size;
    
    // 把圖片加到scrol bar 上
    [self.myScroll addSubview:img1];
    [self.myScroll addSubview:img2];
    [self.myScroll addSubview:img3];
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
