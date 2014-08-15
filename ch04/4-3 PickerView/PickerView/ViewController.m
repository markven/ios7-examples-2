//
//  ViewController.m
//  PickerView
//
//  Created by KoKang Chu on 12/6/25.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    // Picker View上有兩個滾筒，所以傳回2
    return 2;
}

// 告訴Picker View上每一個滾筒要呈現幾筆資料
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        // 0代表最左邊的滾筒
        return [list1 count];
    } else if (component == 1) {
        return [list2 count];
    }
    
    return 0;
}

// 實際提供每一個滾筒上要呈現的資料內容
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        // 0代表最左邊的滾筒
        return [list1 objectAtIndex:row];
    } else if (component == 1) {
        return [list2 objectAtIndex:row];
    }
    
    return nil;
}

// 取得使用者所選擇的項目
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        NSLog(@"使用者在五大洲選擇了%@", [list1 objectAtIndex:row]);
    } else if (component == 1) {
        NSLog(@"使用者在國家選擇了%@", [list2 objectAtIndex:row]);
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    list1 = [[NSMutableArray alloc] init];
    [list1 addObject:@"美洲"];
    [list1 addObject:@"亞洲"];
    [list1 addObject:@"歐洲"];
    [list1 addObject:@"大洋洲"];
    [list1 addObject:@"歐洲"];
    
    list2 = [[NSMutableArray alloc] init];
    [list2 addObject:@"美國"];
    [list2 addObject:@"英國"];
    [list2 addObject:@"中國"];
    [list2 addObject:@"紐西蘭"];
    [list2 addObject:@"荷蘭"];
    [list2 addObject:@"德國"];
    [list2 addObject:@"中國"];
    [list2 addObject:@"台灣"];
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
