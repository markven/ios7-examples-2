//
//  ViewController.m
//  SampleDelegate
//
//  Created by Ckk on 13/7/23.
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
    
    sc = [SampleClass new];
    sc.delegate = self;
    [sc doSomething];
}

-(void)finish:(SampleClass *)sampleClass
{
    NSLog(@"done");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
