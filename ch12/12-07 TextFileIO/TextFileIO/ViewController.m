//
//  ViewController.m
//  TextFileIO
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
    
    NSString *path = [NSHomeDirectory() stringByAppendingString:@"/Documents/mydata.txt"];
    // 將資料寫入檔案中
    [@"Hello World\n" writeToFile:path
                       atomically:YES
                         encoding:NSUTF8StringEncoding
                            error:nil
     ];
    
    // 從檔案讀出資料
    NSString *text= [[NSString alloc] initWithContentsOfFile:path
                                                    encoding:NSUTF8StringEncoding
                                                       error:nil
                     ];
    
    NSLog(@"%@", text);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
