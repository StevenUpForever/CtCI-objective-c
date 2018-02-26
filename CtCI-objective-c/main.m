//
//  main.m
//  CtCI-objective-c
//
//  Created by Chengzhi Jia on 2/24/18.
//  Copyright © 2018 Chengzhi Jia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CheckPermutation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CheckPermutation *obj = [CheckPermutation new];
        NSLog(@"%d", [obj permutation:@"abcd" t:@"dcba"]);
    }
    return 0;
}
