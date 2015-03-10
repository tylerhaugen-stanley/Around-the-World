//
//  AssignmentTwoEndViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-08-05.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "AssignmentTwoEndViewController.h"

@interface AssignmentTwoEndViewController ()

@end

@implementation AssignmentTwoEndViewController

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
