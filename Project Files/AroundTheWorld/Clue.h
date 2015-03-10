//
//  Clue.h
//  iPad_test2
//
//  Created by Tyler Haugen-Stanley on 2013-07-18.
//  Copyright (c) 2013 Tyler Haugen-Stanley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Clue : NSObject
- (id) initWithCountryOfOrigin: (NSString *)countryOfOrigin
                     ImageName: (NSString *)imageName
               ClueDescription: (NSString *)clueDescription
                      ClueName: (NSString *)clueName;
@property (nonatomic, strong) NSString *countryOfOrigin;
@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSString *clueDescription;
@property (nonatomic, strong) NSString *clueName;

@end
