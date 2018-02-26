//
//  check_permutation.m
//  CtCI-objective-c
//
//  Created by Chengzhi Jia on 2/25/18.
//  Copyright © 2018 Chengzhi Jia. All rights reserved.
//

#import "CheckPermutation.h"

@implementation CheckPermutation

/*
 Given two strings,write a method to decide if one is a permutation of the
 other.
 */

/**
 Solution 1:
 Sort the array and compare from beginning
 */

/**
 Solution 2:
 key point is need to check the char and frequency of it is same
 If ASCII value, use int[256], otherwise use NSDictionary
 */

- (BOOL)permutation: (NSString *)s t: (NSString *)t {
    if (s.length != t.length) return NO;
    int chars[128] = {0};
    for (NSInteger i = 0; i < s.length; i++) chars[(int)[s characterAtIndex:i]]++;
    for (NSInteger i = 0; i < t.length; i++) {
        if (chars[(int)[t characterAtIndex:i]] <= 0) return NO;
        chars[(int)[t characterAtIndex:i]]--;
    }
    return YES;
}

@end
