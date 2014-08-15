//
//  MyOperation.h
//  Thread_NSOperation
//
//  Created by KoKang Chu on 12/8/25.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyOperation : NSOperation
{
    int beginValue;
}

-(id)initWithValue:(int)initValue;
-(void)doSomething;
@end
