//
//  ViewController.m
//  DropboxTest
//
//  Created by KoKang Chu on 12/8/5.
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

- (IBAction)uploadButton:(id)sender
{
    NSString *localPath = [[NSBundle mainBundle] pathForResource:@"InfoPlist" ofType:@"strings"];
    NSString *filename = @"InfoPlist.strings";
    NSString *destDir = @"/";
    [[self restClient] uploadFile:filename toPath:destDir withParentRev:nil fromPath:localPath];
}

- (void)restClient:(DBRestClient*)client uploadedFile:(NSString*)destPath
              from:(NSString*)srcPath metadata:(DBMetadata*)metadata
{
    // 上傳成功後會呼叫此方法
    NSLog(@"檔案成功的上傳到此路徑: %@", metadata.path);
}

- (void)restClient:(DBRestClient*)client uploadFileFailedWithError:(NSError*)error
{
    // 上傳失敗後會呼叫此方法
    NSLog(@"檔案上傳失敗 - %@", error);
}

-(void)restClient:(DBRestClient *)client uploadProgress:(CGFloat)progress forFile:(NSString *)destPath from:(NSString *)srcPath
{
    // 取得上傳進度
    self.uploadProgress.progress = progress;
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
