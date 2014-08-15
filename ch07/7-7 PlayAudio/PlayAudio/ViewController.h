//
//  ViewController.h
//  PlayAudio
//
//  Created by KoKang Chu on 12/8/15.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>
{
    AVAudioPlayer *audioPlayer;
}
@end
