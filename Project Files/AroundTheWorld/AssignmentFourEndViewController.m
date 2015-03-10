//
//  AssignmentFourEndViewController.m
//  AroundTheWorld
//
//  Created by Tyler Haugen-Stanley on 2013-08-19.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "AssignmentFourEndViewController.h"

@interface AssignmentFourEndViewController ()

@end

@implementation AssignmentFourEndViewController

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
