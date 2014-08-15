//
//  AppDelegate.h
//  DropboxTest
//
//  Created by KoKang Chu on 12/8/5.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DropboxSDK/DropboxSDK.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, DBSessionDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
