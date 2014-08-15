//
//  ViewController.m
//  CreateDirectory_File
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
    NSString *dir = [NSHomeDirectory() stringByAppendingString:@"/Documents/data"];
    NSString *file = [dir stringByAppendingString:@"/mydata.txt"];
    
    NSError *error = nil;
    
    // 在Documents下建立data目錄
    BOOL success = [fm createDirectoryAtPath:dir withIntermediateDirectories:YES attributes:nil error:&error];
    if (success) {
        NSLog(@"目錄建立成功");
    } else {
        NSLog(@"目錄建立失敗");
    }
    
    // 在data目錄下建立mydata.txt檔案
    success = [fm createFileAtPath:file contents:nil attributes:nil];
    if (success) {
        NSLog(@"檔案建立成功");
    } else {
        NSLog(@"檔案建立失敗");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
