//
//  MyAnnotation.m
//  DragAnnotation
//
//  Created by KoKang Chu on 12/6/21.
//  Copyright (c) 2012年 KoKang Chu. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

@synthesize coordinate, title;

-(id)initWithLocation:(CLLocationCoordinate2D)coord
{
    self = [super init];
    if (self) {
        coordinate = coord;
    }
    return self;
}

-(void)setCoordinate:(CLLocationCoordinate2D)newCoordinate
{
    coordinate = newCoordinate;
    title = [NSString stringWithFormat:@"%f, %f", newCoordinate.latitude, newCoordinate.longitude];
}

@end
