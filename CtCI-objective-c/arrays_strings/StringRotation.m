//
//  StringRotation.m
//  CtCI-objective-c
//
//  Created by Chengzhi Jia on 2/25/18.
//  Copyright © 2018 Chengzhi Jia. All rights reserved.
//

#import "StringRotation.h"

@implementation StringRotation

/*
 Assumeyou have a method isSubstringwhich checks if one word is a substring of another. Given two strings, sl and s2, write code to check if s2 is a rotation of sl using only one call to isSubstring (e.g.,"waterbottle" is a rotation of"erbottlewat").
 */

/*
 Solution:
 if x can rotate to y, then y is substring of xx
 */

- (BOOL)isRotated: (NSString *)origin rotate: (NSString *)rotate {
    if (!origin && !rotate) return YES;
    if (!origin || !rotate || origin.length != rotate.length) return NO;
    return [self isSubstring:[NSString stringWithFormat:@"%@%@", origin, origin] b:rotate];
}

- (BOOL)isSubstring: (NSString *)a b: (NSString *)b {
    return YES;
}

@end
