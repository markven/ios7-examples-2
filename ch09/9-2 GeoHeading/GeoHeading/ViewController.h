//
//  ViewController.h
//  GeoHeading
//
//  Created by KoKang Chu on 12/6/18.
//
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *location;
}

@end
