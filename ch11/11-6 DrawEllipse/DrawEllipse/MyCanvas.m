//
//  MyCanvas.m
//  DrawEllipse
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
    CGContextSetRGBFillColor(context, 0, 0, 1, 0.7);
    
    // 橢圓
    CGContextAddEllipseInRect(context, CGRectMake(40, 40, 200, 80));
    CGContextDrawPath(context, kCGPathFill);
    
    // 正圓
    CGContextAddEllipseInRect(context, CGRectMake(0, 200, 150, 150));
    CGContextDrawPath(context, kCGPathFill);

    // 還原繪圖區域狀態
    CGContextRestoreGState(context);
}

@end
