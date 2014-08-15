//
//  ViewController.h
//  SampleDelegate
//
//  Created by Ckk on 13/7/23.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleClass.h"

@interface ViewController : UIViewController <SampleDelegate>
{
    SampleClass *sc;
}

@end
