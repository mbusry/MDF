//
//  TableSubViewController.m
//  testApp
//
//  Created by Michael on 11/11/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import "TableSubViewController.h"
#import <MapKit/MapKit.h>

@interface TableSubViewController ()

@end

@implementation TableSubViewController

@synthesize bizLatLabel;
@synthesize bizLongLabel;
@synthesize bizNameLabel;
@synthesize bizName;
@synthesize bizLong;
@synthesize bizLat;
@synthesize mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    NSLog(@"\n*****Enter viewDidLoad\nbizName:%@\nBizlat:%.18f\nBizlong:%.18f\n",bizName,[bizLat doubleValue],[bizLong doubleValue]);
    MKCoordinateSpan span;
    span.latitudeDelta = .25f;
    span.longitudeDelta = .25f;
    
    NSLog(@"\nspan:lat %f\nspan:long %f",span.latitudeDelta,span.longitudeDelta);
    
    CLLocationCoordinate2D location;
    location.latitude = [bizLat doubleValue];
    location.longitude = [bizLong doubleValue];
    NSLog(@"\nlocation:lat %f\nlocation:long %f",location.latitude,location.longitude);

    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
    CLLocationCoordinate2D mapLocation;
    mapLocation.latitude = [bizLat floatValue];
    mapLocation.longitude = [bizLong floatValue];
    
    MyMapAnnotations *annotation = [[MyMapAnnotations alloc]initWithTitle:bizName coord:mapLocation];
    
    
    if (annotation != nil)
    {
        [mapView addAnnotation:annotation];
        
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"\nEnd of viewdidload\nbizName:%@\nbizLong:%@\nbizLat:%@",bizName,bizLong,bizLat);
    bizNameLabel.text = bizName;
    bizLatLabel.text = bizLat;
    bizLongLabel.text = bizLong;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
