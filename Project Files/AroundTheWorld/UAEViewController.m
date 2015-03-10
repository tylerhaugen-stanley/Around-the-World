//
//  UAEViewController.m
//  AroundTheWorld
//
//  Created by Tyler Haugen-Stanley on 2013-08-17.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "UAEViewController.h"
#import "Globals.h"
#import "Clue.h"

@interface UAEViewController ()

@end

@implementation UAEViewController
- (IBAction)backButtonPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)securityCameraPressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"United Arab Emirates"
                                             ImageName:@"security_camera_cropped.png"
                                       ClueDescription:@"Security footage shows three men looking over a map of what appears to be South America. The mic only picks up a few words… '... will go … with enough gasoline to … which will … from destroying … animals habitats'."
                                              ClueName:@"Security camera"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue has already been found
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Security camera"
                                                        message:@"This clue is already in your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Security camera"
                                                        message:@"Security camera clue added to your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
    }
}
- (IBAction)squirrelImagePressed {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"United Arab Emirates"
                                             ImageName:@"taurus_ground_squirrel.jpg"
                                       ClueDescription:@"A picture of what appears to be a Taurus ground squirrel with the phrase 'How to find cousin' written on the back. Maybe this meeting had something to do with animals?"
                                              ClueName:@"squirrel"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue has already been found
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Squirrel picture"
                                                        message:@"This clue is already in your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Squirrel picture"
                                                        message:@"Squirrel picture clue added to your journal"
                                                       delegate:nil
                                              cancelButtonTitle:@"ok"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
        // let the user access Turkey now
        [[[Globals sharedManager] gameSpace] setLevelThreeCheckpointBravo:YES];
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
