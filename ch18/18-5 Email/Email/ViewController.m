//
//  ViewController.m
//  Email
//
//  Created by Ckk on 13/7/22.
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
    
    NSString *to = @"to@email.com";
    NSString *subject = @"TEST";
    NSString *cc = @"cc@email.com";
    NSString *bcc = @"bcc@email.com";
    NSString *mailStr = [NSString stringWithFormat:@"mailto:%@?subject=%@&cc=%@&bcc=%@", to, subject, cc, bcc];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:mailStr]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
