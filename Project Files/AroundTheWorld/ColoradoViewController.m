//
//  ColoradoViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-08-05.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "ColoradoViewController.h"
#import "Globals.h"
#import "Clue.h"

@interface ColoradoViewController ()
@property (strong, nonatomic) IBOutlet UIButton *man;
@property (strong, nonatomic) IBOutlet UIButton *originalCar;
@property (strong, nonatomic) IBOutlet UIImageView *carSmoking;
@property (strong, nonatomic) IBOutlet UIImageView *carGone;
@property (strong, nonatomic) UIImage *image;
@end

@implementation ColoradoViewController
- (IBAction)backPressed {
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)carClicked {
    [[self man] setHidden:NO];
    [[self originalCar] setHidden:YES];
//    [[self carSmoking] setHidden:NO];
//      
//    double delayInSeconds = 2.0;
//    for (int i = 0; i < 1000; i++){
////        [[self carSmoking] frame] = (CGRect)
//    }
//    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//        [[self originalCar] setHidden:YES];
//        [[self carSmoking] setHidden:NO];
//    });
    
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Colorado"
                                             ImageName:@"cartoon_car_cropped.png"
                                       ClueDescription:@"The car peeled away when as you approached. I wonder if any witnesses saw what happened before you showed up."
                                              ClueName:@"car"];
    
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue already exists
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Mysterious car"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Mysterious car"
                                                        message:@"mysterious car clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
    }
    
}
- (IBAction)manClicked {
    Clue *clue = [[Clue alloc] initWithCountryOfOrigin:@"Colorado"
                                             ImageName:@"man.png"
                                       ClueDescription:@"A witness who saw the car peel away told you he saw the guy buying camping supplies, and some sharp metal pieces. He also mentioned that the guy was asking about tourism books on Canada."
                                              ClueName:@"man"];
    if ([[Globals sharedManager] clueInJournal:clue]) { // Clue already exists
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Witness"
                                                        message:@"This clue is already in your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Witness"
                                                        message:@"Witness clue added to your journal."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[Globals sharedManager] addClue:clue];
        // Let the user access the british columbia level now.
        [[[Globals sharedManager] gameSpace] setLevelTwoCheckpointBravo:YES];
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
