//
//  ViewController.m
//  PushBehavior
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
    
    UIDynamicAnimator *animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    // mode參數如果是UIPushBehaviorModeInstantaneous，代表推一下就停止
    // 如果是UIPushBehaviorModeContinuous，代表持續地推這個物體
    UIPushBehavior *pushBehavior = [[UIPushBehavior alloc]
                                    initWithItems:@[self.dynbItem]
                                    mode:UIPushBehaviorModeInstantaneous
                                    ];
    
    // 推力強度。1.0 代表施力「100 points/秒平方」
    pushBehavior.magnitude = 1.0;
    // angle 接受的值為弧度，但一般人熟悉的是角度，因此我們使用公式
    // 角度 / 180.0 * PI 來轉換成弧度
    // 當角度為 0 時，施力方向為九點鐘方向，90度為12點鐘方向，因此
    // 135度為從東北方推向物體
    pushBehavior.angle = 135.0 / 180.0 * M_PI;
    // 也可以使用
    // pushBehavior.xComponent = 0.1;
    // pushBehavior.yComponent = 0.8;

    [animator addBehavior:pushBehavior];
    
    self.animator = animator;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
