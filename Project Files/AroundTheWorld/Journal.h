//
//  Journal.h
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-12.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Clue.h"

@interface Journal : NSObject
//+ (Journal *) allClues;
- (void)addClue:(Clue *) cellInformation;
- (NSUInteger) numberOfClues;
- (NSString *) countryOfOriginNameForClueIndex: (NSUInteger)clueIndex;
- (NSString *) imageNameForClueIndex: (NSUInteger)clueIndex;
- (NSString *) clueDescriptionForClueIndex: (NSUInteger)clueIndex;
- (BOOL)clueExists:(Clue *) clue;
- (void) eraseAllClues;
@end
