//
//  WM_MiddleEastViewController.m
//  AroundTheWorld
//
//  Created by Tyler Haugen-Stanley on 2013-08-17.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "WM_MiddleEastViewController.h"
#import "Globals.h"

@interface WM_MiddleEastViewController ()
@property (strong, nonatomic) IBOutlet UIButton *uAEButton;
@property (strong, nonatomic) IBOutlet UIButton *turkeyButton;

@property (strong, nonatomic) IBOutlet UIImageView *yemenFrame;
@property (strong, nonatomic) IBOutlet UIImageView *uAEFrame;
@property (strong, nonatomic) IBOutlet UIImageView *turkeyFrame;
@end

@implementation WM_MiddleEastViewController
- (IBAction)backButtonPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}

- (IBAction)yemenButtonPressed {
    [[[Globals sharedManager] gameSpace] setYemenClicked:YES];
}
- (IBAction)uAEButtonPressed {
    [[[Globals sharedManager] gameSpace] setUAEClicked:YES];
}
- (IBAction)turkeyButtonPressed {
    [[[Globals sharedManager] gameSpace] setTurkeyClicked:YES];
}

- (IBAction)anywhereElsePressed {
    int numberOfWrongCountryChoices = [[[Globals sharedManager] gameSpace] countryClicksLevelThree];
    if (numberOfWrongCountryChoices == 2) {
        // user has too many wrong choices, reset the level
        [[[Globals sharedManager] gameSpace] setCountryClicksLevelThree:0];
        
        [[self navigationController] popToRootViewControllerAnimated:YES];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Whoops"
                                                        message:@"You chose the wrong country too many times. Perhaps you should read over the clues you found and see if you can figure out where to go next."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        [[[Globals sharedManager] gameSpace] setCountryClicksLevelThree:numberOfWrongCountryChoices + 1];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    if ([[[Globals sharedManager] gameSpace] yemenClicked]) {
        [[self yemenFrame] setHidden:NO];
    }
    if ([[[Globals sharedManager] gameSpace] uAEClicked]) {
        [[self uAEFrame] setHidden:NO];
    }
    if ([[[Globals sharedManager] gameSpace] turkeyClicked]) {
        [[self turkeyFrame] setHidden:NO];
    }
    
    if ([[[Globals sharedManager] gameSpace] levelThreeCheckpointAlpha]) {
        [[self uAEButton] setEnabled:YES];
    }
    if ([[[Globals sharedManager] gameSpace] levelThreeCheckpointBravo]) {
        [[self turkeyButton] setEnabled:YES];
    }
    
//    if ([[[Globals sharedManager] gameSpace] levelOneCheckpointBravo]) {
//        [[self algeriaButton] setEnabled:YES];
//    }
//    
//    if ([[[Globals sharedManager] gameSpace] southAfricaClicked]) {
//        [[self southAfricaFrame] setHidden:NO];
//    }
//    if ([[[Globals sharedManager] gameSpace] algeriaClicked]) {
//        [[self algeriaFrame] setHidden:NO];
//    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

@end
