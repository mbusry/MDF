//
//  BizMapViewController.h
//  testApp
//
//  Created by Michael on 11/11/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "TableViewController.h"

@interface BizMapViewController : UIViewController
{
    NSMutableArray *bizNamesArray;
}
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property NSMutableArray *bizNamesArray;


@end
