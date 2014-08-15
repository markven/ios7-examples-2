//
//  ViewController.m
//  InputData_AlertView
//
//  Created by KoKang Chu on 12/6/25.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:  // 使用者按下「取消」按鈕
            NSLog(@"使用者取消輸入");
            break;
        case 1:  // 使用者按下「登入」按鈕
        {
            UITextField *uidTextField = [alertView textFieldAtIndex:0];
            UITextField *pwdTextField = [alertView textFieldAtIndex:1];
            
            NSLog(@"輸入的帳號:%@, 密碼:%@", uidTextField.text, pwdTextField.text);
            break;
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 設定delegate參數為self，因為我們必須得到使用者輸入的資料
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"請輸入賬號密碼"
                              message:nil
                              delegate:self
                              cancelButtonTitle:@"取消"
                              otherButtonTitles:@"登入", nil
                              ];
    // 設定警告訊息框形態為「輸入帳號密碼」
    alertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alertView show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
