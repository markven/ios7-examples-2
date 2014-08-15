//
//  ViewController.m
//  FrameAnimation
//
//  Created by KoKang Chu on 12/7/12.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonPress:(UIButton *)sender
{
    [UIView animateWithDuration:1.0 animations:^{
        
        CGRect rect = sender.frame;
        
        rect.origin.y += 150;
        
        sender.frame = rect;
    }];

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
