//
//  ViewController.h
//  DragAnnotation
//
//  Created by KoKang Chu on 12/6/21.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *myMap;

@end
