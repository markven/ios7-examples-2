//
//  ViewController.m
//  Overlay
//
//  Created by KoKang Chu on 12/6/21.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    // 設定地圖中心與大小，差不多是overlay的位置
    MKCoordinateRegion region = MKCoordinateRegionMake(CLLocationCoordinate2DMake(24.1670, 120.6009), MKCoordinateSpanMake(0.2, 0.2));
    [self.myMap setRegion:region];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.myMap.delegate = self;
    
    CLLocationCoordinate2D points[4];
    points[0] = CLLocationCoordinate2DMake(24.2013, 120.5810);
    points[1] = CLLocationCoordinate2DMake(24.2044, 120.6559);
    points[2] = CLLocationCoordinate2DMake(24.1380, 120.6401);
    points[3] = CLLocationCoordinate2DMake(24.1424, 120.5783);
    
    MKPolygon *poly = [MKPolygon polygonWithCoordinates:points count:4];
    
    [self.myMap addOverlay:poly];
}

-(MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay
{
    if ([overlay isKindOfClass:[MKPolygon class]]) {
        // 因overlay是屬於MKPolygon類別，所以顯示在地圖上的類別用MKPolygonView
        MKPolygonView *overView = [[MKPolygonView alloc] initWithPolygon:(MKPolygon *)overlay];

        // 設定塗滿顏色及透明度
        overView.fillColor = [[UIColor redColor] colorWithAlphaComponent:0.2];
        // 設定邊線顏色及透明度
        overView.strokeColor = [[UIColor redColor] colorWithAlphaComponent:0.7];
        // 設定邊線寬度
        overView.lineWidth = 3;
        
        return overView;

    }
    return nil;
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
