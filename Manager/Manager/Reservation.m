//
//  Reservation.m
//  Manager
//
//  Created by David Swaintek on 7/19/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "Reservation.h"
#import "Room.h"
#import "Guest.h"
#import "NSManagedObject+Context.h"

@implementation Reservation

+(instancetype)reservationWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate room:(Room *)room {
    
    Reservation *reservation = [NSEntityDescription insertNewObjectForEntityForName:@"Reservation"
                                                             inManagedObjectContext:[NSManagedObject managerContext]];
    
    reservation.startDate = startDate;
    reservation.endDate = endDate;
    reservation.room = room;
    
    return reservation;
    
    
}

@end
