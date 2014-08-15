//
//  ViewController.m
//  Locales
//
//  Created by Ckk on 13/8/4.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonPress:(id)sender
{
    self.nameLabel.text = NSLocalizedString(@"username", nil);
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

@end
