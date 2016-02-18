//
//  viewBrasil.m
//  desafios_maio_20
//
//  Created by LucasAndrade on 5/20/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "viewBrasil.h"

@implementation viewBrasil

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //criacao do quadrado verde em toda a tela
        UIView* quadradoVerde = [[UIView alloc]initWithFrame:CGRectMake(0,0,self.bounds.size.width,self.bounds.size.height)];
        quadradoVerde.backgroundColor = [UIColor colorWithRed:0 green:0.5 blue:0 alpha:1];
        [self addSubview:quadradoVerde];

        //desenhando um losango amarelo com os pontos na tela
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path moveToPoint:CGPointMake(0,self.bounds.size.height/2)];
        [path addLineToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height)];
        [path addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height/2)];
        [path addLineToPoint:CGPointMake(self.bounds.size.width/2, 0)];
        [path closePath];
        CAShapeLayer *shapeLayer = [CAShapeLayer layer];
        shapeLayer.path = [path CGPath];
        shapeLayer.fillColor = [[UIColor yellowColor] CGColor];
        [self.layer addSublayer:shapeLayer];

        
        
        //desenhando um circulo azul no centro da tela
        float diametro = self.frame.size.height - 100;
        float x = CGRectGetMidX(self.bounds) - diametro/2;
        float y = CGRectGetMidY(self.bounds) - diametro/2;
        UIView* circulo = [[UIView alloc]initWithFrame:CGRectMake(x, y, diametro, diametro)];
        circulo.layer.cornerRadius = diametro/2;
        circulo.backgroundColor = [UIColor blueColor];
        [self addSubview:circulo];

        
        //adicionando a faixa no meio do circulo
        UIImageView* ordemEprogresso = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ordem_e_progresso.png"]];
        ordemEprogresso.frame = CGRectMake(circulo.bounds.size.width-222,circulo.bounds.size.height/2-45, 220, 90);
        [circulo addSubview:ordemEprogresso];
        
        //insercao das estrelas de modo aleatório
        UIImageView* estrelaPequena1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena1.frame = CGRectMake(10,90, 10, 10);
        [circulo addSubview:estrelaPequena1];
        
        UIImageView* estrelaPequena2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena2.frame = CGRectMake(40,130, 10, 10);
        [circulo addSubview:estrelaPequena2];
        
        UIImageView* estrelaPequena3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena3.frame = CGRectMake(40,130, 10, 10);
        [circulo addSubview:estrelaPequena3];
        

        UIImageView* estrelaPequena4 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena4.frame = CGRectMake(40,170, 10, 10);
        [circulo addSubview:estrelaPequena4];
        

        UIImageView* estrelaPequena5 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena5.frame = CGRectMake(40,180, 10, 10);
        [circulo addSubview:estrelaPequena5];
        

        UIImageView* estrelaPequena6 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena6.frame = CGRectMake(60,100, 10, 10);
        [circulo addSubview:estrelaPequena6];
        

        UIImageView* estrelaPequena7 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena7.frame = CGRectMake(50,120, 10, 10);
        [circulo addSubview:estrelaPequena7];
        

        UIImageView* estrelaPequena8 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena8.frame = CGRectMake(90,100, 10, 10);
        [circulo addSubview:estrelaPequena8];
        

        UIImageView* estrelaPequena9 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena9.frame = CGRectMake(120,130, 10, 10);
        [circulo addSubview:estrelaPequena9];
        

        UIImageView* estrelaPequena10 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena10.frame = CGRectMake(140,130, 10, 10);
        [circulo addSubview:estrelaPequena10];
        

        UIImageView* estrelaPequena11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena11.frame = CGRectMake(160,150, 10, 10);
        [circulo addSubview:estrelaPequena11];
        

        UIImageView* estrelaPequena12 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena12.frame = CGRectMake(170,160, 10, 10);
        [circulo addSubview:estrelaPequena12];
        

        UIImageView* estrelaPequena13 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena13.frame = CGRectMake(170,130, 10, 10);
        [circulo addSubview:estrelaPequena13];
        

        UIImageView* estrelaPequena14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena14.frame = CGRectMake(190,160, 10, 10);
        [circulo addSubview:estrelaPequena14];
        

        UIImageView* estrelaPequena15 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena15.frame = CGRectMake(180,135, 10, 10);
        [circulo addSubview:estrelaPequena15];
        

        UIImageView* estrelaPequena16 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena16.frame = CGRectMake(180,150, 10, 10);
        [circulo addSubview:estrelaPequena16];
        

        UIImageView* estrelaPequena17 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena17.frame = CGRectMake(180,180, 10, 10);
        [circulo addSubview:estrelaPequena17];
        

        UIImageView* estrelaPequena18 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena18.frame = CGRectMake(170,170, 10, 10);
        [circulo addSubview:estrelaPequena18];
        

        UIImageView* estrelaPequena19 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena19.frame = CGRectMake(150,150, 10, 10);
        [circulo addSubview:estrelaPequena19];
        

        UIImageView* estrelaPequena20 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena20.frame = CGRectMake(130,130, 10, 10);
        [circulo addSubview:estrelaPequena20];
        

        UIImageView* estrelaPequena21 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena21.frame = CGRectMake(69,120, 10, 10);
        [circulo addSubview:estrelaPequena21];
        

        UIImageView* estrelaPequena22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena22.frame = CGRectMake(30,150, 10, 10);
        [circulo addSubview:estrelaPequena22];
        

        UIImageView* estrelaPequena23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena23.frame = CGRectMake(40,150, 10, 10);
        [circulo addSubview:estrelaPequena23];
        

        UIImageView* estrelaPequena24 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena24.frame = CGRectMake(80,120, 10, 10);
        [circulo addSubview:estrelaPequena24];
        

        UIImageView* estrelaPequena25 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena25.frame = CGRectMake(100,100, 10, 10);
        [circulo addSubview:estrelaPequena25];
        

        UIImageView* estrelaPequena26 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena26.frame = CGRectMake(100,120, 10, 10);
        [circulo addSubview:estrelaPequena26];
        

        UIImageView* estrelaPequena27 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"estrela_pequena.png"]];
        estrelaPequena27.frame = CGRectMake(120,50, 10, 10);
        [circulo addSubview:estrelaPequena27];
        
        
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
