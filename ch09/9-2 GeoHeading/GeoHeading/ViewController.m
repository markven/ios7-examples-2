//
//  ViewController.m
//  GeoHeading
//
//  Created by KoKang Chu on 12/6/18.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    if (newHeading.headingAccuracy < 0) {
        NSLog(@"請進行校準或遠離磁性干擾源");
        return;
    }

    NSLog(@"目前面對的方位為：%f", newHeading.magneticHeading);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    location = [[CLLocationManager alloc] init];
    location.delegate = self;
    // 開啓禎測目前行動裝置面對方向的功能
    [location startUpdatingHeading];
}

-(void)viewDidDisappear:(BOOL)animated
{
    // 不用時要關閉更新數值功能以節省電力
    [location stopUpdatingHeading];
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
