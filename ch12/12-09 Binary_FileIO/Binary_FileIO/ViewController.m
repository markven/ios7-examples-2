//
//  ViewController.m
//  Binary_FileIO
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
    
    NSString *path = [NSHomeDirectory() stringByAppendingString:@"/Documents/photos.dat"];
    UIImage *img1 = [UIImage imageNamed:@"1.jpg"];
    UIImage *img2 = [UIImage imageNamed:@"2.jpg"];

    // 1.0代表了壓縮後的圖片品質，因為我們不想改變太多，所以這裡填入最高品質1.0
    NSData *img1Data = UIImageJPEGRepresentation(img1, 1.0);
    NSData *img2Data = UIImageJPEGRepresentation(img2, 1.0);
    
    // 將這兩張圖片放到陣列中
    NSArray *array = [[NSArray alloc] initWithObjects:img1Data, img2Data, nil];
    if ([array writeToFile:path atomically:YES]) {
        NSLog(@"圖片存檔成功");
    } else {
        NSLog(@"失敗");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
