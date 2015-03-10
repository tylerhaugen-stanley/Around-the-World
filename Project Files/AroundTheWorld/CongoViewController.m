//
//  EthiopiaViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-02.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "CongoViewController.h"
#import "Globals.h"
#import "Clue.h"

@interface CongoViewController ()

//@property (strong, nonatomic) IBOutlet UIButton *spoolOfYarn;
//@property (strong, nonatomic) IBOutlet UIButton *businessCard;
//@property (strong, nonatomic) IBOutlet UIButton *waterBottle;
@property (strong, nonatomic) IBOutlet UIButton *back;

@end

@implementation CongoViewController

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


- (IBAction)businessCardClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Democratic Republic of the Congo"
                                             ImageName:@"business_card_cropped.png"
                                       ClueDescription:@"After some examination under a black light, the cat picture seems to be a decoy and the card reads 'Explosives and such - South Africa'. Maybe Banshee is headed to South Africa for more supplies."
                                              ClueName:@"Business Card"];

    
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue already exists
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Business card"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Business card"
                                                        message:@"Business card clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
        [[[Globals sharedManager] gameSpace] setLevelOneCheckpointAlpha:YES];
    }
}
- (IBAction)spoolOfYarnClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Democratic Republic of the Congo"
                                             ImageName:@"spool_of_yarn_cropped.png"
                                       ClueDescription:@"Cotten yarn like this is used to create fuses for dynamite. Banshee is very foolish to accidentaly forget this"
                                              ClueName:@"Spool of Yarn"];
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Spool of yarn"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Spool of yarn"
                                                        message:@"Spool of yarn clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
        [[Globals sharedManager] addClue:clue];
    }
}

- (IBAction)waterBottleClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Democratic Republic of the Congo"
                                             ImageName:@"water_bottle_cropped.png"
                                       ClueDescription:@"A meaningless water bottle"
                                              ClueName:@"Water bottle"];
    if ([[Globals sharedManager] clueInJournal:clue]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Water bottle"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Water bottle"
                                                        message:@"Water bottle clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
        [[Globals sharedManager] addClue:clue];
    }
}

@end
