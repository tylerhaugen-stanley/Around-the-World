//
//  Journal.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-12.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//


/* 
 Information for a cell will be stored in the following way:
    Index 0: The country where the clue was found
    Index 1: The image of the clue
    Index 2: The description of the clue
*/

#import "Journal.h"

@interface Journal()

@property (nonatomic, strong) NSMutableArray *clues;

@end

@implementation Journal

- (id) init {
    self = [super init];
    if (self != nil) {
//        _clues = [[NSMutableArray alloc] initWithArray:[[NSMutableArray alloc] init]];
        _clues = [[NSMutableArray alloc] init];
    }
    return self;
}

- (BOOL)clueExists:(Clue *) clue {
    for (Clue *storedClues in [self clues]) {
        if ([storedClues clueName] == [clue clueName]) {
            return true;
        }
    }
    return false;
//    return [[self clues] containsObject:clue];
}

- (void)addClue:(Clue *) clue {
    [[self clues] addObject:clue];
}

- (NSUInteger) numberOfClues {
    return [[self clues] count];
}
- (NSString *) countryOfOriginNameForClueIndex: (NSUInteger)clueIndex {
    return [[[self clues] objectAtIndex:clueIndex] countryOfOrigin];
}

- (NSString *) imageNameForClueIndex: (NSUInteger)clueIndex {
    return [[[self clues] objectAtIndex:clueIndex] imageName];
}

- (NSString *) clueDescriptionForClueIndex: (NSUInteger)clueIndex {
    return [[[self clues] objectAtIndex:clueIndex] clueDescription];
}
- (void) eraseAllClues {
    [[self clues] removeAllObjects];
}

@end
