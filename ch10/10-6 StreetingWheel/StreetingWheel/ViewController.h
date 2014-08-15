//
//  ViewController.h
//  StreetingWheel
//
//  Created by KoKang Chu on 12/7/2.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController
{
    CALayer *layer;
    CMMotionManager *mm;
}
@end
