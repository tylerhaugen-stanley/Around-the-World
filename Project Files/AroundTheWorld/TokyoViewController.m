//
//  TokyoViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-06-19.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "TokyoViewController.h"

@interface TokyoViewController ()
@property (strong, nonatomic) IBOutlet UIButton *binoculars;
@property (strong, nonatomic) IBOutlet UIButton *satPhone;

@end

@implementation TokyoViewController

- (IBAction)binocularsClicked {
    //NSLog(@"Binoculars clicked");
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Binoculars"
                                                    message:@"The thief must have used these to survey the area before commiting the crime"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    //alert release];
}
- (IBAction)satPhoneClicked {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Satallite phone"
                                                    message:@"The thief dropped this while fleeing the scene in a hurry."
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
