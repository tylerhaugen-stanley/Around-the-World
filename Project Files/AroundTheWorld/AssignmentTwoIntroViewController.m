//
//  A2IntroViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-31.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "AssignmentTwoIntroViewController.h"
#import "Globals.h"

@interface AssignmentTwoIntroViewController ()

@end

@implementation AssignmentTwoIntroViewController
- (IBAction)nextAssignmentPressed {
    [[[Globals sharedManager] gameSpace] setLevelOneCompleted:YES];
    // Assignment 1 is over, pop to the beginning of the stack of views popped
    [self.navigationController popToRootViewControllerAnimated:YES];

    
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
