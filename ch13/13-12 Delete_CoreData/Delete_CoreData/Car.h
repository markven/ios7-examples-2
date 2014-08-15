//
//  Car.h
//  Delete_CoreData
//
//  Created by KoKang Chu on 12/6/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class UserData;

@interface Car : NSManagedObject

@property (nonatomic, retain) NSString * plate;
@property (nonatomic, retain) UserData *belongto;

@end
