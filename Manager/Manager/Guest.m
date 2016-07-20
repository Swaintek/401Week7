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

+(instancetype)guestWithName:(NSString *)name {
    
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    Guest *guest = [NSEntityDescription insertNewObjectForEntityForName:@"Guest"
                                                 inManagedObjectContext:delegate.managedObjectContext];
    
    guest.name = name;
    
    return guest;
                                            
}

@end
