//
//  SHCoreDataStack.h
//  Diary
//
//  Created by Remote Tiger on 8/15/14.
//  Copyright (c) 2014 Stefan Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHCoreDataStack : NSObject

+(instancetype) defaultStack;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
