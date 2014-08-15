//
//  ViewController.m
//  PlayAudio_Progress
//
//  Created by KoKang Chu on 12/8/16.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)changePlayTime:(id)sender
{
    audioPlayer.currentTime = self.slider.value;
}

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
        if ([audioPlayer prepareToPlay]) {
            // 設定slider的最小值
            self.slider.minimumValue = 0;
            // 將slider的最大值設定成跟音樂的總播放時間一樣
            self.slider.maximumValue = audioPlayer.duration;
            // 設定目前slider的值為0，音樂預設是從頭播放
            self.slider.value = 0;
            
            [audioPlayer play];

            // 啓動計時器
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                     target:self
                                                   selector:@selector(ticker:)
                                                   userInfo:nil
                                                    repeats:YES
                     ];
        }
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

-(void)ticker:(NSTimer *)theTimer
{
    self.slider.value = audioPlayer.currentTime;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
