//
//  NSManagedObject+Context.h
//  Manager
//
//  Created by David Swaintek on 7/19/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObject (Context)

+(NSManagedObjectContext *)managerContext;

@end
