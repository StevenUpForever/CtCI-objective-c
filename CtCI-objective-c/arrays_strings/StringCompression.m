//
//  StringCompression.m
//  CtCI-objective-c
//
//  Created by Chengzhi Jia on 2/25/18.
//  Copyright © 2018 Chengzhi Jia. All rights reserved.
//

#import "StringCompression.h"

@implementation StringCompression

/*
 Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the "compressed" string would not become smaller than the original string, your method should return
 the original string. You can assume the string has only uppercase and lowercase letters (a - z).
 */

- (NSString *)stringCompression: (NSString *)s {
    NSMutableString *res = [NSMutableString new];
    NSInteger count = 0;
    for (NSInteger i = 0; i < s.length; i++) {
        count++;
        if (i == s.length - 1 || [s characterAtIndex:i + 1] != [s characterAtIndex:i]) {
            [res appendFormat:@"%c%li", [s characterAtIndex:i], count];
            count = 0;
        }
    }
    //If the compressed string is longer than s, then no compression is needed, return s
    return res.length < s.length ? [res copy] : s;
}



@end
