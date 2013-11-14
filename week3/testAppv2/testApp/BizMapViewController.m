//
//  BizMapViewController.m
//  testApp
//
//  Created by Michael on 11/11/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import "BizMapViewController.h"
#import <MapKit/MapKit.h>
#import "ViewController.h"
#import "TableViewController.h"

@interface BizMapViewController ()

@end

@implementation BizMapViewController

@synthesize mapView, bizNamesArray;

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
    
//    NSLog(@"\nbizMapVC:%i",[[TableViewController bizNamesArray]  count]);
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setMapView:nil];
    [super viewDidUnload];
}
@end
