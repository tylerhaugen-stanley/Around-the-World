//
//  WM_AfricaViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-15.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "WM_AfricaViewController.h"
#import "Globals.h"

@interface WM_AfricaViewController ()
@property (strong, nonatomic) IBOutlet UIButton *algeriaButton;
@property (strong, nonatomic) IBOutlet UIButton *southAfricaButton;


@property (strong, nonatomic) IBOutlet UIImageView *southAfricaFrame;
//@property (strong, nonatomic) IBOutlet UIButton *southAfricaFrame;
@property (strong, nonatomic) IBOutlet UIImageView *algeriaFrame;
@end

@implementation WM_AfricaViewController
- (IBAction)backPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)algeriaButtonPressed {
    [[[Globals sharedManager] gameSpace] setAlgeriaClicked:YES];
}
- (IBAction)southAfricaButtonPressed {
    [[[Globals sharedManager] gameSpace] setSouthAfricaClicked:YES];
}
- (IBAction)anywhereElseClicked {
    int numberOfWrongCountryChoices = [[[Globals sharedManager] gameSpace] countryClicksLevelOne];
    if (numberOfWrongCountryChoices == 2) {
        // user has too many wrong choices, reset the level
        [[[Globals sharedManager] gameSpace] setCountryClicksLevelOne:0];

        [[self navigationController] popToRootViewControllerAnimated:YES];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Whoops"
                                                        message:@"You chose the wrong country too many times. Perhaps you should read over the clues you found and see if you can figure out where to go next."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        [[[Globals sharedManager] gameSpace] setCountryClicksLevelOne:numberOfWrongCountryChoices + 1];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    if ([[[Globals sharedManager] gameSpace] levelOneCheckpointAlpha]) {
        [[self southAfricaButton] setEnabled:YES];
        //[[self algeriaButton] setHidden:NO];
    }
    if ([[[Globals sharedManager] gameSpace] levelOneCheckpointBravo]) {
        [[self algeriaButton] setEnabled:YES];
    }
    
    if ([[[Globals sharedManager] gameSpace] southAfricaClicked]) {
        [[self southAfricaFrame] setHidden:NO];
    }
    if ([[[Globals sharedManager] gameSpace] algeriaClicked]) {
        [[self algeriaFrame] setHidden:NO];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
@end
