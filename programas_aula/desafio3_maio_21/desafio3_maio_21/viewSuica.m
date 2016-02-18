//
//  viewSuica.m
//  desafios_maio_20
//
//  Created by LucasAndrade on 5/20/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "viewSuica.h"

@implementation viewSuica

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor redColor];
        
        //criando o retangulo branco horizontal da bandeira
        UIView* retanguloHorizontal = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.origin.x, self.bounds.size.height/2-42, self.bounds.size.width,40)];
        retanguloHorizontal.backgroundColor = [UIColor whiteColor];
        [self addSubview:retanguloHorizontal];
        
        //criando o retangulo horizontal da bandeira
        UIView* retanguloVertical = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width/3-21, self.bounds.origin.y, 40,self.bounds.size.height)];
        retanguloVertical.backgroundColor = [UIColor whiteColor];
        [self addSubview:retanguloVertical];

        }
    //colocando sombra
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 20.0f;
    UIBezierPath *caminho = [UIBezierPath bezierPathWithRect:self.bounds];
    self.layer.shadowPath = caminho.CGPath;
    
    
    return self;
}


@end
