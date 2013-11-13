//
//  ViewController.m
//  baseProject
//
//  Created by Michael on 11/13/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import "ViewController.h"
#import "ApplicationState.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // get the instance
    ApplicationState *appState = [ApplicationState sharedApplicationState];
    if (appState != nil)
    {
        //set the data:
        appState.numberOfForks = 9;
    }
    
    {
        //set the data ie.
        NSLog(@"forks: %d",appState.numberOfForks);
    }

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
