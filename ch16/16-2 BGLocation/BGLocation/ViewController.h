//
//  ViewController.h
//  BGLocation
//
//  Created by Ckk on 13/7/7.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *location;
}

@end
