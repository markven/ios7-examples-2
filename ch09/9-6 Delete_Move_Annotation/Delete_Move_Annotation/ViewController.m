//
//  ViewController.m
//  Delete_Move_Annotation
//
//  Created by KoKang Chu on 12/6/21.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// Pin按鈕按下去
- (IBAction)pinButton:(id)sender
{
    [self.myMap addAnnotation:point];
}

// Delete按鈕按下去
- (IBAction)deleteButton:(id)sender
{
    [self.myMap removeAnnotation:point];
}

// Move按鈕按下去
- (IBAction)moveButton:(id)sender
{
    // 座標在東京市
    [point setCoordinate:CLLocationCoordinate2DMake(35.6997, 139.6989)];
    point.title = @"東京市";
}

-(void)viewDidAppear:(BOOL)animated
{
    self.myMap.centerCoordinate = CLLocationCoordinate2DMake(25.0335, 121.5651);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    point = [[MKPointAnnotation alloc] init];
    // 座標在台北市
    point.coordinate = CLLocationCoordinate2DMake(25.0335, 121.5651);
    point.title = @"台北市";
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
