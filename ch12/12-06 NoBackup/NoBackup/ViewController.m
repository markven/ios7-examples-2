//
//  ViewController.m
//  NoBackup
//
//  Created by Ckk on 13/6/25.
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
    
    NSFileManager *fm = [NSFileManager defaultManager];
    NSString *path = [NSHomeDirectory() stringByAppendingString:@"/Documents/mydata.txt"];
    [fm createFileAtPath:path contents:nil attributes:nil];

    // 設定檔案不要備份屬性，必須先根據檔案的絕對路徑來產生NSURL物件
    NSURL *url = [NSURL fileURLWithPath:path];
    NSError *error = nil;
    // 設定檔案的不要備份屬性為YES
    // 在下一行設定中斷點，用ls -l@指令查看檔案屬性的前後變化
    BOOL success = [url setResourceValue:[NSNumber numberWithBool:YES] forKey:NSURLIsExcludedFromBackupKey  error:&error];
    if (success ) {
        NSLog(@"Success for marking \"do not backup\"");
    } else {
        NSLog(@"Error: %@", error);
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
