//
//  ViewController.m
//  BGMusic
//
//  Created by Ckk on 13/7/7.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    AVAudioPlayer *audioPlayer;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        
        // 設定可以背景播放音樂
        AVAudioSession *session = [AVAudioSession sharedInstance];
        if ([session setCategory:AVAudioSessionCategoryPlayback error:nil]) {
            NSLog(@"背景播放設定OK");
        } else {
            NSLog(@"背景播放設定失敗");
        }
        
        // 以下為播放音樂的程式碼
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"mp3"];
        NSData *fileData = [NSData dataWithContentsOfFile:filePath];
        
        audioPlayer = [[AVAudioPlayer alloc] initWithData:fileData error:nil];
        audioPlayer.delegate = self;
        
        if (audioPlayer != nil) {
            if ([audioPlayer prepareToPlay])
                [audioPlayer play];
        }

    });
}

-(void)audioPlayerBeginInterruption:(AVAudioPlayer *)player
{
    NSLog(@"interrupt");
}

-(void)audioPlayerEndInterruption:(AVAudioPlayer *)player withOptions:(NSUInteger)flags
{
    NSLog(@"interrupt end");
    if (flags == AVAudioSessionInterruptionOptionShouldResume)
        [player play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
