//
//  UIView+TWExtension.m
//  TWCycleScrollView
//
//  Created by HaKim on 16/2/26.
//  Copyright © 2016年 haKim. All rights reserved.
//

#import "UIView+TWExtension.h"

@implementation UIView (TWExtension)
- (CGFloat)tw_height
{
    return self.frame.size.height;
}

- (void)setTw_height:(CGFloat)tw_height
{
    CGRect temp = self.frame;
    temp.size.height = tw_height;
    self.frame = temp;
}

- (CGFloat)tw_width
{
    return self.frame.size.width;
}

- (void)setTw_width:(CGFloat)tw_width
{
    CGRect temp = self.frame;
    temp.size.width = tw_width;
    self.frame = temp;
}


- (CGFloat)tw_y
{
    return self.frame.origin.y;
}

- (void)setTw_y:(CGFloat)tw_y
{
    CGRect temp = self.frame;
    temp.origin.y = tw_y;
    self.frame = temp;
}

- (CGFloat)tw_x
{
    return self.frame.origin.x;
}

- (void)setTw_x:(CGFloat)tw_x
{
    CGRect temp = self.frame;
    temp.origin.x = tw_x;
    self.frame = temp;
}

- (UIViewController*)viewController {
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}
@end
