//
//  ViewController.m
//  UndoRedo
//
//  Created by KoKang Chu on 12/8/22.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textView;

- (IBAction)undoButton:(id)sender
{
    [[textView undoManager] undo];
}

- (IBAction)redoButton:(id)sender
{
    [[textView undoManager] redo];
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
