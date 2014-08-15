//
//  ViewController.m
//  PinPoint
//
//  Created by KoKang Chu on 12/6/20.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    // 台北市座標
    self.myMap.centerCoordinate = CLLocationCoordinate2DMake(25.0335, 121.5651);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    MKPointAnnotation *point;
    
    // 設定在台北的大頭針
    point = [[MKPointAnnotation alloc] init];
    point.coordinate = CLLocationCoordinate2DMake(25.0335, 121.5651);
    point.title = @"台北市";
    point.subtitle = @"中華民國首都";
    [self.myMap addAnnotation:point];
    
    // 設定在東京的大頭針
    point = [[MKPointAnnotation alloc] init];
    point.coordinate = CLLocationCoordinate2DMake(35.6997, 139.6989);
    point.title = @"東京市";
    point.subtitle = @"日本的首都";
    [self.myMap addAnnotation:point];
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
