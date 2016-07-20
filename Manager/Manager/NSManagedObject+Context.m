//
//  NSManagedObject+Context.m
//  Manager
//
//  Created by David Swaintek on 7/19/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "NSManagedObject+Context.h"
#import "AppDelegate.h"

@implementation NSManagedObject (Context)

+(NSManagedObjectContext *)managerContext
{
    
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    return delegate.managedObjectContext;
    
}

@end
