//
//  LARView.m
//  desafio2_maio_19
//
//  Created by LucasAndrade on 5/19/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "LARView.h"

@implementation LARView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
                // Initialization code
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame retangulo:(BOOL)afirmacao eCor:(UIColor*)cor
{
    self = [super initWithFrame:frame];
    if (self) {
        _cor = cor;
        _retangulo = afirmacao;
        self.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:0 alpha:0];
        [self setNeedsDisplay];
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //self.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:0 alpha:0];

    CGContextRef contexto = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(contexto, _cor.CGColor);
    if(!_retangulo){
        CGContextFillEllipseInRect(contexto, rect);
    }
    else{
        CGContextFillRect(contexto, rect);
    }
    
    // Drawing code
}


@end
