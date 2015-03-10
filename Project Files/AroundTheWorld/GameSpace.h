//
//  GameSpace.h
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-30.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameSpace : NSObject
// Levels completed
@property BOOL levelOneCompleted;
@property BOOL levelTwoCompleted;
@property BOOL levelThreeCompleted;
@property BOOL levelFourCompleted;


/* Checkpoints for unlocking other parts of the levels */
// Level one
@property BOOL levelOneCheckpointAlpha; // The business card clue has been found
@property BOOL levelOneCheckpointBravo; // The comic book clue has been found
// Level two
@property BOOL levelTwoCheckpointAlpha; // The plane ticket clue has been found
@property BOOL levelTwoCheckpointBravo; // The witness clue has been found
// Level three
@property BOOL levelThreeCheckpointAlpha; // The cigar clue has been found
@property BOOL levelThreeCheckpointBravo; // The squirrel picture was found.
@property BOOL levelThreeCheckpointCharlie; // The historical book was found.
@property BOOL levelThreeCheckpointDelta; // The dolphinw as found


/* Level 1 */
@property int countryClicksLevelOne;
// South Africa
@property BOOL southAfricaClicked;
@property BOOL algeriaClicked;
/* level 2 */
@property int countryClicksLevelTwo;
// North America
@property BOOL britishColumbiaClicked;
@property BOOL coloradoClicked;
/* Level 3 */
@property int countryClicksLevelThree;
// The Middle East
@property BOOL yemenClicked;
@property BOOL uAEClicked;
@property BOOL turkeyClicked;
// South America
@property BOOL brazilClicked;
@property BOOL peruClicked;
@end
