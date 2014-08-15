//
//  ViewController.m
//  JSON
//
//  Created by Ckk on 13/6/28.
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
    
    // (1) 讀取 JSON 字串
    NSString *path = [[NSBundle mainBundle] pathForResource:@"json" ofType:@"txt"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    // (2) 解析 JSON 字串
    NSArray *jsonObj = [NSJSONSerialization JSONObjectWithData:data
                                                       options:NSJSONReadingMutableContainers
                                                         error:nil];
    // (3) 利用迴圈印出解析後的結果
    for (NSDictionary *p in jsonObj) {
        NSDictionary *tel = [p objectForKey:@"電話"];

        NSString *name  = [p objectForKey:@"姓名"];
        NSString *age   = [p objectForKey:@"年齡"];
        NSString *tel_o = [tel objectForKey:@"公司"];
        NSString *tel_h = [tel objectForKey:@"住家"];
        
        NSLog(@"%@(%@)/TEL(O):%@, TEL(H):%@", name, age, tel_o, tel_h);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
