//
//  viewChile.m
//  desafios_maio_20
//
//  Created by LucasAndrade on 5/20/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "viewChile.h"

@implementation viewChile

- (id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        //colocando um retangulo branco na metade da tela em relacao a horizontal
        UIView* retanguloBranco = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width,self.bounds.size.height/2)];
        retanguloBranco.backgroundColor = [UIColor whiteColor];
        [self addSubview:retanguloBranco];
        
        //colocando um retangulo vermelho na metade da tela em relacao a horizontal
        UIView* retanguloVermelho = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.origin.x, self.bounds.size.height/2-21, self.bounds.size.width,self.bounds.size.height)];
        retanguloVermelho.backgroundColor = [UIColor redColor];
        [self addSubview:retanguloVermelho];
        
        
        //colocando um quadrado azul da bandeira que encontra-se no primeiro 1/3
        UIView* quadradoAzul= [[UIView alloc]initWithFrame:CGRectMake(self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width/3,self.bounds.size.height/2-21)];
        quadradoAzul.backgroundColor = [UIColor blueColor];
        [self addSubview:quadradoAzul];
        
        //adicionado a imagem de uma estrela no centro do quadrado azul
        UIImageView* estrela = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4i9aezKET.png"]];
        estrela.frame = CGRectMake(quadradoAzul.bounds.size.width/2-45, quadradoAzul.bounds.size.height/2-45, 90, 90);
        [quadradoAzul addSubview:estrela];
        
        
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
