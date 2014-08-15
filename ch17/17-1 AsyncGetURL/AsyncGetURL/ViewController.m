//
//  ViewController.m
//  AsyncGetURL
//
//  Created by Ckk on 13/6/28.
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
    
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSOperationQueue *queue = [NSOperationQueue new];
    
    // 非同步模式讀取網頁
    [NSURLConnection
     sendAsynchronousRequest:request queue:queue
           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
               // web server回應後的程式碼寫在此
               if ([data length] > 0 && error == nil) {
                   NSString *html = [[NSString alloc]
                                     initWithData:data
                                         encoding:NSUTF8StringEncoding];
                   // html變數存放該url的內容
                   NSLog(@"%@", html);
               } else {
                   NSLog(@"Download url error: %@", error);
               }
           }
     ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
