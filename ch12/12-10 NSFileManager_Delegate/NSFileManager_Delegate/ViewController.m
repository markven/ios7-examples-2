//
//  ViewController.m
//  NSFileManager_Delegate
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
    
    NSFileManager *fm = [NSFileManager new];
    NSArray *arr = [fm URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    NSURL *url = arr[0];
    NSArray *fileList = [fm contentsOfDirectoryAtURL:url
                          includingPropertiesForKeys:nil
                                             options:~NSDirectoryEnumerationSkipsHiddenFiles
                                               error:nil];

    fm.delegate = self;

    for (NSURL *p in fileList) {
        [fm removeItemAtURL:p error:nil];
    }
}

// 刪除檔案時會呼叫此方法
-(BOOL)fileManager:(NSFileManager *)fileManager shouldRemoveItemAtURL:(NSURL *)URL
{
    // 如果檔名是.開頭，傳回YES，否則傳回NO
    return [URL.lastPathComponent hasPrefix:@"."];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
