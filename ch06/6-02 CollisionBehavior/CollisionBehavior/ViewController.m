//
//  ViewController.m
//  CollisionBehavior
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
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[self.dynbItem]];
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[self.dynbItem]];
    
    // translatesReferenceBoundsIntoBoundary => 讓參考邊界變成邊界
    // 意思就是讓目前animator所參考的view邊界為dynbItem所能移動的邊界
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    
    [animator addBehavior:gravityBehavior];
    [animator addBehavior:collisionBehavior];
    
    self.animator = animator;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
