//
//  ViewController.m
//  SelectDB
//
//  Created by KoKang Chu on 12/6/12.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 取得已開啓的資料庫連線變數
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    sqlite3 *db = [delegate getDB];
    
    if (db != nil) {
        // 準備好查詢的SQL command
        const char *sql = "SELECT * FROM UserData";
        // statement用來儲存執行結果
        sqlite3_stmt *statement;
        sqlite3_prepare(db, sql, -1, &statement, NULL);
        
        // 利用迴圈取出查詢結果
        while (sqlite3_step(statement) == SQLITE_ROW) {
            char *iid = (char *)sqlite3_column_text(statement, 0);
            char *cname = (char *)sqlite3_column_text(statement, 1);
            
            NSLog(@"iid: %@", [NSString stringWithCString:iid encoding:NSUTF8StringEncoding]);
            NSLog(@"cname: %@", [NSString stringWithCString:cname encoding:NSUTF8StringEncoding]);
        }
        
        // 使用完畢，釋放statement
        sqlite3_finalize(statement);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
