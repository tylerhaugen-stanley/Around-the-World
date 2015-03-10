//
//  AssignmentOneEndViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-24.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "AssignmentOneEndViewController.h"
#import "Globals.h"

@interface AssignmentOneEndViewController ()

@end

@implementation AssignmentOneEndViewController
- (IBAction)continueClicked {
    [[[Globals sharedManager] gameSpace] setLevelOneCompleted:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

@end
