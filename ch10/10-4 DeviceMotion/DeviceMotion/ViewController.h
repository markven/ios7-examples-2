//
//  ViewController.h
//  DeviceMotion
//
//  Created by KoKang Chu on 12/7/2.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController
{
    CMMotionManager *mm;
}

@property (weak, nonatomic) IBOutlet UILabel *pitchLabel;
@property (weak, nonatomic) IBOutlet UILabel *rollLabel;
@property (weak, nonatomic) IBOutlet UILabel *yawLabel;

@end
