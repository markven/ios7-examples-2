//
//  MyCanvas.m
//  DrawArc
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
    CGContextSetLineWidth(context, 10);
    CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);

    // 半徑比較小的弧線
    CGContextAddArc(context, 200, 150, 50, 0, 90 * M_PI / 180, 0);
    // 半徑比較大的弧線
    CGContextAddArc(context, 200, 300, 100, 270 * M_PI / 180, 90 * M_PI / 180, 1);
    
    CGContextDrawPath(context, kCGPathStroke);
    
    
    // 還原繪圖區域狀態
    CGContextRestoreGState(context);
}

@end
