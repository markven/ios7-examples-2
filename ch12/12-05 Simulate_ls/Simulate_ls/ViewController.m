//
//  ViewController.m
//  Simulate_ls
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
    NSArray *arr = [fm URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    NSURL *url = arr[0];
    
    // includingPropertiesForKey: 表示要列出具備哪些屬性的檔案，nil表示所有屬性都要的意思
    // option: 目前可以使用的參數是 NSDirectoryEnumerationSkipsHiddenFiles 代表不要列出隱藏檔
    //         如果要連隱藏檔都列出，則使用 ~NSDirectoryEnumerationSkipsHiddenFiles
    //         UNIX 的隱藏檔是以「.」開頭的檔案
    NSArray *fileList = [fm contentsOfDirectoryAtURL:url
                          includingPropertiesForKeys:nil
                                             options:NSDirectoryEnumerationSkipsHiddenFiles
                                               error:nil
                         ];
    
    BOOL isDir;
    for (NSURL *p in fileList) {
        // NSURL 類別包含了檔案的絕對路徑（以URI的格式呈現）
        // .lastPathComponent 則是URI中檔名的部分
        if ([fm fileExistsAtPath:p.path isDirectory:&isDir] && isDir)
            NSLog(@"%@ 是目錄.", p.lastPathComponent);
        else
            NSLog(@"%@ 是檔案.", p.lastPathComponent);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
