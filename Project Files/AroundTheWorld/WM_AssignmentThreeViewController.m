//
//  WM_AssignmentThreeViewController.m
//  AroundTheWorld
//
//  Created by Tyler Haugen-Stanley on 2013-08-18.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "WM_AssignmentThreeViewController.h"
#import "Globals.h"

@interface WM_AssignmentThreeViewController ()
@property (strong, nonatomic) IBOutlet UIButton *southAmericaButton;

@end

@implementation WM_AssignmentThreeViewController

- (void)viewWillAppear:(BOOL)animated
{
    if ([[[Globals sharedManager] gameSpace] levelThreeCheckpointCharlie]) {
        [[self southAmericaButton] setAlpha: 1.0];
        [[self southAmericaButton] setEnabled:YES];
    }
}

@end
