//
//  Clue.m
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-18.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import "Clue.h"

@implementation Clue

- (id) initWithCountryOfOrigin: (NSString *)countryOfOrigin
                     ImageName: (NSString *)imageName
               ClueDescription: (NSString *)clueDescription
                      ClueName: (NSString *)clueName{
    self = [super init];
    if (self != nil) {
        _countryOfOrigin = countryOfOrigin;
        _imageName = imageName;
        _clueDescription = clueDescription;
        _clueName = clueName;
    }
    return self;
}
@end