//
//  ViewController.m
//  GravityBehavior
//
//  Created by Ckk on 13/6/26.
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
    
    // 設定動畫的範圍在哪個viewg上
    UIDynamicAnimator *animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    // 設定重力加速度作用在哪個物件上
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[self.dynbItem]];
    // 設定重力加速度的方向，預設值為 x:0.0 y:1.0。值的範圍為-1.0~+1.0。如果省略不寫，就是預設值。
    [gravityBehavior setXComponent:0.0 yComponent:1.0];
    [animator addBehavior:gravityBehavior];
    self.animator = animator;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
