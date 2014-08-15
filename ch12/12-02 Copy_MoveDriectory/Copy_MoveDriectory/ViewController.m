//
//  ViewController.m
//  Copy_MoveDriectory
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
    NSString *srcPath = [NSHomeDirectory() stringByAppendingString:@"/Documents/image"];
    NSString *desPath1 = [NSHomeDirectory() stringByAppendingString:@"/Documents/picture"];
    NSString *desPath2 = [NSTemporaryDirectory() stringByAppendingString:@"picture.tmp"];
    NSString *desPath3 = [NSHomeDirectory() stringByAppendingString:@"/Documents/image.backup"];

    // 複製目錄。將image複製為picture
    [fm copyItemAtPath:srcPath toPath:desPath1 error:nil];
    // 將image複製到/tmp下，並且改名稱為picture.tmp
    [fm copyItemAtPath:srcPath toPath:desPath2 error:nil];
    
    // 移動目錄或將目錄改名字。將image改名為image.backup
    [fm moveItemAtPath:srcPath toPath:desPath3 error:nil];
    
    // 刪除目錄。將./tmp/picture.tmp目錄刪除
    [fm removeItemAtPath:desPath2 error:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
