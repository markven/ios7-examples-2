//
//  ViewController.m
//  GetAllPhotos
//
//  Created by KoKang Chu on 12/8/26.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    library = [[ALAssetsLibrary alloc] init];
    
    // 使用參數 ALAssetsGroupSavedPhotos 取出所有存檔照片
    [library enumerateGroupsWithTypes:ALAssetsGroupSavedPhotos usingBlock:^(ALAssetsGroup *group, BOOL *stop) {
        NSMutableArray *tempArray = [[NSMutableArray alloc] init];
        if (group != nil) {
            [group enumerateAssetsUsingBlock:^(ALAsset *result, NSUInteger index, BOOL *stop) {
                if (result != nil) {
                    [tempArray addObject:result];
                }
            }];
            // 保存結果
            imageArray = [tempArray copy];
            NSLog(@"取出照片共 %d 張", [imageArray count]);
        }
    } failureBlock:^(NSError *error) {
        // 讀取照片失敗
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
