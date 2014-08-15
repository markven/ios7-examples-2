//
//  ViewController.m
//  Torch
//
//  Created by KoKang Chu on 12/6/29.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)switchOnOff:(UISwitch *)sender
{
    // 取得裝置上的所有截取設備
    NSArray *array = [AVCaptureDevice devices];
    
    for (AVCaptureDevice *p in array) {
        // 判斷此設備是否是「手電筒」
        if ([p hasTorch]) {
            // 判斷裝置是否支援LED恆亮
            if ([p isFlashModeSupported:AVCaptureTorchModeOn]) {
                // 修改裝置設定值之前必須先鎖定，以確保同一時間只會有一個程式在修改
                if ([p lockForConfiguration:nil]) {
                    // 根據switch元件的狀態來設定手電筒的狀態
                    p.torchMode = sender.on;
                }
                // 修改完解除鎖定
                [p unlockForConfiguration];
            }
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
