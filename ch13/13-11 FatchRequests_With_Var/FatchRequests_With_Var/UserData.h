//
//  UserData.h
//  FatchRequests_With_Var
//
//  Created by KoKang Chu on 12/6/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Car;

@interface UserData : NSManagedObject

@property (nonatomic, retain) NSString * iid;
@property (nonatomic, retain) NSString * cname;
@property (nonatomic, retain) NSSet *own;
@end

@interface UserData (CoreDataGeneratedAccessors)

- (void)addOwnObject:(Car *)value;
- (void)removeOwnObject:(Car *)value;
- (void)addOwn:(NSSet *)values;
- (void)removeOwn:(NSSet *)values;

@end
