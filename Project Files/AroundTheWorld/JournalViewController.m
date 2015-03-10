//
//  JournalViewController.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-05.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "JournalViewController.h"
#import "JournalCell.h"
#import "Globals.h"

@interface JournalViewController ()

@end

@implementation JournalViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self tableView] registerNib:[UINib nibWithNibName:@"JournalCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"JournalCell"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[Globals sharedManager] numberOfCluesInJournalForAssignment:[[Globals sharedManager] currentAssignment]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"JournalCell";
    JournalCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    NSInteger currentAssignment = [[Globals sharedManager] currentAssignment];
    Journal *currentJournal = [[Globals sharedManager]journalForAssignment:currentAssignment];
    
    // Retrieve the information for the current clue
    NSString *currentCellCountryName = [currentJournal countryOfOriginNameForClueIndex:indexPath.row];
    UIImage *currentCellImage = [UIImage imageNamed:[currentJournal imageNameForClueIndex:indexPath.row]];
    NSString *currentCellClueDescription = [currentJournal clueDescriptionForClueIndex:indexPath.row];

    // Configure the cell with the information just retrieved
    [[cell countryOfOrigin] setText:currentCellCountryName];
    [[cell clueImage] setImage:currentCellImage];
    [[cell itemDescription] setText:currentCellClueDescription];

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}

//#pragma mark - Table view delegate
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // Navigation logic may go here. Create and push another view controller.
//    /*
//     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
//     // ...
//     // Pass the selected object to the new view controller.
//     [self.navigationController pushViewController:detailViewController animated:YES];
//     */
//}

@end
