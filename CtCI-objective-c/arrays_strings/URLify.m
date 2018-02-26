//
//  URLify.m
//  CtCI-objective-c
//
//  Created by Chengzhi Jia on 2/25/18.
//  Copyright © 2018 Chengzhi Jia. All rights reserved.
//

#import "URLify.h"

@implementation URLify

/*
 Write a method to replace all spaces in a string with '%20  You may assume that the string has suf cient space at the end to hold the additional characters,and that you are given the "true" length of the string. (Note: If implementing in Java,please use a character array so that you can perform this operation in place.)
 EXAMPLE
 Input: "Mr John Smith ", 13 Output: "Mr%20John%20Smith"
 */

- (NSString *)URLify: (NSString *)s {
    NSMutableString *res = [NSMutableString new];
    for (int i = 0; i < s.length; i++) {
        char c = [s characterAtIndex:i];
        if (c != ' ') {
            [res appendFormat:@"%c", c];
            if (i + 1 < s.length && [s characterAtIndex:i+1] == ' ')
                [res appendString:@"%20"];
        }
    }
    //If "a  b c   " will have one more %20 at the end, need to delete
    if ([res hasSuffix:@"%20"]) [res deleteCharactersInRange:NSMakeRange(res.length - 3, 3)];
    return [res copy];
}

@end
