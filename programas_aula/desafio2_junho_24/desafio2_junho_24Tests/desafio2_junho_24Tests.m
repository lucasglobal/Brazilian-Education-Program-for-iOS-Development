//
//  desafio2_junho_24Tests.m
//  desafio2_junho_24Tests
//
//  Created by Lucas Andrade on 6/24/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface desafio2_junho_24Tests : XCTestCase

@end

@implementation desafio2_junho_24Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
