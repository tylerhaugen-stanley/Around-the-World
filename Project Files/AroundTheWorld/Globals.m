//
//  Globals.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-16.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "Globals.h"

@interface Globals()

@property (strong, nonatomic) NSMutableArray *allJournals;

@end

@implementation Globals

- (id) init {
    self = [super init];
    if (self != nil) {
        _allJournals = [[NSMutableArray alloc] init];
        _currentAssignment = (NSInteger) 0;
        _gameSpace = [[GameSpace alloc] init];
    }
    return self;
}

// Create arrays with Journal objects inside of them. Representative of a journal for
// each assignment
- (void)initJournalsWithCount: (NSUInteger)numberOfJournals {
    for (int i = 0; i < numberOfJournals; i++) {
        [[self allJournals] addObject:[[Journal alloc] init]];
    }
}

-(BOOL)clueInJournal: (Clue *)clue {
    Journal *currentJournal = [[self allJournals] objectAtIndex:([self currentAssignment] - 1)];
    return [currentJournal clueExists:clue];
}

- (NSUInteger)numberOfCluesInJournalForAssignment: (NSUInteger)assignmentNumber {
    return [[[self allJournals] objectAtIndex:(assignmentNumber - 1)] numberOfClues];
}

- (Journal *)journalForAssignment: (NSUInteger)assignmentNumber {
    return [[self allJournals] objectAtIndex:(assignmentNumber - 1)];
}

- (void)addClue: (Clue *)clue {
    NSInteger currentAssignment = [self currentAssignment];
//    [[self allJournals][[self currentAssignment] - 1] addClue:clue];
    [[[self allJournals] objectAtIndex:(currentAssignment - 1)] addClue:clue];
}

- (void)resetJournal {
    [[[self allJournals] objectAtIndex:([self currentAssignment] - 1)] eraseAllClues];
}

#pragma mark - lifecycle
static Globals *globalVariables = nil;

+ (Globals *)sharedManager {
    if (globalVariables == nil) {
        globalVariables = [[super allocWithZone:NULL] init];
    }
    return globalVariables;
}
@end