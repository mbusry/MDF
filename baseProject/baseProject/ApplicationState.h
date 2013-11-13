//
//  ApplicationState.h
//  baseProject
//
//  Created by Michael on 11/13/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApplicationState : NSObject
{
    NSInteger numberOfForks;
    NSString* bizName;
    NSInteger bizLong;
    NSInteger bizLat;
}

-(id)initWithName:(NSString*)biz lg:(NSInteger)lg lt:(NSInteger)lt ;


@property (nonatomic, assign) NSInteger numberOfForks;
@property (nonatomic, strong) NSString *bizName;
@property (nonatomic, assign) NSInteger bizLong;
@property (nonatomic, assign) NSInteger bizLat;

@end
