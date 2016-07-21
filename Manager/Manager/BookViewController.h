//
//  BookViewController.h
//  Manager
//
//  Created by David Swaintek on 7/20/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Room.h"
#import "Hotel.h"
#import "Reservation.h"
#import "Guest.h"

@interface BookViewController : UIViewController

@property (strong, nonatomic)Room *room;
@property (strong, nonatomic)NSDate *endDate;

@end
