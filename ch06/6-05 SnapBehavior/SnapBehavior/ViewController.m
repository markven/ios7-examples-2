//
//  ViewController.m
//  SnapBehavior
//
//  Created by Ckk on 13/6/27.
//  Copyright (c) 2013年 com.ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UIDynamicAnimator *animator;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)handleTabGesture:(UITapGestureRecognizer *)sender
{
    CGPoint point = [sender locationInView:self.view];
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    UISnapBehavior *snapBehavior = [[UISnapBehavior alloc]
                                    initWithItem:self.dynbItem
                                    snapToPoint:point
                                    ];
    // damping是阻尼，控制物體衝向新座標後的擺盪量
    // 值的範圍為0.0~1.0。0.0擺盪最大，1.0擺盪最小
    // damping設定可以省略，預設值為0.5
    snapBehavior.damping = 0.5;
    
    [self.animator addBehavior:snapBehavior];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
