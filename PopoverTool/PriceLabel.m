//
//  PriceLabel.m
//  PopoverTool
//
//  Created by gary.liu on 16/11/23.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

#import "PriceLabel.h"

@implementation PriceLabel

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    // 获取文本
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 设置起始点（x轴：0， y轴：控件高度的一半）
    CGContextMoveToPoint(context, 0, rect.size.height * 0.5);
    // 设置直线连接点（x轴：控件的宽度， y轴：控件高度的一半）
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height * 0.5);
    // 设置颜色 宽度
    [[UIColor redColor]set];
    CGContextSetLineWidth(context, 2);
    
    CGContextStrokePath(context);
}


@end
