//
//  TableViewController.h
//  Search
//
//  Created by KoKang Chu on 12/8/24.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate, UISearchDisplayDelegate>
{
    NSMutableArray *list;
    NSArray *searchResult;
}

@end
