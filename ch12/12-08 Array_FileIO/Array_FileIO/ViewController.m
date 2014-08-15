//
//  ViewController.m
//  Array_FileIO
//
//  Created by Ckk on 13/6/25.
//  Copyright (c) 2013年 com.ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *path = [NSHomeDirectory() stringByAppendingString:@"/Documents/save.dat"];
    NSArray *array = @[@"A", @"B", @"C", @"D"];
    
    // 將陣列資料寫入檔案
    [array writeToFile:path atomically:YES];
    
    // 從檔案中讀取陣列資料
    NSArray *readArray = [[NSArray alloc] initWithContentsOfFile:path];
    for (id p in readArray) {
        NSLog(@"%@\n", (NSString*)p);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
