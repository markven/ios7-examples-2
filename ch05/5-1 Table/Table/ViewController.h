//
//  ViewController.h
//  Table
//
//  Created by KoKang Chu on 12/6/27.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *list;
}

@end
