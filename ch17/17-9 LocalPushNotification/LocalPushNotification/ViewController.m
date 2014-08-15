//
//  ViewController.m
//  LocalPushNotification
//
//  Created by Ckk on 13/8/25.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UILocalNotification *note = [UILocalNotification new];
    note.alertBody = @"hello world";
    note.applicationIconBadgeNumber = 5;
    note.soundName = UILocalNotificationDefaultSoundName;
    // 設定60秒後發送
    note.fireDate = [NSDate dateWithTimeIntervalSinceNow:60];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
