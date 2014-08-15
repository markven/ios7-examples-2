//
//  AppDelegate.m
//  DiffBackgroundTime
//
//  Created by Ckk on 13/7/10.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    //////////// 註冊程序1
    bgTask1 = [application beginBackgroundTaskWithExpirationHandler:^{
        [application endBackgroundTask:bgTask1];
    }];
    
    // 程序1啓動
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        int n = 0;
        while (TRUE) {
            NSLog(@"%d", n); // 印出 0,2,4,6,8,10,12
            if (n > 10) {
                // 程序1結束
                [application endBackgroundTask:bgTask1];
                break;
            }
            n += 2;
            [NSThread sleepForTimeInterval:1.0f];
        }
    });
    
    //////////// 註冊程序2。10分鐘的時間是與程序1共用的
    bgTask2 = [application beginBackgroundTaskWithExpirationHandler:^{
        [application endBackgroundTask:bgTask2];
    }];
    
    // 程序2啓動
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        int n = 1;
        while (TRUE) {
            NSLog(@"%d", n); // 印出1,3,5,7,9,11,13,15,17,19,21
            if (n > 20) {
                // 程序2結束
                [application endBackgroundTask:bgTask2];
                break;
            }
            n += 2;
            [NSThread sleepForTimeInterval:1.0f];
        }
    });
}



- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
