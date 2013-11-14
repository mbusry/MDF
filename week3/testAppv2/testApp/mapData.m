//
//  mapData.m
//  testApp
//
//  Created by Michael on 11/13/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import "mapData.h"

@implementation mapData

@synthesize bizLatitude, bizLongitude, bizNames;

static mapData* _sharedMapData = nil;

+(mapData*)sharedMapData
{
    @synchronized([mapData class])
    {
        if (!_sharedMapData) {
            _sharedMapData = [[self alloc]init];
        }
        return _sharedMapData;
    }
    return nil;
}

+(id)alloc
{
    @synchronized([mapData class])
    {
        NSAssert(_sharedMapData == nil, @"Second Instance is a no no");
        _sharedMapData = [super alloc];
        return _sharedMapData;
    }
    return nil;

}

-(id)initWithName:(NSString *)biz lg:(NSString *)lg lt:(NSString *)lt
{
    if (self = [super init]) {
        // create info xxx = [xx copy];
        bizNames = [biz copy];
        bizLongitude = [lg copy];
        bizLatitude = [lt copy];
        
    }
    return self;
}

/*
// data below*********************
- (void)viewDidLoad
{
//    [super viewDidLoad];
    
    bizNamesArray = [[NSMutableArray alloc]initWithObjects:
                     @"Daytona Beach Boardwalk",
                     @"Congo River Walk",
                     @"Daytona Speedway",
                     @"Halifax Hospital",
                     @"Indian River Village Shopping Center",
                     @"New Smyrna Church of God",
                     @"Cameron's Marina",
                     @"Cape Canaveral Hospital",
                     @"Cocoa Beach",
                     @"Space View Park", nil];
    
    
    bizLatitudeArray = [[NSMutableArray alloc]initWithObjects:
                   @"29.228699300000000000",
                   @"27.664827400000000000",
                   @"29.1648197",
                   @"29.20137",
                   @"27.8381447",
                   @"29.008245",
                   @"27.6648274",
                   @"28.3611111",
                   @"28.320006700000000000",
                   @"28.6139145", nil];
    
    bizLongitudeArray = [[NSMutableArray alloc]initWithObjects:
                    @"-81.007713400000000000",
                    @"-81.515753500000020000",
                    @"-81.08683480000002",
                    @"-81.053945",
                    @"-80.48543769999998",
                    @"-80.94952899999998",
                    @"-81.51575350000002",
                    @"-80.62222220000001",
                    @"-80.607551300000010000",
                    @"-80.80576830000001", nil];
    
    
}
 */
@end
