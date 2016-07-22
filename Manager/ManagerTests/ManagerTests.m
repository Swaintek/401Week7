//
//  ManagerTests.m
//  ManagerTests
//
//  Created by David Swaintek on 7/21/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSManagedObject+Context.h"

@interface ManagerTests : XCTestCase

@property (strong, nonatomic) NSManagedObjectContext *context;

@end

@implementation ManagerTests

- (void)setUp {
    [super setUp];
    [self setContext:[NSManagedObject managerContext]];
}

- (void)tearDown {
    [self setContext:nil];
    [super tearDown];
}

- (void)testContextCreation {
    XCTAssertNotNil(self.context, @"Context should not be nil.");
}

- (void)testContextOnMainQ {
    XCTAssertTrue(self.context.concurrencyType ==  NSMainQueueConcurrencyType, @"Context should be on main Q" );
}

- (void)testCoreDataSave {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Hotel"];
    request.resultType = NSCountResultType;
    NSError *error;
    NSArray *result = [self.context executeFetchRequest:request error:&error];
    NSNumber *count = result.firstObject;
    
    XCTAssertNil(error, @"Error performing fetch request");
    XCTAssertNotNil(result, @"Result should not be nil");
    XCTAssertTrue(count.intValue > 0, @"Number of saved objects should be > 0");
    
}


@end

















