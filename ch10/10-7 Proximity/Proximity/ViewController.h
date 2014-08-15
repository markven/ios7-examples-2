//
//  ViewController.h
//  Proximity
//
//  Created by KoKang Chu on 12/8/15.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(void)proximateSensorOn;
-(void)proximateSensorOff;

-(void)proximitySensorChange:(id)notification;

@end
