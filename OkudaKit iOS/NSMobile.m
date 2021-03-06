//
//  NSMobile.m
//  OkudaKit
//
//  Created by Atsushi Nagase on 1/10/13.
//  Copyright (c) 2013 LittleApps Inc. All rights reserved.
//

#import "NSMobile.h"
#import <UIKit/UIKit.h>

@implementation NSColor

+ (UIColor *)blackColor { return [UIColor blackColor]; }
+ (UIColor *)darkGrayColor { return [UIColor darkGrayColor]; }
+ (UIColor *)lightGrayColor { return [UIColor lightGrayColor]; }
+ (UIColor *)whiteColor { return [UIColor whiteColor]; }
+ (UIColor *)grayColor { return [UIColor grayColor]; }
+ (UIColor *)redColor { return [UIColor redColor]; }
+ (UIColor *)greenColor { return [UIColor greenColor]; }
+ (UIColor *)blueColor { return [UIColor blueColor]; }
+ (UIColor *)cyanColor { return [UIColor cyanColor]; }
+ (UIColor *)yellowColor { return [UIColor yellowColor]; }
+ (UIColor *)magentaColor { return [UIColor magentaColor]; }
+ (UIColor *)orangeColor { return [UIColor orangeColor]; }
+ (UIColor *)purpleColor { return [UIColor purpleColor]; }
+ (UIColor *)brownColor { return [UIColor brownColor]; }
+ (UIColor *)clearColor { return [UIColor clearColor]; }
+ (UIColor *)colorWithDeviceRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
  return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end

@implementation NSFont

+ (UIFont *)fontWithName:(NSString *)fontName size:(CGFloat)fontSize {
  UIFont *font = [UIFont fontWithName:fontName size:fontSize];
  return font ? font : [UIFont systemFontOfSize:fontSize];
}

@end