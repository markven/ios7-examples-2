//
//  ViewController.h
//  Delete_Move_Annotation
//
//  Created by KoKang Chu on 12/6/21.
//
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController
{
    MKPointAnnotation *point;
}
@property (weak, nonatomic) IBOutlet MKMapView *myMap;

@end
