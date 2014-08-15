//
//  ViewController.m
//  InsertIntoDB
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
        // 準備好插入資料的SQL command
        const char *sql = "INSERT INTO UserData VALUES ('A02', '李大媽')";
        sqlite3_stmt *statement;
        // 執行
        sqlite3_prepare(db, sql, -1, &statement, NULL);
        
        // 檢查插入資料是否成功
        if (sqlite3_step(statement) == SQLITE_DONE) {
            NSLog(@"成功插入一筆資料");
        } else {
            NSLog(@"插入一筆資料失敗");
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
