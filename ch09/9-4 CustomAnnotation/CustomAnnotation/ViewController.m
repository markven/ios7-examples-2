//
//  ViewController.m
//  CustomAnnotation
//
//  Created by KoKang Chu on 12/6/20.
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
    
    MyAnnotation *annotation;
    
    // 設定台北的座標與圖片
    annotation = [[MyAnnotation alloc] initWithLocation:CLLocationCoordinate2DMake(25.0335, 121.5651)];
    annotation.image = [UIImage imageNamed:@"tw_flag.png"];
    [self.myMap addAnnotation:annotation];
    
    // 設定東京的座標與圖片
    annotation = [[MyAnnotation alloc] initWithLocation:CLLocationCoordinate2DMake(35.6997, 139.6989)];
    annotation.image = [UIImage imageNamed:@"jp_flag.png"];
    [self.myMap addAnnotation:annotation];
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    // 判斷這個annotation是不是屬於顯示目前所在位置的那一個註解
    if ([annotation isKindOfClass:[MKUserLocation class]]) {
        return nil;
    }
    
    MKAnnotationView *annView = (MKAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"CustomAnnotation"];
    if (annView) {
        return annView;
    }
    
    annView = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomAnnotation"];
    annView.image = ((MyAnnotation *)annotation).image;
    
    return annView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
