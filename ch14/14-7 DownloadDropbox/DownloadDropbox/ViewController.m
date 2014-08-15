//
//  ViewController.m
//  DownloadDropbox
//
//  Created by KoKang Chu on 12/8/6.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (DBRestClient *)restClient {
    if (!restClient) {
        restClient = [[DBRestClient alloc] initWithSession:[DBSession sharedSession]];
        restClient.delegate = self;
    }
    return restClient;
}

- (IBAction)downloadButton:(id)sender
{
    NSString *filename = @"P7196825.JPG";
    NSString *localPath = [NSString stringWithFormat:@"%@%@", NSTemporaryDirectory(), filename];
    NSLog(@"%@", localPath);
    // loadFile必須給完整的檔案路徑+檔名
    [[self restClient] loadFile:[NSString stringWithFormat:@"/%@", filename] intoPath:localPath];
}

- (void)restClient:(DBRestClient*)client loadedFile:(NSString*)localPath
{
    // 下載成功後會呼叫此方法
    self.myImg.image = [UIImage imageWithContentsOfFile:localPath];
}

- (void)restClient:(DBRestClient*)client loadFileFailedWithError:(NSError*)error
{
    // 下載失敗時會呼叫此方法
    NSLog(@"下載程序錯誤 - %@", error);
}

-(void)restClient:(DBRestClient *)client loadProgress:(CGFloat)progress forFile:(NSString *)destPath
{
    // 透過此方法可以取得下載進度
    self.downloadProgress.progress = progress;
}

-(void)viewDidAppear:(BOOL)animated
{
    // 啓動Dropbox登入驗證程序
    if (![[DBSession sharedSession] isLinked]) {
        [[DBSession sharedSession] linkFromController:self];

    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
