//
//  SHDiaryEntry.m
//  Diary
//
//  Created by Remote Tiger on 8/15/14.
//  Copyright (c) 2014 Stefan Ha. All rights reserved.
//

#import "SHDiaryEntry.h"


@implementation SHDiaryEntry

@dynamic date;
@dynamic body;
@dynamic imageData;
@dynamic mood;
@dynamic location;

-(NSString *) sectionName{

    NSDate  *date = [NSDate dateWithTimeIntervalSince1970:self.date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM yyyy"];
    
    return [dateFormatter stringFromDate:date];

}

@end
