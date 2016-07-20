//
//  Reservation+CoreDataProperties.h
//  Manager
//
//  Created by David Swaintek on 7/19/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Reservation.h"

NS_ASSUME_NONNULL_BEGIN

@interface Reservation (CoreDataProperties)

@property (nullable, nonatomic, retain) NSDate *endDate;
@property (nullable, nonatomic, retain) NSDate *startDate;
@property (nullable, nonatomic, retain) Room *room;
@property (nullable, nonatomic, retain) NSManagedObject *guest;

@end

NS_ASSUME_NONNULL_END
