//
//  MyCanvas.m
//  DrawImage
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
    // 將UIImage載入的jpg圖檔轉成CGImageReg格式
    CGImageRef image = [UIImage imageNamed:@"sample.jpg"].CGImage;
    // 在座標(30, 30)以及長240, 高180的矩形區域內顯示圖片
    CGContextDrawImage(context, CGRectMake(30, 30, 240, 180), image);
    
    // 設定原始圖片的子區域範圍 (550, 150)由圖片的左上角開始計算
    CGRect subRect = CGRectMake(550, 150, 240, 180);
    // 取得原始圖片的區域部分
    CGImageRef subImage = CGImageCreateWithImageInRect(image, subRect);
    // 在(30, 250)的位置顯示子圖片
    CGContextDrawImage(context, CGRectMake(30, 250, 240, 180), subImage);
    
    // 還原繪圖區域狀態
    CGContextRestoreGState(context);
}

@end
