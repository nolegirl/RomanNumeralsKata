//
//  RomanNumeralsFormatter.m
//  RomanNumeralsKata
//
//  Created by Mechelle Sieglitz on 10/30/14.
//  Copyright (c) 2014 Sieglitz. All rights reserved.
//

#import "RomanNumeralsFormatter.h"

@implementation RomanNumeralsFormatter

- (NSString *)stringFromNumber:(NSNumber *)number {
    NSArray *possibilities = [NSArray arrayWithObjects:
                              [NSArray arrayWithObjects:@"M", [NSNumber numberWithInt:1000], nil],
                              [NSArray arrayWithObjects:@"D", [NSNumber numberWithInt:500], nil],
                              [NSArray arrayWithObjects:@"CD", [NSNumber numberWithInt:400], nil],
                              [NSArray arrayWithObjects:@"C", [NSNumber numberWithInt:100], nil],
                              [NSArray arrayWithObjects:@"XC", [NSNumber numberWithInt:90], nil],
                              [NSArray arrayWithObjects:@"L", [NSNumber numberWithInt:50], nil],
                              [NSArray arrayWithObjects:@"XL", [NSNumber numberWithInt:40], nil],
                              [NSArray arrayWithObjects:@"X", [NSNumber numberWithInt:10], nil],
                              [NSArray arrayWithObjects:@"IX", [NSNumber numberWithInt:9], nil],
                              [NSArray arrayWithObjects:@"V", [NSNumber numberWithInt:5], nil],
                              [NSArray arrayWithObjects:@"IV", [NSNumber numberWithInt:4], nil],
                              [NSArray arrayWithObjects:@"I", [NSNumber numberWithInt:1], nil], nil];

    NSMutableString *result = [NSMutableString string];
    __block NSInteger value = [number integerValue];
    [possibilities enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSInteger arabic = [[obj objectAtIndex:1] integerValue];
        while(value >= arabic) {
            [result appendString:[obj objectAtIndex:0]];
            value = value - arabic;
        }
    }];
    return result;
}

@end
