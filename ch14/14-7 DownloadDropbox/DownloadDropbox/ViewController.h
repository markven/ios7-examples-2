//
//  ViewController.h
//  DownloadDropbox
//
//  Created by KoKang Chu on 12/8/6.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DropboxSDK/DropboxSDK.h>

@interface ViewController : UIViewController <DBRestClientDelegate>
{
    DBRestClient *restClient;
}
@property (weak, nonatomic) IBOutlet UIProgressView *downloadProgress;
@property (weak, nonatomic) IBOutlet UIImageView *myImg;

- (DBRestClient *)restClient;
@end
