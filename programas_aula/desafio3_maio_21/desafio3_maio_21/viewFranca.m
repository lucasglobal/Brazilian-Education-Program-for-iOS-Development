//
//  viewFranca.m
//  desafios_maio_20
//
//  Created by LucasAndrade on 5/20/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "viewFranca.h"

@implementation viewFranca

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        
        //quantidade de divisoes que a tela terá
        float divisoes = self.bounds.size.width/3;
        
        //array com as cores a serem utilizadas em ordem
        NSMutableArray* arrayCores = [NSMutableArray array];
        [arrayCores addObject:[UIColor blueColor]];
        [arrayCores addObject:[UIColor whiteColor]];
        [arrayCores addObject:[UIColor redColor]];

        //percorrer a tela horizontalmente e adicionando as cores de acordo a divisao feita da tela
        for(int i = 0, comecoX = 0; i<3; i++){
            UIView* retangulo = [[UIView alloc]initWithFrame:CGRectMake(comecoX, self.bounds.origin.y, divisoes*(i+1), self.bounds.size.height)];
            retangulo.backgroundColor = [arrayCores objectAtIndex:i];
            [self addSubview:retangulo];
            comecoX += divisoes;
        }
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
