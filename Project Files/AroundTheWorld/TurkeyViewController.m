//
//  TurkeyViewController.m
//  AroundTheWorld
//
//  Created by Tyler Haugen-Stanley on 2013-08-17.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "TurkeyViewController.h"
#import "Globals.h"
#import "Clue.h"

@interface TurkeyViewController ()

@end

@implementation TurkeyViewController
- (IBAction)backPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)bookPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Turkey"
                                             ImageName:@"book_cropped.png"
                                       ClueDescription:@"A book about the historical wonders of the world. A page is folded and its about about Machu Picchu."
                                              ClueName:@"Historial book"];
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue has already been found
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Historical book"
                                                        message:@"This clue is already in your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Historical Book"
                                                        message:@"Historical book clue added to your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
        // Let the user access Peru now
        [[[Globals sharedManager] gameSpace] setLevelThreeCheckpointCharlie:YES];
    }
}
- (IBAction)buildingToolsPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Turkey"
                                              ImageName:@"building_tools_cropped.png"
                                        ClueDescription:@"These tools must be used to restore this area, there doesn't seem to any relation to the case."
                                               ClueName:@"Building tools"];
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue has already been found
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"building tools"
                                                        message:@"This clue is already in your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Building tools"
                                                        message:@"Building tools clue added to your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
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
