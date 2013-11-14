//
//  MyMapAnnotations.m
//  testApp
//
//  Created by Michael on 11/12/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import "MyMapAnnotations.h"

@implementation MyMapAnnotations

@synthesize title;
@synthesize coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if ((self = [super init]))
    {
        title = text;
        coordinate = coord;
    }
    return self;
}

@end
