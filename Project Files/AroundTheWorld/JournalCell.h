//
//  JournalCell.h
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-09.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JournalCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *itemDescription;
@property (strong, nonatomic) IBOutlet UILabel *countryOfOrigin;
@property (strong, nonatomic) IBOutlet UIImageView *clueImage;

@end
