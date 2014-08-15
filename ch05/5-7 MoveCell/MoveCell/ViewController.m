//
//  ViewController.m
//  MoveCell
//
//  Created by KoKang Chu on 12/6/30.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// Tool Bar上的按鈕按下去後要執行的方法
- (IBAction)editButtonPress:(UIBarButtonItem *)sender
{
    if (self.myTable.isEditing) {
        sender.title = @"Edit";
        self.myTable.editing = NO;
    } else {
        sender.title = @"Done";
        self.myTable.editing = YES;
    }
}

// 讓Table View中的儲存格可以移動
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

// 實際移動資料
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    [list exchangeObjectAtIndex:sourceIndexPath.row
              withObjectAtIndex:destinationIndexPath.row];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    list = [[NSMutableArray alloc] init];
    [list addObject:@"看書"];
    [list addObject:@"逛街"];
    [list addObject:@"打球"];
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
