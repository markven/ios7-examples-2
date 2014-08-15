//
//  ViewController.m
//  MyMusicPlayer
//
//  Created by KoKang Chu on 12/8/16.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)nextSong:(id)sender
{
    // 下一首歌曲
    [musicPlayer skipToNextItem];
    [musicPlayer play];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    musicPlayer = [MPMusicPlayerController applicationMusicPlayer];
    // 將裝置內所有的歌曲放到播放清單中
    [musicPlayer setQueueWithQuery:[MPMediaQuery songsQuery]];
    
    // 設定訊息通知
    NSNotificationCenter *notice = [NSNotificationCenter defaultCenter];
    // 當播放的歌曲改變時要通知我們（呼叫nowPlayingItemChanged:方法）
    [notice addObserver:self
               selector:@selector(nowPlayingItemChanged:)
                   name:MPMusicPlayerControllerNowPlayingItemDidChangeNotification
                 object:musicPlayer
     ];
    
    // 要求歌曲播放時發送一些狀態訊息
    [musicPlayer beginGeneratingPlaybackNotifications];
    
    // 播放音樂
    [musicPlayer play];
}

-(void) nowPlayingItemChanged:(id)notification
{
    // 當播放的歌曲改變時會呼叫此方法
    MPMediaItem *item = [musicPlayer nowPlayingItem];

    // 取得專輯封面圖片
    MPMediaItemArtwork *artwork = [item valueForProperty:MPMediaItemPropertyArtwork];
    if (artwork)
        self.artworkImage.image = [artwork imageWithSize:CGSizeMake(130, 130)];

    // 取得歌曲名稱
    self.titleLabel.text = [item valueForProperty:MPMediaItemPropertyTitle];
    // 取得專輯名稱
    self.albumLabel.text = [item valueForProperty:MPMediaItemPropertyAlbumTitle];
    // 取得歌手姓名
    self.artistLabel.text = [item valueForProperty:MPMediaItemPropertyArtist];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
