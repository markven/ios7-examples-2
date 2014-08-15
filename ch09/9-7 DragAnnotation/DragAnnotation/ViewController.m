//
//  ViewController.m
//  DragAnnotation
//
//  Created by KoKang Chu on 12/6/21.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"
#import "MyAnnotation.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    // 將台北市座標設定在地圖正中央
    self.myMap.centerCoordinate = CLLocationCoordinate2DMake(25.0335, 121.5651);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.myMap.delegate = self;
    
    MyAnnotation *annotation;
    // 台北市座標
    annotation = [[MyAnnotation alloc] initWithLocation:CLLocationCoordinate2DMake(25.0335, 121.5651)];
    [self.myMap addAnnotation:annotation];
}

// 傳回大頭針拖放時的狀態
-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view didChangeDragState:(MKAnnotationViewDragState)newState fromOldState:(MKAnnotationViewDragState)oldState
{
    if (newState == MKAnnotationViewDragStateEnding) {
        // 當拖放結束時，在title上顯示大頭針所在的座標
        view.canShowCallout = YES;
    }
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]]) {
        return nil;
    }
    
    MKPinAnnotationView *annView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"CustomAnnotation"];
    if (annView) {
        return annView;
    }
    
    annView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomAnnotation"];
    annView.pinColor = MKPinAnnotationColorPurple;
    // 設定大頭針是可被拖放的
    annView.draggable = YES;
    
    return annView;
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
