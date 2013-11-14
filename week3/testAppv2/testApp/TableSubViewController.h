//
//  TableSubViewController.h
//  testApp
//
//  Created by Michael on 11/11/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"
#import <MapKit/MapKit.h>
#import "MyMapAnnotations.h"

@interface TableSubViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *bizNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *bizLatLabel;
@property (weak, nonatomic) IBOutlet UILabel *bizLongLabel;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (strong, nonatomic) NSString *bizName;
@property (nonatomic, assign) NSString *bizLong;
@property (nonatomic, assign) NSString *bizLat;


@end
