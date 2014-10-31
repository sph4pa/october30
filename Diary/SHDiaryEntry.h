//
//  SHDiaryEntry.h
//  Diary
//
//  Created by Remote Tiger on 8/15/14.
//  Copyright (c) 2014 Stefan Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ENUM(int16_t, SHDiaryEntryMood){

    SHDiaryEntryMoodGood = 0,
    SHDiaryEntryMoodAverage = 1,
    SHDiaryEntryMoodBad = 2
    
};

@interface SHDiaryEntry : NSManagedObject

@property (nonatomic) NSTimeInterval date;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSData * imageData;
@property (nonatomic) int16_t mood;
@property (nonatomic, retain) NSString * location;

@property (nonatomic, readonly) NSString *sectionName;

@end
