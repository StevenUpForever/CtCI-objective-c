//
//  PalindromePermutation.m
//  CtCI-objective-c
//
//  Created by Chengzhi Jia on 2/25/18.
//  Copyright © 2018 Chengzhi Jia. All rights reserved.
//

#import "PalindromePermutation.h"

@implementation PalindromePermutation

/*
 Given a string, write a function to check if it is a permutation of a palin­ drome. A palindrome is a word or phrase that is the same  rwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.
 EXAMPLE
 Input: Tact Coa
 Output: True (permutations: "taco cat", "atco eta", etc.)
 */

- (BOOL)palindromePermutationS1: (NSString *)s {
    int odd = 0;
    NSMutableDictionary *dict = [NSMutableDictionary new];
    for (int i = 0; i < s.length; i++) {
        NSString *key = [NSString stringWithFormat:@"%c", [s characterAtIndex:i]];
        if (!dict[key]) dict[key] = @0;
        NSInteger value = [dict[key] integerValue] + 1;
        dict[key] = [NSNumber numberWithInteger:value];
        odd += value % 2 == 0 ? -1 : 1;
    }
    return odd <= 1;
}

- (BOOL)palindromePermutationS2: (NSString *)s {
    int num = 0;
    for (int i = 0; i < s.length; i++) {
        char c = [s characterAtIndex:i];
        if ((num & (int)c) == 0) num |= (int)c;
        else num &= ~(int)c;
    }
    return num == 0 || (num & (num - 1)) == 0;
}

@end
