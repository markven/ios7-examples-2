//
//  ViewController.m
//  PinColor
//
//  Created by KoKang Chu on 12/6/21.
//
//

#import "ViewController.h"
#import "MyAnnotation.h"

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
	
    // 設定myMap的代理為View Controller
    self.myMap.delegate = self;
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    MyAnnotation *annotation;
    
    // 設定台北的座標與紫色大頭針
    annotation = [[MyAnnotation alloc] initWithLocation:CLLocationCoordinate2DMake(25.0335, 121.5651)];
    annotation.pinColor = MKPinAnnotationColorPurple;
    [array addObject:annotation];
    
    // 設定東京的座標與紅色大頭針
    annotation = [[MyAnnotation alloc] initWithLocation:CLLocationCoordinate2DMake(35.6997, 139.6989)];
    annotation.pinColor = MKPinAnnotationColorRed;
    [array addObject:annotation];
    
    // 設定上海的座標與綠色大頭針
    annotation = [[MyAnnotation alloc] initWithLocation:CLLocationCoordinate2DMake(31.2304, 121.4729)];
    annotation.pinColor = MKPinAnnotationColorGreen;
    [array addObject:annotation];
    
    [self.myMap addAnnotations:array];
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    // 判斷這個annotation是不是屬於顯示目前所在位置的那一個註解
    if ([annotation isKindOfClass:[MKUserLocation class]]) {
        return nil;
    }
    
    // 使用MKPinAnnotationView才可以改變大頭針顏色
    MKPinAnnotationView *annView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"CustomAnnotation"];
    if (annView) {
        return annView;
    }
    
    annView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomAnnotation"];
    annView.pinColor = ((MyAnnotation *)annotation).pinColor;
    
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
