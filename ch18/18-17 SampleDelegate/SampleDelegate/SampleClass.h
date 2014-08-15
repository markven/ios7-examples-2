//
//  SampleClass.h
//  SampleDelegate
//
//  Created by Ckk on 13/7/23.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleDelegate.h"

@interface SampleClass : NSObject

@property (nonatomic, assign) id<SampleDelegate> delegate;

-(void)doSomething;

@end
