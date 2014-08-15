//
//  ViewController.m
//  PichPhoto_iPad
//
//  Created by KoKang Chu on 12/6/28.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonPress:(UIButton *)sender
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    // 設定相片的來源為手機內的相本
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.delegate = self;
    
    // 初始化popover視窗，其內容為相片導覽畫面
    popover = [[UIPopoverController alloc] initWithContentViewController:imagePicker];
    // 取得按鈕的座標與長寬大小
    CGRect rect = sender.frame;
    // 在按鈕周圍開啟popover視窗
    [popover presentPopoverFromRect:rect inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    // 取得相片
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    // 放到Image View元件上
    self.myImg.image = image;
    // 關閉popover視窗
    [popover dismissPopoverAnimated:YES];
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
    return YES;
}

@end
