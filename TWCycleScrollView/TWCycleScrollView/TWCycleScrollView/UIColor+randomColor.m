//
//  UIColor+randomColor.m
//  collectionViewTest2
//
//  Created by helpdesk on 1/9/15.
//  Copyright (c) 2015年 nextlabs. All rights reserved.
//

#import "UIColor+randomColor.h"

@implementation UIColor (randomColor)

+(UIColor *)randomColor{
    static BOOL seed = NO;
    if (!seed) {
        seed = YES;
        srandom((unsigned int)time(NULL));
    }
    CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];//alpha为1.0,颜色完全不透明
}

@end
