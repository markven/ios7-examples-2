//
//  ViewController.m
//  Plist
//
//  Created by KoKang Chu on 12/6/16.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 取得已經複製到家目錄下Document資料夾中的Property List.plist路徑
    NSString *path = [NSString stringWithFormat:@"%@/Documents/Property List.plist", NSHomeDirectory()];

    // 將Property List.plist檔案內容全部讀出放到plist變數中
    NSMutableDictionary *plist = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    // 從plist變數中取得key名稱為Color的值
    NSString *color = [plist objectForKey:@"Color"];
    NSLog(@"The color is %@", color);
    
    // 將plist變數中的Color值改為Green綠色
    [plist setValue:@"Green" forKey:@"Color"];
    // 將修改完的值寫回Property List.plist檔
    [plist writeToFile:path atomically:YES];
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
