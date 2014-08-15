//
//  MyCanvas.m
//  Font
//
//  Created by KoKang Chu on 12/8/17.
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
    // 設定字型、字體大小與編碼方式
    CGContextSelectFont(context, "Courier", 30.0f, kCGEncodingMacRoman);
    // 設定每個字之間的寬度
    CGContextSetCharacterSpacing(context, 10);
    // 設定邊線顏色
    CGContextSetRGBStrokeColor(context, 1, 0, 0, 1);
    // 設定文字的顯示方式，kCGTextStroke為空心字
    CGContextSetTextDrawingMode(context, kCGTextStroke);
    // 設定文字的旋轉角度為四分之一PI弧度
    CGContextSetTextMatrix(context, CGAffineTransformMakeRotation(M_PI_4));
    // 在(50, 180)的位置顯示文字
    CGContextShowTextAtPoint(context, 50, 180, "Quartz 2D", 9);
    
    // 還原繪圖區域狀態
    CGContextRestoreGState(context);
}

@end
