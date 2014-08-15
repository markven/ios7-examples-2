//
//  ViewController.h
//  PickPhoto_iPhone
//
//  Created by KoKang Chu on 12/6/28.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *myImg;

@end
