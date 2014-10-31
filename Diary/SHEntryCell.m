//
//  SHEntryCell.m
//  Diary
//
//  Created by Remote Tiger on 8/18/14.
//  Copyright (c) 2014 Stefan Ha. All rights reserved.
//

#import "SHEntryCell.h"
#import "SHDiaryEntry.h"

@interface SHEntryCell()
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *bodyLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;
@property (weak, nonatomic) IBOutlet UIImageView *moodImageView;

@end

@implementation SHEntryCell

+(CGFloat) heightForEntry:(SHDiaryEntry *)entry{
    const CGFloat topMargin = 35.0f;
    const CGFloat bottomMargin = 80.0f;
    const CGFloat minHeight = 106.0f;
    
    UIFont *font = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    
    CGRect boundingBox = [entry.body boundingRectWithSize:CGSizeMake(202, CGFLOAT_MAX) options:(NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName: font} context:nil];
    
    return MAX(minHeight, CGRectGetHeight(boundingBox) + topMargin + bottomMargin);
}

-(void) configureCellForEntry: (SHDiaryEntry *) entry{
    self.bodyLabel.text = entry.body;
    self.locationLabel.text = entry.location;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE, MMMM d yyyy"];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:entry.date];
    
    self.dateLabel.text = [dateFormatter stringFromDate:date];
    
    if(entry.imageData){
        self.mainImageView.image = [UIImage imageWithData:entry.imageData];
    } else {
        self.mainImageView.image = [UIImage imageNamed:@"icn_image"];
    }
    
    if(entry.mood == SHDiaryEntryMoodGood){
        self.moodImageView.image = [UIImage imageNamed:@"icn_happy"];
    } else if (entry.mood == SHDiaryEntryMoodAverage){
        self.moodImageView.image = [UIImage imageNamed:@"icn_average"];
    } else if (entry.mood == SHDiaryEntryMoodBad){
        self.moodImageView.image = [UIImage imageNamed:@"icn_sad"];
    }
}


@end
