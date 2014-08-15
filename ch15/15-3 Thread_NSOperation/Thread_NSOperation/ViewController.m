//
//  ViewController.m
//  Thread_NSOperation
//
//  Created by KoKang Chu on 12/8/25.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"
#import "MyOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    MyOperation *opt1 = [[MyOperation alloc] initWithValue:0];
    MyOperation *opt2 = [[MyOperation alloc] initWithValue:1];
    NSOperationQueue *q = [[NSOperationQueue alloc] init];
    
    [q addOperations:[NSArray arrayWithObjects:opt1, opt2, nil] waitUntilFinished:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
