//
//  PeruViewController.m
//  AroundTheWorld
//
//  Created by Tyler Haugen-Stanley on 2013-08-17.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "PeruViewController.h"
#import "Globals.h"
#import "Clue.h"

@interface PeruViewController ()

@end

@implementation PeruViewController
- (IBAction)backButtonPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}

- (IBAction)airboatPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Peru" ImageName:@"airboat_cropped.png" ClueDescription:@"An airboat used to travel across water, I wonder where it is headed." ClueName:@"Airboat"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Airboat"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Airboat"
                                                        message:@"Airboat clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
        [[Globals sharedManager] addClue:clue];
    }
    
}
- (IBAction)dolphinPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Peru" ImageName:@"pink_dolphin_cropped.png" ClueDescription:@"A pink dolphin, more information about animals..." ClueName:@"Pink dolphin"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Dolphin"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Dolphin"
                                                        message:@"Dolphin clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
        // Let the user access brazil now
        [[[Globals sharedManager] gameSpace] setLevelThreeCheckpointDelta:YES];
    }
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
