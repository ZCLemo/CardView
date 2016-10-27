//
//  GeneralBackgroundView.m
//  GeneralBackgroundView
//
//  Created by 赵琛 on 16/10/12.
//  Copyright © 2016年 赵琛. All rights reserved.
//

#import "GeneralBackgroundView.h"
#import "UIColor+LFColor.h"

@implementation GeneralBackgroundView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        
        
    }
    return self;
}


//画半圆
- (CAShapeLayer *)semicircleLayerWithStartAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle andCenter:(CGPoint)center
{
    CAShapeLayer *layer = [CAShapeLayer layer];
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:10 startAngle:startAngle endAngle:endAngle clockwise:YES];
    layer.fillColor = [UIColor colorWithHex:@"#f5f5f5"].CGColor;
    layer.strokeColor = [UIColor clearColor].CGColor;
    layer.path = path.CGPath;
    return layer;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 画直线
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    [shapeLayer setFillColor:[[UIColor clearColor] CGColor]];
    
    // 设置虚线颜色为blackColor
    [shapeLayer setStrokeColor:[[UIColor colorWithHex:@"#dcd2de"] CGColor]];
    
    // 1.0f设置虚线的宽度
    [shapeLayer setLineWidth:0.5f];
    [shapeLayer setLineJoin:kCALineJoinRound];
    
    // 5=线的宽度 4=每条线的间距
    [shapeLayer setLineDashPattern:
     [NSArray arrayWithObjects:[NSNumber numberWithInt:5],
      [NSNumber numberWithInt:4],nil]];
    
    // Setup the path
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 15, 10);
    CGPathAddLineToPoint(path, NULL, CGRectGetWidth(self.frame)-15,10);
    
    [shapeLayer setPath:path];
    CGPathRelease(path);
    
    // 可以把self改成任何你想要的UIView
    [self.layer addSublayer:shapeLayer];
    
    //画半圆圆
    CAShapeLayer *leftLayer = [self semicircleLayerWithStartAngle:M_PI*3/2 endAngle:M_PI/2 andCenter:CGPointMake(0, 10)];
    [self.layer addSublayer:leftLayer];
    
    CAShapeLayer *rightLayer = [self semicircleLayerWithStartAngle:M_PI/2 endAngle:M_PI*3/2 andCenter:CGPointMake(CGRectGetWidth(self.frame), 10)];
    [self.layer addSublayer:rightLayer];
}


@end
