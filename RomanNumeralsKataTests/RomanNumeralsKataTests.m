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
}

- (void)testII {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:2]];
    XCTAssert([result isEqualToString:@"II"], @"%@ should be II", result);
}

- (void)testIV {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:4]];
    XCTAssert([result isEqualToString:@"IV"], @"%@ should be IV", result);
}

- (void)testV {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:5]];
    XCTAssert([result isEqualToString:@"V"], @"%@ should be V", result);
}

- (void)testVI {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:6]];
    XCTAssert([result isEqualToString:@"VI"], @"%@ should be VI", result);
}

- (void)testIX {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:9]];
    XCTAssert([result isEqualToString:@"IX"], @"%@ should be IX", result);
}

- (void)testX {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:10]];
    XCTAssert([result isEqualToString:@"X"], @"%@ should be X", result);
}

- (void)testXIV {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:14]];
    XCTAssert([result isEqualToString:@"XIV"], @"%@ should be XIV", result);
}

- (void)testXX {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:20]];
    XCTAssert([result isEqualToString:@"XX"], @"%@ should be XX", result);
}

- (void)testXL {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:40]];
    XCTAssert([result isEqualToString:@"XL"], @"%@ should be XL", result);
}

- (void)testL {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:50]];
    XCTAssert([result isEqualToString:@"L"], @"%@ should be L", result);
}

- (void)testLX {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:60]];
    XCTAssert([result isEqualToString:@"LX"], @"%@ should be LX", result);
}

- (void)testLXXVIII {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:78]];
    XCTAssert([result isEqualToString:@"LXXVIII"], @"%@ should be LXXVIII", result);
}

- (void)testC {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:100]];
    XCTAssert([result isEqualToString:@"C"], @"%@ should be C", result);
}

- (void)testXCIX {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:99]];
    XCTAssert([result isEqualToString:@"XCIX"], @"%@ should be XCIX", result);
}

- (void)testCXL {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:140]];
    XCTAssert([result isEqualToString:@"CXL"], @"%@ should be CXL", result);
}

- (void)testCD {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:400]];
    XCTAssert([result isEqualToString:@"CD"], @"%@ should be CD", result);
}

- (void)testCDXCIX {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:499]];
    XCTAssert([result isEqualToString:@"CDXCIX"], @"%@ should be CDXCIX", result);
}

- (void)testD {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:500]];
    XCTAssert([result isEqualToString:@"D"], @"%@ should be D", result);
}

- (void)testCM {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:900]];
    XCTAssert([result isEqualToString:@"CM"], @"%@ should be CM", result);
}

- (void)CMXLVIII {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:948]];
    XCTAssert([result isEqualToString:@"CMXLVIII"], @"%@ should be CMXLVIII", result);
}

- (void)testM {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:1000]];
    XCTAssert([result isEqualToString:@"M"], @"%@ should be M", result);
}

- (void)testMCDXCIX {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:1499]];
    XCTAssert([result isEqualToString:@"MCDXCIX"], @"%@ should be MCDXCIX", result);
    
}

- (void)testMMCM {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:2900]];
    XCTAssert([result isEqualToString:@"MMCM"], @"%@ should be CMMM", result);
}

- (void)testMMM {
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:3000]];
    XCTAssert([result isEqualToString:@"MMM"], @"%@ should be MMM", result);
}

@end
