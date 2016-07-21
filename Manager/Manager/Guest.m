//
//  Guest.m
//  Manager
//
//  Created by David Swaintek on 7/19/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "Guest.h"
#import "Reservation.h"

#import "NSManagedObject+Context.h"

@implementation Guest


+(instancetype)guestWithLastName:(NSString *)lastName firstName:(NSString *)firstName email:(NSString *)email  {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    Guest *guest = [NSEntityDescription insertNewObjectForEntityForName:@"Guest"
                                                 inManagedObjectContext:delegate.managedObjectContext];
    
    guest.lastName = lastName;
    guest.firstName = firstName;
    guest.email = email;
    
    return guest;
}



@end
