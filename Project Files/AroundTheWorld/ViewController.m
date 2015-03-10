//
//  ViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-05-30.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UIButton *acceptUserName;
@property (strong, nonatomic) IBOutlet UILabel *statusUpdate;

@property (strong, nonatomic) IBOutlet UIButton *imageButton;

@property (strong, nonatomic) IBOutlet UIImageView *headerImage;

@property (strong, nonatomic) NSString *userName;

@end

@implementation ViewController

- (IBAction) headerPressed:(UIButton *)sender {
    NSLog(@"Image pressed");
}

- (IBAction) acceptName:(UIButton *)sender {
    [[self userNameTextField] resignFirstResponder];

    if ([[[self userNameTextField] text] length] > 0) {  // User entered a valid username
        [self setUserName: [[self userNameTextField] text]];
        // Inform the user there username was accepted.
        [[self statusUpdate] setText:[NSString stringWithFormat:@"Accepted the username '%@'",
                                      [self userName]]];
    } else {    // User clicked the accept button without entering a username
        [[self statusUpdate] setText:[NSString stringWithFormat:@"Please enter a username before clicking accept"]];
    }
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [[self imageButton] setAlpha:0.2];
    [[self userNameTextField] setDelegate:self];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)imagePressed:(id)sender {
    
}

@end
