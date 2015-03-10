//
//  Globals.h
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-16.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Journal.h"
#import "Clue.h"
#import "GameSpace.h"

@interface Globals : NSObject
+ (Globals *)sharedManager;
- (void)initJournalsWithCount: (NSUInteger)numberOfJournals;
- (NSUInteger)numberOfCluesInJournalForAssignment: (NSUInteger)assignmentNumber;
- (Journal *)journalForAssignment: (NSUInteger)assignmentNumber;
- (void)addClue: (Clue *) clue;
- (BOOL)clueInJournal: (Clue *)clue;
- (void)resetJournal;

@property (nonatomic, assign) NSInteger currentAssignment;
@property (strong, nonatomic) GameSpace *gameSpace;
@end
