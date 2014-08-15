//
//  ViewController.m
//  CollectionView
//
//  Created by KoKang Chu on 12/8/26.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 傳回幾個 secion
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

// 傳回每個 secion 有多少筆資料
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [imageArray count];
}

// 處理每一筆資料的內容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    MyCell *cell = (MyCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[MyCell alloc] init];
    }
    
    // 取出每一張照片的資料並轉換成 UIImage 格式
    CGImageRef img = [[imageArray objectAtIndex:indexPath.row] thumbnail];
    cell.imageView.image = [UIImage imageWithCGImage:img];
    
    return cell;
}

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
            // 要求 Collection View 重新載入資料
            [self.colView reloadData];
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
