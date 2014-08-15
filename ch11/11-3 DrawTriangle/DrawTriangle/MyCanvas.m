//
//  MyCanvas.m
//  DrawTriangle
//
//  Created by KoKang Chu on 12/7/8.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "MyCanvas.h"

@implementation MyCanvas

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // 取得一個繪圖區域
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 保存現行繪圖區域狀態
    CGContextSaveGState(context);
    
    // 設定繪圖區域座標，將(0, 0)改為左下角
    CGAffineTransform t = CGContextGetCTM(context);
    t = CGAffineTransformInvert(t);
    CGContextConcatCTM(context, t);
    
    // 開始繪圖
    // 設定線條顏色
    CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);
    // 設定填滿顏色
    CGContextSetRGBFillColor(context, 0.6, 1, 1, 1);
    // 設定線條粗細
    CGContextSetLineWidth(context, 15);
    
    // 設定路線開始
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 30, 30);
    CGContextAddLineToPoint(context, 200, 30);
    CGContextAddLineToPoint(context, 200, 250);
    // 設定路線結束
    CGContextClosePath(context);
    
    CGContextDrawPath(context, kCGPathFillStroke);
    
    // 還原繪圖區域狀態
    CGContextRestoreGState(context);
}

@end
