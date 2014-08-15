//
//  ViewController.m
//  GetImageFromURL
//
//  Created by Ckk on 13/6/27.
//  Copyright (c) 2013年 com.ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 設定圖片的網址
    NSURL *url = [NSURL URLWithString:@"http://images.apple.com/home/images/promo_macbookair.jpg"];
    // 將網址轉換成http request，這樣才能跟web server要資料
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    NSURLResponse *response = nil;
    NSError *error = nil;
    
    // 用同步方式跟web server要資料
    NSData *data = [NSURLConnection sendSynchronousRequest:urlRequest
                                         returningResponse:&response
                                                     error:&error
                    ];
    
    if ([data length] > 0 && error == nil) {
        UIImage *img = [UIImage imageWithData:data];
        // 圖片已經放在img變數中，接下來顯示在螢幕上或是存檔都可以
        NSLog(@"圖片下載完畢，大小為%.0f x %.0f", img.size.width, img.size.height);
    } else {
        NSLog(@"error: %@", error);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
