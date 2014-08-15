//
//  ViewController.m
//  MySetting
//
//  Created by KoKang Chu on 12/6/30.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonPress:(id)sender
{
    // 取得 name_preference 的Item設定值
    NSString *app_title = [[NSUserDefaults standardUserDefaults] stringForKey:@"name_preference"];
    // 全部改為大寫
    app_title = [app_title uppercaseString];
    
    // 將修改後的資料寫回去
    [[NSUserDefaults standardUserDefaults] setValue:app_title forKey:@"name_preference"];
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
