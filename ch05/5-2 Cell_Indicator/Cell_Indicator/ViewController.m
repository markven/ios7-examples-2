//
//  ViewController.m
//  Cell_Indicator
//
//  Created by Ckk on 13/7/22.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    list = [NSMutableArray new];
    [list addObject:@"看書"];
    [list addObject:@"逛街"];
    [list addObject:@"打球"];
    [list addObject:@"游泳"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indicator = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indicator];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indicator];
    }
    
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
    
    // 設定儲存格指示器開始
    switch (indexPath.row) {
        case 0: // 確認指示器
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
            
        case 1: // 細節指示器
            cell.accessoryType = UITableViewCellAccessoryDetailButton;
            break;
            
        case 2: // 細節揭露指示器
            cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
            break;
            
        case 3: // 揭露指示器
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
