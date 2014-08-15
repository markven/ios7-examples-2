//
//  ViewController.h
//  PinColor
//
//  Created by KoKang Chu on 12/6/21.
//
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *myMap;

@end
