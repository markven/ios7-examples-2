//
//  SampleClass.m
//  SampleDelegate
//
//  Created by Ckk on 13/7/23.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import "SampleClass.h"

@implementation SampleClass

-(void)doSomething
{
    if ([self.delegate respondsToSelector:@selector(finish:)]) {
        [self.delegate finish:self];
    }
}

@end
