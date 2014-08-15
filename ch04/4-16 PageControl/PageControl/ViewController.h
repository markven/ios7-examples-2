//
//  ViewController.h
//  PageControl
//
//  Created by KoKang Chu on 12/8/21.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSMutableArray *array;
}

@property (weak, nonatomic) IBOutlet UIImageView *myImg;
@property (weak, nonatomic) IBOutlet UIPageControl *pageCtrl;

- (void) showImage;

@end
