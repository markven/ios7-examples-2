//
//  ViewController.h
//  GetAllPhotos
//
//  Created by KoKang Chu on 12/8/26.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface ViewController : UIViewController
{
    ALAssetsLibrary *library;
    NSMutableArray *imageArray;
}
@end
