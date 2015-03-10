//
//  AssignmentsViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-16.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "AssignmentsViewController.h"
#import "Globals.h"

@interface AssignmentsViewController ()
@property (strong, nonatomic) IBOutlet UIButton *assignmentOne;
@property (strong, nonatomic) IBOutlet UIButton *assignmentTwo;
@property (strong, nonatomic) IBOutlet UIButton *assignmentThree;
@property (strong, nonatomic) IBOutlet UIButton *assignmentFour;



@end

@implementation AssignmentsViewController
- (IBAction)AssignmentOneSelected {
    [[Globals sharedManager] setCurrentAssignment:1];
}
- (IBAction)assignmentTwoSelected {
    [[Globals sharedManager] setCurrentAssignment:2];
}
- (IBAction)assignmentThreeSelected {
    [[Globals sharedManager] setCurrentAssignment:3];
}
- (IBAction)assignmentFourSelected {
    [[Globals sharedManager] setCurrentAssignment:4];
}

- (void)viewWillAppear:(BOOL)animated {
    
    if ([[[Globals sharedManager] gameSpace] levelOneCompleted]){
        // set level 2 button to enabled and set alpha to 1
        [[self assignmentTwo] setAlpha:1.0];
        [[self assignmentTwo] setEnabled:YES];
    }
    if ([[[Globals sharedManager] gameSpace] levelTwoCompleted]){
        // set level 3 button to enabled and set alpha to 1
        [[self assignmentThree] setAlpha:1.0];
        [[self assignmentThree] setEnabled:YES];
    }
    if ([[[Globals sharedManager] gameSpace] levelThreeCompleted]){
        // set level 4 button to enabled and set alpha to 1
        [[self assignmentFour] setAlpha:1.0];
        [[self assignmentFour] setEnabled:YES];
    }
}
@end
