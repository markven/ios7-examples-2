//
//  MyAnnotation.h
//  CustomAnnotation
//
//  Created by KoKang Chu on 12/6/20.
//
//

#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject <MKAnnotation>
// 可根據MKAnnotation的規範，直接複製過來
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
// 加一個圖片屬性
@property (nonatomic) UIImage *image;

-(id) initWithLocation:(CLLocationCoordinate2D) coord;
@end
