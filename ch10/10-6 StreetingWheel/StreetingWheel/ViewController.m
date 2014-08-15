//
//  ViewController.m
//  StreetingWheel
//
//  Created by KoKang Chu on 12/7/2.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(void)rotateStreetingWheel:(float)angle;
@end

@implementation ViewController

-(void)rotateStreetingWheel:(float)angle
{
    // 乘上90是讓方向盤轉動角度由-90度到+90度
    // 乘上-1是為了讓方向盤轉動方向跟iOS裝置轉動方向一致
    float radians = -1 * angle * 90.0 / 180.0 * M_PI;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        CGAffineTransform rotation = CGAffineTransformMakeRotation(radians);
        [layer setAffineTransform:rotation];
    });
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 載入方向盤圖片
    UIImage *image = [UIImage imageNamed:@"streeting.png"];
    layer = [CALayer layer];
    layer.frame = CGRectMake(150, 50, 200, 100);
    layer.contents = (id)image.CGImage;
    [self.view.layer addSublayer:layer];
    
    // 設定加速器
    mm = [[CMMotionManager alloc] init];
    // 每0.15秒更新一次資料
    mm.accelerometerUpdateInterval = 0.15;
    NSOperationQueue *q = [[NSOperationQueue alloc] init];
    [mm startAccelerometerUpdatesToQueue:q
                             withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
                                 // rotateStreetingWheel:為自己定義的方法
                                 // 因為畫面為landscape，所以取得y軸的變化就可以了
                                 [self rotateStreetingWheel:accelerometerData.acceleration.y];
                             }];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [mm stopAccelerometerUpdates];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
