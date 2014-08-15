//
//  ViewController.m
//  MapType
//
//  Created by KoKang Chu on 12/6/21.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)standardButton:(id)sender
{
    // 標準
    self.myMap.mapType = MKMapTypeStandard;
}

- (IBAction)hybridButton:(id)sender
{
    // 混合
    self.myMap.mapType = MKMapTypeHybrid;
}

- (IBAction)satelliteButton:(id)sender
{
    // 衛星
    self.myMap.mapType = MKMapTypeSatellite;
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
