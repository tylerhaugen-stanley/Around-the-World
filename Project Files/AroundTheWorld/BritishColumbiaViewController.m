//
//  BritishColumbiaViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-08-01.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "BritishColumbiaViewController.h"
#import "Globals.h"
#import "Clue.h"

@interface BritishColumbiaViewController ()

@end

@implementation BritishColumbiaViewController
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

- (IBAction)tentClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"British Columbia"
                                            ImageName:@"cartoon_tent_cropped.png"
                                       ClueDescription:@"This appears to be the tent the suspect was sleeping in. He must be around here somewhere."
                                              ClueName:@"Tent"];
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tent"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tent"
                                                        message:@"Tent clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
    }
}


- (IBAction)spikesClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"British Columbia" ImageName:@"tree_spike_final_cropped.png" ClueDescription:@"Tree spikes that **** used to stop loggers from clear cutting the trees. These spikes will cause chainsaws to break if the tree is cut down." ClueName:@"spikes"];
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tree spikes"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
//    } else {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tree spikes"
//                                                        message:@"Tree spikes clue added to your journal."
//                                                       delegate:nil
//                                              cancelButtonTitle:@"OK"
//                                              otherButtonTitles:nil];
//        [alert show];
//        [[Globals sharedManager] addClue:clue];
//    }
}
- (IBAction)soda_clicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"British Columbia" ImageName:@"soda_can_cropped.png" ClueDescription:@"A soda can most likely left here by workers who cut down these trees. They have no respect for the environment." ClueName:@"soda can"];
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Soda can"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Soda can"
                                                        message:@"Soda can clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
    }
}

@end
