//
//  ViewController.m
//  DirectoryExist
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
    BOOL isExist = [fm fileExistsAtPath:path];
    if (isExist) {
        NSLog(@"目錄或檔案存在");
    } else {
        NSLog(@"目錄或檔案不存在");        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
