//
//  AppDelegate.h
//  DiffBackgroundTime
//
//  Created by Ckk on 13/7/10.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIBackgroundTaskIdentifier bgTask1, bgTask2;
}

@property (strong, nonatomic) UIWindow *window;

@end
