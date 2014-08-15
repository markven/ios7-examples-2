//
//  Car.h
//  FatchRequests_With_Var
//
//  Created by KoKang Chu on 12/6/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Car : NSManagedObject

@property (nonatomic, retain) NSString * plate;
@property (nonatomic, retain) NSManagedObject *belongto;

@end
