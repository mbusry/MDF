//
//  MyMapAnnotations.h
//  testApp
//
//  Created by Michael on 11/12/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyMapAnnotations : NSObject <MKAnnotation>

{
    NSString *title;
    CLLocationCoordinate2D coordinate;
}

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord;

@property (nonatomic, copy) NSString *title;
// being readonly it cannot coordinate cannot beset outside of this class.
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
