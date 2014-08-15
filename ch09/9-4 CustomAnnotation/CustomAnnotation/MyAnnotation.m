//
//  MyAnnotation.m
//  CustomAnnotation
//
//  Created by KoKang Chu on 12/6/20.
//
//

#import "MyAnnotation.h"

@implementation MyAnnotation

@synthesize coordinate, image;

-(id)initWithLocation:(CLLocationCoordinate2D)coord
{
    self = [super init];
    if (self) {
        coordinate = coord;
    }
    return self;
}
@end
