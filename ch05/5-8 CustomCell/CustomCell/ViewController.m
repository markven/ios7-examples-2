//
//  ViewController.m
//  CustomCell
//
//  Created by KoKang Chu on 12/6/30.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indicator = @"Cell";
    // 記得換成自定儲存格類別
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:indicator];
    
    if (cell == nil) {
        // 載入 CustomCell.xib 檔
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:nil options:nil];
        for (UIView *view in views) {
            if ([view isKindOfClass:[CustomCell class]]) {
                cell = (CustomCell *)view;
            }
        }
    }
    
    // 填資料到左標籤
    cell.leftLabel.text = [[list objectAtIndex:indexPath.row] objectAtIndex:0];
    // 填資料到有標簽
    cell.rightLabel.text = [[list objectAtIndex:indexPath.row] objectAtIndex:1];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    list = [[NSMutableArray alloc] init];
    [list addObject:[NSArray arrayWithObjects: @"看書", @"科幻小說", nil]];
    [list addObject:[NSArray arrayWithObjects: @"逛街", @"百貨公司", nil]];
    [list addObject:[NSArray arrayWithObjects: @"打球", @"羽毛球", nil]];
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
