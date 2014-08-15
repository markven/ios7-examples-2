//
//  MyAnnotation.m
//  PinColor
//
//  Created by KoKang Chu on 12/6/21.
//
//

#import "MyAnnotation.h"

@implementation MyAnnotation

@synthesize coordinate, pinColor;

-(id)initWithLocation:(CLLocationCoordinate2D)coord
{
    self = [super init];
    if (self) {
        coordinate = coord;
    }
    return self;
}
@end
