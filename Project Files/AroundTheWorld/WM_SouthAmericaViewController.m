//
//  WM_SouthAmericaViewController.m
//  AroundTheWorld
//
//  Created by Tyler Haugen-Stanley on 2013-08-17.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "WM_SouthAmericaViewController.h"
#import "Globals.h"

@interface WM_SouthAmericaViewController ()

@property (strong, nonatomic) IBOutlet UIButton *peruButton;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *brazilButton;

@property (strong, nonatomic) IBOutlet UIImageView *brazilFrame;
@property (strong, nonatomic) IBOutlet UIImageView *peruFrame;

@end

@implementation WM_SouthAmericaViewController
- (IBAction)backPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)peruPressed {
    [[[Globals sharedManager] gameSpace] setPeruClicked:YES];
}

- (IBAction)brazilOnePressed {
    [[[Globals sharedManager] gameSpace] setBrazilClicked:YES];
}

- (IBAction)brazilTwoPressed {
    [[[Globals sharedManager] gameSpace] setBrazilClicked:YES];
}

- (IBAction)brazilThreePressed {
    [[[Globals sharedManager] gameSpace] setBrazilClicked:YES];
}

- (IBAction)anywhereElsePressed {
    int numberOfWrongCountryChoices = [[[Globals sharedManager] gameSpace] countryClicksLevelThree];
    if (numberOfWrongCountryChoices == 2) {
        // user has too many wrong choices, reset the level
        [[[Globals sharedManager] gameSpace] setCountryClicksLevelThree:0];
        
        [[self navigationController] popToRootViewControllerAnimated:YES];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Whoops"
                                                        message:@"You chose the wrong country too many times. Perhaps you should read over the clues you found and see if you can figure out where to go next."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        [[[Globals sharedManager] gameSpace] setCountryClicksLevelThree:numberOfWrongCountryChoices + 1];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    if ([[[Globals sharedManager] gameSpace] levelThreeCheckpointCharlie]) {
        [[self peruButton] setEnabled:YES];
    }
    
    if ([[[Globals sharedManager] gameSpace] levelThreeCheckpointDelta]){
        for (int i = 0; i < [[self brazilButton]count]; i++) {
            [[[self brazilButton] objectAtIndex:i] setEnabled:YES];
        }
    }
    
    // If peru has been found without the aid of the frame, add the frame so if the user comes back they know they can go to peru
    if ([[[Globals sharedManager] gameSpace] peruClicked]){
        [[self peruFrame] setHidden:NO];
    }
    if ([[[Globals sharedManager] gameSpace] brazilClicked]){
        [[self brazilFrame] setHidden:NO];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

@end
