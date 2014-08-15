//
//  ViewController.m
//  DynamicObject
//
//  Created by KoKang Chu on 12/6/24.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)buttonPress:(id)sender
{
    NSLog(@"button press");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 宣告一個按鈕並初始化
    UIButton *button = [[UIButton alloc] init];
    
    // 設定按鈕的類型
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    // 設定按鈕的位置與大小
    button.frame = CGRectMake(20.0, 20.0, 100.0, 40.0);
    
    // 設定按鈕上的文字
    [button setTitle:@"Push Me" forState:UIControlStateNormal];
    // 攔截按鈕按下去的訊息，並觸發onButtonClick:函數
    [button addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
    // 將按鈕加進目前的畫面上
    [self.view addSubview:button];
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
