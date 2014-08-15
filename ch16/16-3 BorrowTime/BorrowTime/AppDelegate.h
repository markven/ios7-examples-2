//
//  AppDelegate.h
//  BorrowTime
//
//  Created by Ckk on 13/7/7.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIBackgroundTaskIdentifier bgTask;
}

@property (strong, nonatomic) UIWindow *window;

-(void) endBackgroundTask;

@end
