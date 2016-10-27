//
//  UIColor+LFColor.h
//  LeadbankFoundation
//
//  Created by 安军锋 on 16/4/22.
//  Copyright © 2016年 利得财富. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(UIColor_LFColor)

/**
 *  十六进制颜色转UIColor
 *
 *  @param hexString 十六进制颜色 #FFFFFF / FFFFFF / EEEEEE2B / #EEEEEE2B
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHex:(NSString *)hexString;

+ (UIColor *)colorWithHexString:(NSString *)color;

/**
 *  设置颜色透明度
 *
 *  @param alpha 0-1之间
 *
 *  @return UIColor
 */
- (UIColor *)alphaValue:(CGFloat)alpha;

/**
 *  获取颜色中的R值
 *
 *  @return CGFloat
 */
- (CGFloat)redValue;
/**
 *  获取颜色中的G值
 *
 *  @return CGFloat
 */
- (CGFloat)greenValue;
/**
 *  获取颜色中的B值
 *
 *  @return CGFloat
 */
- (CGFloat)blueValue;
/**
 *  获取颜色中的A值
 *
 *  @return CGFloat
 */
- (CGFloat)alphaValue;

@end
