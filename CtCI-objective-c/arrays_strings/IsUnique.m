//
//  IsUnique.m
//  CtCI-objective-c
//
//  Created by Chengzhi Jia on 2/25/18.
//  Copyright © 2018 Chengzhi Jia. All rights reserved.
//

#import "IsUnique.h"

@implementation IsUnique

- (BOOL)isUnique: (NSString *)s {
    NSInteger compare = 0;
    for (int i = 0; i < s.length; i++) {
        NSInteger bit = [s characterAtIndex:i] - 'a';
        if ((compare & 1 << bit) != 0) return NO;
        compare |= 1 << bit;
    }
    return YES;
}

@end
