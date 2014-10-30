//
//  RomanNumeralsKataTests.m
//  RomanNumeralsKata
//
//  Created by Mechelle Sieglitz on 10/30/14.
//  Copyright (c) 2014 Sieglitz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RomanNumeralsFormatter.h"

@interface RomanNumeralsKataTests : XCTestCase
@property(nonatomic, retain)RomanNumeralsFormatter *formatter;

@end

@implementation RomanNumeralsKataTests
@synthesize formatter;

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.formatter = [[RomanNumeralsFormatter alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testI {
    // This is an example of a functional test case.
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:1]];
    XCTAssert([result isEqualToString:@"I"], @"%@ should be I", result);
    XCTAssert(YES, @"Pass");
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
