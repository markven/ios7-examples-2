//
//  AppDelegate.h
//  ConnectDB
//
//  Created by KoKang Chu on 12/6/12.
//
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    sqlite3 *db;
}
-(sqlite3 *) getDB;

@property (strong, nonatomic) UIWindow *window;

@end
