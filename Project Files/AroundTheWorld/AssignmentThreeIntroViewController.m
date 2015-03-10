//
//  AssignmentThreeIntroViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-08-05.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "AssignmentThreeIntroViewController.h"
#import "Globals.h"

@interface AssignmentThreeIntroViewController ()

@end

@implementation AssignmentThreeIntroViewController
- (IBAction)nextAssignmentPressed {
    // Level 2 is over, record that and go to the start of the assignments
    [[[Globals sharedManager] gameSpace] setLevelTwoCompleted:YES];
    [[self navigationController] popToRootViewControllerAnimated:YES];
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
