//
//  MyOperation.m
//  Thread_NSOperation
//
//  Created by KoKang Chu on 12/8/25.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "MyOperation.h"

@implementation MyOperation
-(id)initWithValue:(int)initValue
{
    self = [super init];
    if (self != nil) {
        beginValue = initValue;
    }
    
    return self;
}

-(void)doSomething
{
    for (int i = beginValue; i < 10; i += 2) {
        NSLog(@"%d", i);
    }
}

-(void)start
{
    [self doSomething];
}

@end
