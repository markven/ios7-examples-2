//
//  MyCanvas.m
//  DrawLine
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
    CGContextSetLineWidth(context, 15);
    CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);

    // 畫一條實線
    CGContextMoveToPoint(context, 10, 100);
    CGContextAddLineToPoint(context, 200, 100);
    CGContextDrawPath(context, kCGPathStroke);
    
    // 畫一條等寬虛線
    CGFloat dashes[] = { 10, 10 };
    CGContextSetLineDash(context, 0, dashes, sizeof(dashes) / sizeof(CGFloat));
    CGContextMoveToPoint(context, 10, 150);
    CGContextAddLineToPoint(context, 200, 150);
    CGContextDrawPath(context, kCGPathStroke);
    
    // 畫一條花式虛線
    CGFloat dashes2[] = { 6, 6, 2, 3 };
    CGContextSetLineDash(context, 0, dashes2, sizeof(dashes2) / sizeof(CGFloat));
    CGContextMoveToPoint(context, 10, 200);
    CGContextAddLineToPoint(context, 200, 200);
    CGContextDrawPath(context, kCGPathStroke);
    
    // 還原繪圖區域狀態
    CGContextRestoreGState(context);
}

@end
