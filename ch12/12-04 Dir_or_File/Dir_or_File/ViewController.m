//
//  ViewController.m
//  Dir_or_File
//
//  Created by Ckk on 13/6/24.
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
    NSString *path = [NSHomeDirectory() stringByAppendingString:@"/Documents/image"];
    BOOL isDir, isExist;
    isExist = [fm fileExistsAtPath:path isDirectory:&isDir];
    
    if ((isExist) && (isDir)) {
        NSLog(@"此為目錄");
    } else if ((isExist) && (!isDir)) {
        NSLog(@"此為檔案");
    } else if (!isExist) {
        NSLog(@"目錄或檔案不存在");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
