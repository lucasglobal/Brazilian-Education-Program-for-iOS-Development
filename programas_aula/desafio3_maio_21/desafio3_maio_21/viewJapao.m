//
//  viewJapao.m
//  desafios_maio_20
//
//  Created by LucasAndrade on 5/20/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "viewJapao.h"

@implementation viewJapao

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        
        //setar as posicoes necessarias para desenhar o o corner
        float diametro = self.frame.size.height - 100;
        float x = CGRectGetMidX(self.bounds) - diametro/2;
        float y = CGRectGetMidY(self.bounds) - diametro/2-20;
        
        //desenhar primeiramente um quadrado e entao aumentar o raio dos vertices ate a metade do diamentro para que esse vire um circulo
        UIView* circulo = [[UIView alloc]initWithFrame:CGRectMake(x, y, diametro, diametro)];
        circulo.layer.cornerRadius = diametro/2;
        circulo.backgroundColor = [UIColor redColor];
        
        [self addSubview:circulo];
    }
    //adicionando sombra 
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 20.0f;
    UIBezierPath *caminho = [UIBezierPath bezierPathWithRect:self.bounds];
    self.layer.shadowPath = caminho.CGPath;

    
    return self;
}

@end




