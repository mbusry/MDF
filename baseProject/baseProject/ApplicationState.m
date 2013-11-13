//
//  ApplicationState.m
//  baseProject
//
//  Created by Michael on 11/13/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//
//BASE CODE FOR EVERY SINGLETON

#import "ApplicationState.h"

@implementation ApplicationState

@synthesize numberOfForks;
@synthesize bizLat, bizLong, bizName;

static ApplicationState* _sharedApplicationState = nil;

+(ApplicationState*)sharedApplicationState
{
    @synchronized([ApplicationState class])
    {
        if (!_sharedApplicationState)
        {
            // if I don't exist I make myself
            _sharedApplicationState = [[self alloc]init];
        }
    
            return _sharedApplicationState;
    }
        return nil;
}

// memory allocation
+(id)alloc
{

    @synchronized([ApplicationState class])
    {
        NSAssert(_sharedApplicationState == nil, @"Second Instance is a no no");
        _sharedApplicationState = [super alloc];
        return _sharedApplicationState;
    }
    return nil;
    
}

// sets the variables/objects for the singleton
//-(id)init
-(id)initWithName:(NSString *)biz lg:(NSInteger)lg lt:(NSInteger)lt
{
if (self = [super init])
    {
        // any variables the singleton needs to hold goes here, in the header file, with an @property, synthesized here and set the default value.
//        numberOfForks = 0;
        bizName = [biz copy];
        bizLong = [lg copy];
        bizLat = [lt copy];
        
    }
    return self;
}

@end
