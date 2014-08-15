//
//  AppDelegate.h
//  SQLIte_Image
//
//  Created by Ckk on 12/10/20.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    sqlite3 *db;
}
@property (strong, nonatomic) UIWindow *window;

-(sqlite3 *)getDB;

@end
