//
//  DRFormattedLabelTests.m
//  DRFormattedLabelTests
//
//  Created by Daniel R on 10/27/13.
//  Copyright (c) 2013 Daniel R. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DRFormattedLabel.h"

@interface DRFormattedLabelTests : XCTestCase
@property DRFormattedLabel* label;
@end

@implementation DRFormattedLabelTests

- (void)setUp
{
    [super setUp];
    self.label = [[DRFormattedLabel alloc] initWithFormat:@"Cattle count: %@" defaultValue:@"--"];
}

- (void)tearDown
{
    self.label = nil;
    [super tearDown];
}

- (void)testInitialValue {
    XCTAssertEqualObjects(self.label.text, @"Cattle count: --");
}

- (void)testSetValue {
    self.label.value = @4;
    XCTAssertEqualObjects(self.label.text, @"Cattle count: 4");
}

- (void)testClearsValue {
    [self.label clear];
    XCTAssertEqualObjects(self.label.text, @"Cattle count: --");
}

@end
