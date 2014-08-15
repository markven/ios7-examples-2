//
//  MyAnnotation.h
//  PinColor
//
//  Created by KoKang Chu on 12/6/21.
//
//

#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject <MKAnnotation>
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic) MKPinAnnotationColor pinColor;

-(id)initWithLocation:(CLLocationCoordinate2D)coord;

@end
