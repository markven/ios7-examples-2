//
//  ViewController.m
//  PlayAudio
//
//  Created by KoKang Chu on 12/8/15.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 找到music.mp3的路徑
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"music" ofType:@"mp3"];
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    // 初始化audioPlayer
    audioPlayer = [[AVAudioPlayer alloc] initWithData:fileData error:nil];
    // 設定代理人類別
    audioPlayer.delegate = self;
    
    // 檢查是否一切就緒，如果沒問題就播放音樂
    if (audioPlayer != nil) {
        if ([audioPlayer prepareToPlay])
            [audioPlayer play];
    }
}

-(void)audioPlayerBeginInterruption:(AVAudioPlayer *)player
{
    // 音樂被系統中斷，例如有電話進來
    NSLog(@"音樂中斷");
}

-(void)audioPlayerEndInterruption:(AVAudioPlayer *)player withOptions:(NSUInteger)flags
{
    // 音樂中斷因素結束，從flags參數判斷音樂中斷時的狀態
    NSLog(@"音樂中斷結束");
    if (flags == AVAudioSessionInterruptionOptionShouldResume)
        [player play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
