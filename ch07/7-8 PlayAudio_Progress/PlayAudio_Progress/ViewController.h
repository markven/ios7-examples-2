//
//  ViewController.h
//  PlayAudio_Progress
//
//  Created by KoKang Chu on 12/8/16.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>
{
    AVAudioPlayer *audioPlayer;
    NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UISlider *slider;

-(void)ticker:(NSTimer *)theTimer;
@end
