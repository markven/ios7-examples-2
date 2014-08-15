//
//  ViewController.m
//  SQLIte_Image
//
//  Created by Ckk on 12/10/20.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    sqlite3 *db = [delegate getDB];
    
    if (db != nil) {
        // 準備照片
        UIImage *img = [UIImage imageNamed:@"sample.jpg"];
        NSData *data = UIImageJPEGRepresentation(img, 1.0);
        
        sqlite3_stmt *statement;
        
        // (1, ?): 1所在的欄位為PK，為圖片編號
        const char *sql = "insert into image_table values (1, ?)";
        sqlite3_prepare(db, sql, -1, &statement, NULL);
        
        // 將照片存入資料庫
        sqlite3_bind_blob(statement, 1, [data bytes], [data length], NULL);
        
        if (sqlite3_step(statement) == SQLITE_DONE) {
            NSLog(@"success");
        } else {
            NSLog(@"fail");
        }
        sqlite3_finalize(statement);
        
        // 從資料庫中取出照片
        const char *sql1 = "select * from image_table";
        sqlite3_prepare(db, sql1, -1, &statement, NULL);
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int length = sqlite3_column_bytes(statement, 1);
            data = [NSData dataWithBytes:sqlite3_column_blob(statement, 1) length:length];
            // 將圖片放到image元件中
            self.myImg.image = [UIImage imageWithData:data];
        }
        
        sqlite3_finalize(statement);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
