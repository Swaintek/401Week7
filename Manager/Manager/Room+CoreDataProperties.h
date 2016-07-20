//
//  Room+CoreDataProperties.h
//  Manager
//
//  Created by David Swaintek on 7/19/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Room.h"

NS_ASSUME_NONNULL_BEGIN

@interface Room (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *beds;
@property (nullable, nonatomic, retain) NSNumber *number;
@property (nullable, nonatomic, retain) NSDecimalNumber *rate;
@property (nullable, nonatomic, retain) NSManagedObject *hotel;
@property (nullable, nonatomic, retain) NSManagedObject *reservation;

@end

NS_ASSUME_NONNULL_END
