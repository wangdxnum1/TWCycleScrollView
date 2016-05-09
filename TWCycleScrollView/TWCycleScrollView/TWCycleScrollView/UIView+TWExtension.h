//
//  UIView+twExtension.h
//  twCycleScrollView
//
//  Created by HaKim on 16/2/26.
//  Copyright © 2016年 haKim. All rights reserved.
//

#import <UIKit/UIKit.h>

#define twColorCreater(r, g, b, a) [UIColor colorWithRed:(r / 255.0) green:(g / 255.0) blue:(b / 255.0) alpha:a]

@interface UIView (twExtension)

@property (nonatomic, assign) CGFloat tw_height;
@property (nonatomic, assign) CGFloat tw_width;

@property (nonatomic, assign) CGFloat tw_y;
@property (nonatomic, assign) CGFloat tw_x;

@end
