//
//  ViewController.m
//  ListDropbox
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

- (IBAction)dirButton:(id)sender
{
    // 按下「Dir」按鈕後要求Dropbox傳回指定目錄下的檔案列表
    [[self restClient] loadMetadata:@"/"];
}

- (void)restClient:(DBRestClient *)client loadedMetadata:(DBMetadata *)metadata {
    NSString *s = @"";
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    
    if (metadata.isDirectory) {
        for (DBMetadata *file in metadata.contents) {
            // 上一次修改時間
            s = [s stringByAppendingFormat:@"%@\t", [format stringFromDate:file.lastModifiedDate]];
            
            // 是否為目錄
            s = [s stringByAppendingFormat:@"%@\t", (file.isDirectory)?@"<DIR>":@""];
            
            // 檔案大小
            s = [s stringByAppendingFormat:@"%u\t", (unsigned int)file.totalBytes];

            // 檔名
            s = [s stringByAppendingFormat:@"%@\n\n", file.filename];
        }
    }
    
    self.textView.text = s;
}

- (void)restClient:(DBRestClient *)client loadMetadataFailedWithError:(NSError *)error
{
    // 讀取檔案列表錯誤時會呼叫
    NSLog(@"讀取檔案列表錯誤 - %@", error);
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
