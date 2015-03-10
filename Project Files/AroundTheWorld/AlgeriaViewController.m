//
//  AlgeriaViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-24.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "AlgeriaViewController.h"
#import "Clue.h"
#import "Globals.h"

@interface AlgeriaViewController ()
@property (strong, nonatomic) IBOutlet UIButton *back;

@end

@implementation AlgeriaViewController
- (IBAction)backPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)bombPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Algeria"
                                             ImageName:@"stack_of_dynamite_cropped.png"
                                       ClueDescription:@"The fully assembed bomb used in the attempt to blow up the oil pipeline"
                                              ClueName:@"bomb"];
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue already exists
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Bomb"
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
