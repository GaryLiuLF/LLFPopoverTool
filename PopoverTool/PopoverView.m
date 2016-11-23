//
//  PopoverView.m
//  PopoverTool
//
//  Created by gary.liu on 16/11/23.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

#import "PopoverView.h"

@implementation PopoverView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // 默认圆角角度
    float r = 6;
    // 偏移量
    float offset = 10;
    // 默认箭头高度为10
    if ((int)self.arrowHeight == 0) {
        self.arrowHeight = 10;
    }
    // 设置 长度宽度
    float w = rect.size.width;
    float h = rect.size.height - self.arrowHeight;
    
    // 获取文本
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 设置表框宽度
    CGContextSetLineWidth(context, 0.2);
    // 设置边框颜色
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    // 设置边框填充颜色
    CGContextSetFillColorWithColor(context, self.fillColor.CGColor);
    
    // 1.开始坐标右边开始
    CGContextMoveToPoint(context, w, h - offset);
    // 2.右下角圆弧
    CGContextAddArcToPoint(context, w, h, w - offset, h, r);
    // 3.箭头左边的点
    CGContextAddLineToPoint(context, self.arrowPosition + self.arrowHeight, h);
    // 4.箭头顶点的点
    CGContextAddLineToPoint(context, self.arrowPosition, h + self.arrowHeight);
    // 5.箭头右边的点
    CGContextAddLineToPoint(context, self.arrowPosition - self.arrowHeight, h);
    // 6.左下角圆弧
    CGContextAddArcToPoint(context, 0, h, 0, h - offset, r);
    // 7.左上角圆弧
    CGContextAddArcToPoint(context, 0, 0, offset, 0, r);
    // 8.右上角圆弧
    CGContextAddArcToPoint(context, w, 0, w, offset, r);
    // 9.根据坐标绘制路径
    CGContextDrawPath(context, kCGPathFillStroke); //根据坐标绘制路径
    // 10.父类调用 放在画完边线 后.  不然 之前设置的东西会被覆盖
    [super drawRect:rect];
}

@end
