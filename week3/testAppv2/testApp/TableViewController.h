//
//  TableViewController.h
//  testApp
//
//  Created by Michael on 11/11/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableSubViewController.h"
#import <MapKit/MapKit.h>

@interface TableViewController : UITableViewController

{
    NSMutableArray *bizNamesArray;
    NSMutableArray *bizLongArray;
    NSMutableArray *bizLatArray;
    NSString *bizData;
    NSMutableArray *dataArray;

}

@property NSMutableArray *bizNamesArray;
@property NSMutableArray *dataArray;

@end
