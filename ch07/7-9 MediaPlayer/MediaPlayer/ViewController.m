//
//  ViewController.m
//  MediaPlayer
//
//  Created by KoKang Chu on 12/8/16.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonPress:(id)sender
{
    MPMediaPickerController *mediaPicker = [[MPMediaPickerController alloc] initWithMediaTypes:MPMediaTypeAnyAudio];
    mediaPicker.delegate = self;
    // 設定可以多選
    mediaPicker.allowsPickingMultipleItems = YES;
    // 開啓音樂檔案列表視窗
    [self presentViewController:mediaPicker animated:YES completion:nil];
}

-(void)mediaPicker:(MPMediaPickerController *)mediaPicker didPickMediaItems:(MPMediaItemCollection *)mediaItemCollection
{
    // 使用者選擇了音樂後會呼叫此方法
    MPMusicPlayerController *musicPlayer = [MPMusicPlayerController applicationMusicPlayer];
    [musicPlayer setQueueWithItemCollection:mediaItemCollection];
    [musicPlayer play];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)mediaPickerDidCancel:(MPMediaPickerController *)mediaPicker
{
    // 使用者取消選取後會呼叫此方法
    [self dismissViewControllerAnimated:YES completion:nil];
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
