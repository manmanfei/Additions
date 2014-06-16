//
//  UIImage+Tint.h
//  ImageBlend
//
//  Created by 王 巍 on 13-4-29.
//  Copyright (c) 2013年 OneV-s-Den. All rights reserved.
//  使用blend改变图片image颜色

#import <UIKit/UIKit.h>

@interface UIImage (Tint)

- (UIImage *) imageWithTintColor:(UIColor *)tintColor;
- (UIImage *) imageWithGradientTintColor:(UIColor *)tintColor;

@end
