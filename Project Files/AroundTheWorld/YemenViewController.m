//
//  YemenViewController.m
//  AroundTheWorld
//
//  Created by Tyler Haugen-Stanley on 2013-08-17.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "YemenViewController.h"
#import "Globals.h"
#import "Clue.h"

@interface YemenViewController ()

@end

@implementation YemenViewController
- (IBAction)backButtonPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)cigarPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Yemen"
                                             ImageName:@"cigar_butt_cropped.png"
                                       ClueDescription:@"A cigar left behind by one of the people involved in the group meeting. There is a logo advertising the tallest building in the world."
                                              ClueName:@"Cigar butt"];
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue has already been found
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Cigar butt"
                                                        message:@"This clue is already in your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Cigar butt"
                                                        message:@"Cigar butt clue added to your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
        // Let the user access the U.A.E. level map part now
        [[[Globals sharedManager] gameSpace] setLevelThreeCheckpointAlpha:YES];
    }
}
- (IBAction)beerBottlesPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Yemen" ImageName:@"beer_bottles_cartoon_cropped.png" ClueDescription:@"Beer bottles left behind by the people who met for the meeting. After a basic lab analysis some fingerprints were lifted but there were no matches for anyone in the database." ClueName:@"Beer bottles"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue has already been found
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Beer bottles"
                                                        message:@"This clue is already in your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Beer bottles"
                                                        message:@"Beer bottles clue added to your journal"
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
