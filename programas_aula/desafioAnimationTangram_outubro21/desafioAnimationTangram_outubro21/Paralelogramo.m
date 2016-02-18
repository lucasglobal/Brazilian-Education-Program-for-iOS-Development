//
//  Paralelogramo.m
//  desafioAnimationTangram_outubro21
//
//  Created by Lucas Andrade on 10/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "Paralelogramo.h"
#import "Triangle.h"

@implementation Paralelogramo

- (void)drawRect:(CGRect)rect {
    
    //primeiro triangulo da esquerda
    CGRect rectTriangulo = CGRectMake(50, 50, 50, 100);
    Triangle* triangulo = [[Triangle alloc]initWithFrame:rectTriangulo];
    triangulo.backgroundColor = [UIColor clearColor];
    [self addSubview:triangulo];
    triangulo.transform = CGAffineTransformMakeRotation(45*M_PI/180);

    //triangulo de cima do quadrado
    CGRect rectTriangulo2 = CGRectMake(85, 15, 50, 100);
    Triangle* triangulo2 = [[Triangle alloc]initWithFrame:rectTriangulo2];
    triangulo2.backgroundColor = [UIColor clearColor];
    [self addSubview:triangulo2];
    triangulo2.transform = CGAffineTransformMakeRotation(225*M_PI/180);

    //triangulo de baixo do quadrado
    CGRect rectTriangulo3 = CGRectMake(120, 50, 50, 100);
    Triangle* triangulo3 = [[Triangle alloc]initWithFrame:rectTriangulo3];
    triangulo3.backgroundColor = [UIColor clearColor];
    [self addSubview:triangulo3];
    triangulo3.transform = CGAffineTransformMakeRotation(45*M_PI/180);
    
    //triangulo de baixo do quadrado
    CGRect rectTriangulo4 = CGRectMake(155, 15, 50, 100);
    Triangle* triangulo4 = [[Triangle alloc]initWithFrame:rectTriangulo4];
    triangulo4.backgroundColor = [UIColor clearColor];
    [self addSubview:triangulo4];
    triangulo4.transform = CGAffineTransformMakeRotation(225*M_PI/180);


    
}
@end
