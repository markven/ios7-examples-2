//
//  ViewController.m
//  TwoButtons_OneHandler
//
//  Created by KoKang Chu on 12/6/20.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)buttonPress:(UIButton *)sender
{
    if ([sender.titleLabel.text isEqualToString:@"Button1"]) {
        self.label.text = @"Button1被按";
    } else if ([sender.titleLabel.text isEqualToString:@"Button2"]) {
        self.label.text = @"Button2被按";
    }
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
