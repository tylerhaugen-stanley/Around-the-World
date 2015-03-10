//
//  TurkeyViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-03.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "SouthAfricaViewController.h"
#import "Clue.h"
#import "Globals.h"

@interface SouthAfricaViewController ()

@end

@implementation SouthAfricaViewController

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

- (IBAction)backPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)dynamiteClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"South Africa"
                                             ImageName:@"dynamite_cropped.png"
                                       ClueDescription:@"A stick of dynamite. Banshee must have dropped this after his meeting with the seller, he is not a very good criminal"
                                              ClueName:@"Dynamite"];
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue has already been found
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Dynamite"
                                                        message:@"This clue is already in your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Dynamite"
                                                        message:@"Dynamite clue added to your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
    }
}

- (IBAction)binocularsClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"South Africa"
                                             ImageName:@"binoculars_cropped.png"
                                       ClueDescription:@"The contact from the explosives company probably used these to scout the area before meeting Banshee"
                                              ClueName:@"Binoculars"];
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue has already been found
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Binoculars"
                                                        message:@"This clue is already in your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Binoculars"
                                                        message:@"Binoculars clue added to your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
    }
}
- (IBAction)comicBookClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"South Africa"
                                             ImageName:@"comic_book_cropped.png"
                                       ClueDescription:@"After closer examination this is no ordinary comic book, its actually not a comic book at all. This book is mostly damaged but it has tourist information about the 10th largest country in the world."
                                              ClueName:@"Comic book"];
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue has already been found
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Comic book"
                                                        message:@"This clue is already in your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Comic book"
                                                        message:@"Comic book added to your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
        [[[Globals sharedManager] gameSpace] setLevelOneCheckpointBravo:YES];
    }
}

@end
