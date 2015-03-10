//
//  BrazilViewController.m
//  AroundTheWorld
//
//  Created by Tyler Haugen-Stanley on 2013-08-17.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "BrazilViewController.h"
#import "Globals.h"
#import "Clue.h"

@interface BrazilViewController ()

@end

@implementation BrazilViewController
- (IBAction)backButtonPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)slothPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Brazil"
                                             ImageName:@"sloth_cropped.png"
                                       ClueDescription:@"A three toed sloth, this animals hangs from the trees all day and is found throughout the amazon."
                                              ClueName:@"Sloth"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sloth"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sloth"
                                                        message:@"Sloth clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
    }
}
- (IBAction)spiderMonkeyPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Brazil"
                                             ImageName:@"spider_monkey_cropped.png"
                                       ClueDescription:@"A monkey whose native land is the amazon rainforest."
                                              ClueName:@"Spider Monkey"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Spider monkey"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Spider monkey"
                                                        message:@"Spider monkey clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
    }
}
- (IBAction)harvesterPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Brazil"
                                             ImageName:@"tree_harvester_cropped.png"
                                       ClueDescription:@"A machine used to harvest trees efficiently. It smells like it has a gas all over it"
                                              ClueName:@"Tree harvester"];
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tree harvester"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {        
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
