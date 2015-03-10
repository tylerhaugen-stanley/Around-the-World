//
//  AssignmentThreeEndViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-08-06.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "AssignmentThreeEndViewController.h"

@interface AssignmentThreeEndViewController ()

@end

@implementation AssignmentThreeEndViewController

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
