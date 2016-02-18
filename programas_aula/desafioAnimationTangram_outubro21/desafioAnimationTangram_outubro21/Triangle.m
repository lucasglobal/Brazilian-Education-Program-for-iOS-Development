//
//  Triangle.m
//  desafioAnimationTangram_outubro21
//
//  Created by Lucas Andrade on 10/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(ctx);
    CGContextMoveToPoint (ctx, CGRectGetMinX(rect), CGRectGetMinY(rect)); // top left
    CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMidY(rect)); // mid right
    CGContextAddLineToPoint(ctx, CGRectGetMinX(rect), CGRectGetMaxY(rect)); // bottom left
    CGContextClosePath(ctx);
    
    CGContextSetRGBFillColor(ctx, 0, 0, 0, 1);
    CGContextFillPath(ctx);
}
@end
