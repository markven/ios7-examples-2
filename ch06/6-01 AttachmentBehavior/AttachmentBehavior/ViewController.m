//
//  ViewController.m
//  AttachmentBehavior
//
//  Created by Ckk on 13/6/27.
//  Copyright (c) 2013年 com.ckk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UIDynamicAnimator *animator;
@property (nonatomic) UIAttachmentBehavior *attachBehavior;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIDynamicAnimator *animator = [[UIDynamicAnimator alloc]
                                   initWithReferenceView:self.view];
    // 對動態行為物件而言，預設的鉤子所在位置為物件的正中央
    // 這裡 (-25, -25) 的意思是讓鉤子偏離中央座標左上角 25 pixel
    // 目的是讓矩形具有轉動的效果
    CGPoint hookPosition = CGPointMake (-25, -25);
    
    UIAttachmentBehavior *attachBehavior = [[UIAttachmentBehavior alloc]
                                            initWithItem:self.dynbItem
                                            point:hookPosition
                                            attachedToAnchor:self.redAnchor.frame.origin
                                            ];
    
    [animator addBehavior:attachBehavior];
    
    // attachBehavior宣告為類別成員變數是因為pan手勢所呼叫的方法中會用到
    self.attachBehavior = attachBehavior;
    self.animator = animator;
}

// 處理pan手勢
- (IBAction)handlePanGesture:(UIPanGestureRecognizer *)sender
{
    [self.attachBehavior setAnchorPoint:[sender locationInView:self.view]];
    self.redAnchor.center = self.attachBehavior.anchorPoint;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
