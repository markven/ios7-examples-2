//
//  AppDelegate.m
//  Plist
//
//  Created by KoKang Chu on 12/6/16.
//
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSFileManager *fm = [[NSFileManager alloc] init];
    
    // 取得 Property List.plist 在專案中的路徑
    NSString *src = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    // 取得要複製到的目的路徑
    NSString *dst = [NSString stringWithFormat:@"%@/Documents/Property List.plist", NSHomeDirectory()];
    
    // 檢查目的路徑的 Property List.plist 檔案是否已經存在，如果不存在則複製檔案
    if ( ! [fm fileExistsAtPath:dst]) {
        [fm copyItemAtPath:src toPath:dst error:nil];
    }
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
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
