//
//  ViewController.m
//  GeoLocation
//
//  Created by KoKang Chu on 12/6/18.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *c = [locations objectAtIndex:0];
    NSLog(@"緯度：%f, 經度：%f, 高度：%f", c.coordinate.latitude, c.coordinate.longitude, c.altitude);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    location = [[CLLocationManager alloc] init];
    location.delegate = self;
    // 開啟計算目前行動裝置所在位置的功能
    [location startUpdatingLocation];
}

-(void)viewDidDisappear:(BOOL)animated
{
    // 關閉計算目前行動裝置所在位置的功能
    [location stopUpdatingLocation];
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
