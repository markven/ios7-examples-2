//
//  ViewController.m
//  iCloud
//
//  Created by Ckk on 13/8/4.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

-(void)iCloudIO;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSFileManager *fm = [NSFileManager defaultManager];
    id token = [fm ubiquityIdentityToken];
    
    // 檢查使用者是否開啓iCloud功能
    if (token != nil) {
        NSOperationQueue *q = [NSOperationQueue new];
        [q addOperationWithBlock:^{
            // 進行 iCloud I/O
            [self iCloudIO];
        }];
        
    } else {
        NSLog(@"請先啓用iCloud");
    }
}

-(void)iCloudIO
{
    NSFileManager *fm = [NSFileManager defaultManager];
    // 以下這行官方文件建議不可在 main thread 中呼叫
    NSURL *fileURL = [fm URLForUbiquityContainerIdentifier:nil];
    
    // 將存檔路徑設定在 Document 下
    fileURL = [fileURL URLByAppendingPathComponent:@"Document"];

    if ([fm fileExistsAtPath:[fileURL path]] == NO) {
        // 如果Document目錄不存在，則建立這個目錄
        [fm createDirectoryAtURL:fileURL withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
    // 設定存檔檔名為 mynote.txt
    fileURL = [fileURL URLByAppendingPathComponent:@"mynote.txt"];
    
    // 將資料寫入 iCloud
    [@"hello world" writeToURL:fileURL atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    // 將資料從 iCloud 中讀出
    NSString *str = [[NSString alloc] initWithContentsOfURL:fileURL encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@", str);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
