//
//  ViewController.m
//  ImageFilter
//
//  Created by KoKang Chu on 12/8/24.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 讀取原始照片並轉換為CIImage格式
    CIImage *inputImg = [[CIImage alloc] initWithImage:[UIImage imageNamed:@"sample.jpg"]];
    
    // 將圖片套用黑白濾鏡
    CIFilter *filter = [CIFilter filterWithName:@"CIColorMonochrome"];
    [filter setDefaults];
    [filter setValue:inputImg forKey:kCIInputImageKey];
    [filter setValue:[CIColor colorWithRed:1 green:1 blue:1] forKey:@"inputColor"];

    // 取得套用濾鏡後的效果
    CIImage *outputImg = [filter outputImage];
    
    // 將照片轉為 UIImage 格式
    CIContext *context = [CIContext contextWithOptions:nil];
    UIImage *image = [UIImage imageWithCGImage:[context createCGImage:outputImg fromRect:outputImg.extent]];
    
    // 存檔
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
