//
//  ViewController.m
//  PageControl
//
//  Created by KoKang Chu on 12/8/21.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender
{
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            // 向左揮擊
            if (self.pageCtrl.currentPage < [array count]) {
                self.pageCtrl.currentPage++;
                [self showImage];
            }            
            break;
            
        case UISwipeGestureRecognizerDirectionRight:
            // 向右揮擊
            if (self.pageCtrl.currentPage > 0) {
                self.pageCtrl.currentPage--;
                [self showImage];
            }
            break;
    
        default:;
    }
}

- (void) showImage
{
    NSString *filename = [array objectAtIndex:self.pageCtrl.currentPage];
    self.myImg.image = [UIImage imageNamed:filename];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    array = [[NSMutableArray alloc] initWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg", nil];
    self.pageCtrl.numberOfPages = [array count];
    [self showImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
