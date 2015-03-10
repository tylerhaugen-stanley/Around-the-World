//
//  WM_NorthAmericaViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-08-01.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "WM_NorthAmericaViewController.h"
#import "Globals.h"
#define fontSize 20

@interface WM_NorthAmericaViewController ()
@property (strong, nonatomic) IBOutlet UIButton *britishColumbiaButton;
@property (strong, nonatomic) IBOutlet UIButton *ColoradoButton;

@property (strong, nonatomic) IBOutlet UIImageView *coloradoFrame;
@property (strong, nonatomic) IBOutlet UIImageView *britishColumbiaFrame;
@end

@implementation WM_NorthAmericaViewController
- (IBAction)backPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)coloradoPressed {
    [[[Globals sharedManager] gameSpace] setColoradoClicked:YES];
}
- (IBAction)britishColumbiaPressed {
    [[[Globals sharedManager] gameSpace] setBritishColumbiaClicked:YES];
}
- (IBAction)anywhereElsePressed {
    int numberOfWrongCountryChoices = [[[Globals sharedManager] gameSpace] countryClicksLevelTwo];
    if (numberOfWrongCountryChoices == 2) {
        // user has too many wrong choices, reset the level
        [[[Globals sharedManager] gameSpace] setCountryClicksLevelTwo:0];
        
        [[self navigationController] popToRootViewControllerAnimated:YES];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Whoops"
                                                        message:@"You chose the wrong country too many times. Perhaps you should read over the clues you found and see if you can figure out where to go next."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        [[[Globals sharedManager] gameSpace] setCountryClicksLevelTwo:numberOfWrongCountryChoices + 1];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    if ([[[Globals sharedManager] gameSpace] levelTwoCheckpointAlpha]) {
        [[self ColoradoButton] setEnabled:YES];
    }
    if ([[[Globals sharedManager] gameSpace] levelTwoCheckpointBravo]) {
        [[self britishColumbiaButton] setEnabled:YES];
    }
    
    if ([[[Globals sharedManager] gameSpace] coloradoClicked]){
        [[self coloradoFrame] setHidden:NO];
        [[[self ColoradoButton] titleLabel] setFont:[UIFont fontWithName:@"Arial-BoldMT" size:fontSize]];
//        [[[self ColoradoButton] titleLabel] setFont:[UIFont systemFontOfSize:fontSize]];
    }
    if ([[[Globals sharedManager] gameSpace] britishColumbiaClicked]){
        [[self britishColumbiaFrame] setHidden:NO];
        [[[self britishColumbiaButton] titleLabel] setFont:[UIFont fontWithName:@"Arial-BoldMT" size:fontSize]];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

@end
