//
//  ViewController.h
//  CollectionView
//
//  Created by KoKang Chu on 12/8/26.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "MyCell.h"

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
{
    ALAssetsLibrary *library;
    NSMutableArray *imageArray;
}
@property (weak, nonatomic) IBOutlet UICollectionView *colView;

@end
