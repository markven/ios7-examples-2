//
//  ViewController.m
//  BGLocation
//
//  Created by Ckk on 13/7/7.
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
    
    location = [CLLocationManager new];
    location.delegate = self;
    
    [location startUpdatingLocation];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    static int i;
    CLLocation *c = [locations objectAtIndex:0];
    NSLog(@"[%d] 緯度: %f, 經度: %f", i++, c.coordinate.latitude, c.coordinate.longitude);
}

-(void)viewDidDisappear:(BOOL)animated
{
    [location stopUpdatingLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
