//
//  viewGrecia.m
//  desafios_maio_20
//
//  Created by LucasAndrade on 5/20/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "viewGrecia.h"

@implementation viewGrecia

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //dividindo a tela em 10 pedaços
        float divisoes = self.bounds.size.height/10;
        
        //colocando as listras na tela nos 10 pedacos, de modo que comeca sendo azul, e vai invertendo com branco
        for(int i = 2, comecoY = 0; i<12; i++){
            UIView* retangulo = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.origin.x, comecoY,self.bounds.size.width,divisoes*(i+1))];
            if(i%2==0){
                retangulo.backgroundColor = [UIColor blueColor];
            }
            else{
                retangulo.backgroundColor = [UIColor whiteColor];
            }
            [self addSubview:retangulo];
            comecoY += divisoes;
        }
        
        //criacao de um quadrado azul na posicao de 1/3 da tela
        UIView* quadradoAzul = [[UIView alloc]initWithFrame:CGRectMake(0,0,self.bounds.size.width/3,divisoes*5)];
        quadradoAzul.backgroundColor = [UIColor blueColor];
        [self addSubview:quadradoAzul];

        //criando um retangulo horizontal dentro do quadrado azul no seu meio em relacao a horizontal e com o tamanho das divisoes
        UIView* retanguloHorizontal = [[UIView alloc]initWithFrame:CGRectMake(0,quadradoAzul.bounds.size.height/2-divisoes/2,quadradoAzul.bounds.size.width,divisoes)];
        retanguloHorizontal.backgroundColor = [UIColor whiteColor];
        [quadradoAzul addSubview:retanguloHorizontal];
        
        //criando um retangulo vertical dentro do quadrado azul na posicaode 1/3 e com o tamanho das divisoes
        UIView* retanguloVertical = [[UIView alloc]initWithFrame:CGRectMake(divisoes,0,divisoes,quadradoAzul.bounds.size.height)];
        retanguloVertical.backgroundColor = [UIColor whiteColor];
        [quadradoAzul addSubview:retanguloVertical];

        
        
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
