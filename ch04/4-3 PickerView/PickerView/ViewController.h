//
//  ViewController.h
//  PickerView
//
//  Created by KoKang Chu on 12/6/25.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    NSMutableArray *list1, *list2;
}

@end
