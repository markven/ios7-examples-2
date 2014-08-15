//
//  SampleDelegate.h
//  SampleDelegate
//
//  Created by Ckk on 13/7/23.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SampleClass;

@protocol SampleDelegate <NSObject>

@required
-(void) finish:(SampleClass *) sampleClass;

@end
