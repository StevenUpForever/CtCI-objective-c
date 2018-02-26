//
//  OneWay.m
//  CtCI-objective-c
//
//  Created by Chengzhi Jia on 2/25/18.
//  Copyright © 2018 Chengzhi Jia. All rights reserved.
//

#import "OneWay.h"

@implementation OneWay

/*
 There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.
 EXAMPLE
 pale, ple -> true pales, pale -> true pale, bale -> true pale, bake -> false
 */

- (BOOL)oneWay: (NSString *)s p: (NSString *)p {
    NSString *shortStr = s.length < p.length ? s : p;
    NSString *longStr = s.length < p.length ? p : s;
    int index1 = 0, index2 = 0;
    BOOL diff = NO;
    while (index1 < shortStr.length && index2 < longStr.length) {
        if ([shortStr characterAtIndex:index1] != [longStr characterAtIndex:index2]) {
            if (diff) return NO;
            diff = YES;
            /*
             If length is not same, just move fast index, so that could check if the first char is the one need
            to insert/delete
             */
            if (shortStr.length == longStr.length) index1++;
        } else index1++;
        index2++;
    }
    return YES;
}

@end
