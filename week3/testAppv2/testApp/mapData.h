//
//  mapData.h
//  testApp
//
//  Created by Michael on 11/13/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface mapData : NSObject
{
    NSString *bizNames;
    NSString *bizLongitude;
    NSString *bizLatitude;
    
}
@property NSString *bizNames;
@property NSString *bizLongitude;
@property NSString *bizLatitude;

+(mapData*)sharedMapData;

-(id)initWithName:(NSString *)biz lg:(NSString*)lg lt:(NSString*)lt;

@end
