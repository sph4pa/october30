//
//  SHEntryCell.h
//  Diary
//
//  Created by Remote Tiger on 8/18/14.
//  Copyright (c) 2014 Stefan Ha. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SHDiaryEntry;

@interface SHEntryCell : UITableViewCell

+ (CGFloat) heightForEntry: (SHDiaryEntry *) entry;

-(void) configureCellForEntry: (SHDiaryEntry *) entry;

@end
