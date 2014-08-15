//
//  ViewController.m
//  Table_With_TwoSecions
//
//  Created by KoKang Chu on 12/6/27.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 傳回有多少區段
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

// 傳回每個區段要顯示多少列
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger n;
    
    switch (section) {
        case 0:
            n = [list count];
            break;
            
        case 1:
            n = [another_list count];
            break;
    }
    return n;
}

// 設定每個區段的表頭資料，這個方法為非必要方法
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *header;
    
    switch (section) {
        case 0:
            header = @"我最喜歡的休閒活動";
            break;
            
        case 1:
            header = @"我去過的國家";
            break;
    }
    return header;
}

// 準備儲存格中的資料，當然必須區分出是哪一個區段的儲存格
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indicator = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indicator];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indicator];
    }
    
    // 區分顯示區段 開始
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [list objectAtIndex:indexPath.row];
            break;
            
        case 1:
            cell.textLabel.text = [another_list objectAtIndex:indexPath.row];
            break;
    }
    // 區分顯示區段 結束
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    list = [[NSMutableArray alloc] init];
    [list addObject:@"看書"];
    [list addObject:@"逛街"];
    [list addObject:@"打球"];
    
    another_list = [[NSMutableArray alloc] init];
    [another_list addObject:@"義大利"];
    [another_list addObject:@"荷蘭"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
