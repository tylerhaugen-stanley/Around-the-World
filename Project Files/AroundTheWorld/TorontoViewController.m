//
//  TorontoViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-08-01.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "TorontoViewController.h"
#import "Globals.h"
#import "Clue.h"

@interface TorontoViewController ()

@end

@implementation TorontoViewController
- (IBAction)backPressed {
    [[self navigationController] popViewControllerAnimated:YES];
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
- (IBAction)airplaneTicketClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Toronto" ImageName:@"airplane_ticket_cropped.png" ClueDescription:@"An airplane ticket stub left behind by someone. The origin of the flight has been crossed out but there is a picutre of 'rocky mountains' in the background" ClueName:@"airplane ticket"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Airplane ticket"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Airplane ticket"
                                                        message:@"Airplane ticket clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
        [[[Globals sharedManager] gameSpace] setLevelTwoCheckpointAlpha:YES];
    }
}
- (IBAction)protestSignsClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Toronto" ImageName:@"protest_signs_final_cropped.png" ClueDescription:@"Various signs used by people protesting something. The signs have faded from the heavy rain that hit last night." ClueName:@"protest signs"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Protest signs"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Protest signs"
                                                        message:@"Protest signs clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
    }
}


@end
