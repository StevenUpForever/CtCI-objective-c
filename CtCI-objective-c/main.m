//
//  main.m
//  CtCI-objective-c
//
//  Created by Chengzhi Jia on 2/24/18.
//  Copyright © 2018 Chengzhi Jia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CheckPermutation.h"
#import "URLify.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        URLify *obj = [URLify new];
        NSLog(@"%@", [obj URLify:@"  a b   c    "]);
    }
    return 0;
}
