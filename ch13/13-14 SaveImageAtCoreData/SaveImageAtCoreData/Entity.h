//
//  Entity.h
//  SaveImageAtCoreData
//
//  Created by Ckk on 13/7/16.
//  Copyright (c) 2013年 Ckk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Entity : NSManagedObject

@property (nonatomic, retain) id image;

@end
