//
//  ViewController.m
//  SocialNetwork
//
//  Created by Ckk on 13/7/14.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 先測試行動裝置內的Facebook設定是否完成
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        // 輸入資料的畫面使用系統內建的
        SLComposeViewController *social = [SLComposeViewController new];
        social = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        // 要上傳的文字
        [social setInitialText:@"App PO文測試\n"];
        
        // 要上傳的網址
        NSURL *url = [[NSURL alloc] initWithString:@"http://www.google.com.tw"];
        [social addURL:url];
        
        // 要上傳的圖片
        UIImage *img = [UIImage imageNamed:@"sample.jpg"];
        [social addImage:img];
        
        // 開啓輸入資料畫面
        [self presentViewController:social animated:YES completion:^{
            NSLog(@"資料送到 facebook 成功");
        }];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
