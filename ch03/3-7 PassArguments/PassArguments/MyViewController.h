//
//  MyViewController.h
//  PassArguments
//
//  Created by KoKang Chu on 12/6/23.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController
{
    NSString *user_input_data;
}
@property (weak, nonatomic) IBOutlet UILabel *label;

-(void) passData:(NSString *)argu;
@end
