//
//  MyAnnotation.h
//  DragAnnotation
//
//  Created by KoKang Chu on 12/6/21.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly, copy) NSString *title;

-(id)initWithLocation:(CLLocationCoordinate2D) coord;

@end
