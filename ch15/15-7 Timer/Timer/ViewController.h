//
//  ViewController.h
//  Timer
//
//  Created by KoKang Chu on 12/7/1.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timer;
    NSDateFormatter *format;
}

-(void)ticker:(NSTimer *)theTimer;

@end
