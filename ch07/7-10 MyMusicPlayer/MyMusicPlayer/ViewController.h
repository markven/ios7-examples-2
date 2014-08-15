//
//  ViewController.h
//  MyMusicPlayer
//
//  Created by KoKang Chu on 12/8/16.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController <MPMediaPickerControllerDelegate>
{
    MPMusicPlayerController *musicPlayer;
}

// 專輯封面
@property (weak, nonatomic) IBOutlet UIImageView *artworkImage;
// 歌曲名稱
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
// 專輯名稱
@property (weak, nonatomic) IBOutlet UILabel *albumLabel;
// 歌手姓名
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;

@end
