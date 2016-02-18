//
//  viewCoreiaSul.m
//  desafios_maio_20
//
//  Created by LucasAndrade on 5/21/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "viewCoreiaSul.h"

@implementation viewCoreiaSul

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        //adicionando imagem com o simbolo do yin yang da bandeira
        UIImageView* circulo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Flag_of_South_Korea.svg.png"]];
        circulo.frame = CGRectMake(self.bounds.size.width/2-90,self.bounds.size.height/2-111, 180, 180);
        [self addSubview:circulo];
        
    
        //adicionando listras ao redor da imagem
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path moveToPoint:CGPointMake(140,90)];
        [path addLineToPoint:CGPointMake(190, 40)];
        CAShapeLayer *shapeLayer = [CAShapeLayer layer];
        shapeLayer.path = [path CGPath];
        shapeLayer.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer.lineWidth = 10;
        [self.layer addSublayer:shapeLayer];
        
        UIBezierPath *path2 = [UIBezierPath bezierPath];
        [path2 moveToPoint:CGPointMake(130,80)];
        [path2 addLineToPoint:CGPointMake(180, 30)];
        CAShapeLayer *shapeLayer2 = [CAShapeLayer layer];
        shapeLayer2.path = [path2 CGPath];
        shapeLayer2.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer2.lineWidth = 10;
        [self.layer addSublayer:shapeLayer2];
        
        UIBezierPath *path3 = [UIBezierPath bezierPath];
        [path3 moveToPoint:CGPointMake(120,70)];
        [path3 addLineToPoint:CGPointMake(170, 20)];
        CAShapeLayer *shapeLayer3 = [CAShapeLayer layer];
        shapeLayer3.path = [path3 CGPath];
        shapeLayer3.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer3.lineWidth = 10;
        [self.layer addSublayer:shapeLayer3];
        
        UIBezierPath *path4 = [UIBezierPath bezierPath];
        [path4 moveToPoint:CGPointMake(430,90)];
        [path4 addLineToPoint:CGPointMake(380,40)];
        CAShapeLayer *shapeLayer4 = [CAShapeLayer layer];
        shapeLayer4.path = [path4 CGPath];
        shapeLayer4.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer4.lineWidth = 10;
        [self.layer addSublayer:shapeLayer4];
        
        UIBezierPath *path5 = [UIBezierPath bezierPath];
        [path5 moveToPoint:CGPointMake(450,70)];
        [path5 addLineToPoint:CGPointMake(400, 20)];
        CAShapeLayer *shapeLayer5 = [CAShapeLayer layer];
        shapeLayer5.path = [path5 CGPath];
        shapeLayer5.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer5.lineWidth = 10;
        [self.layer addSublayer:shapeLayer5];
        
        UIBezierPath *path6 = [UIBezierPath bezierPath];
        [path6 moveToPoint:CGPointMake(440,80)];
        [path6 addLineToPoint:CGPointMake(390, 30   )];
        CAShapeLayer *shapeLayer6 = [CAShapeLayer layer];
        shapeLayer6.path = [path6 CGPath];
        shapeLayer6.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer6.lineWidth = 10;
        [self.layer addSublayer:shapeLayer6];

        UIBezierPath *path7 = [UIBezierPath bezierPath];
        [path7 moveToPoint:CGPointMake(190,270)];
        [path7 addLineToPoint:CGPointMake(140, 220)];
        CAShapeLayer *shapeLayer7 = [CAShapeLayer layer];
        shapeLayer7.path = [path7 CGPath];
        shapeLayer7.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer7.lineWidth = 10;
        [self.layer addSublayer:shapeLayer7];
        
        UIBezierPath *path8 = [UIBezierPath bezierPath];
        [path8 moveToPoint:CGPointMake(180,280)];
        [path8 addLineToPoint:CGPointMake(130, 230)];
        CAShapeLayer *shapeLayer8 = [CAShapeLayer layer];
        shapeLayer8.path = [path8 CGPath];
        shapeLayer8.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer8.lineWidth = 10;
        [self.layer addSublayer:shapeLayer8];
        
        UIBezierPath *path9 = [UIBezierPath bezierPath];
        [path9 moveToPoint:CGPointMake(170,290)];
        [path9 addLineToPoint:CGPointMake(120, 240)];
        CAShapeLayer *shapeLayer9 = [CAShapeLayer layer];
        shapeLayer9.path = [path9 CGPath];
        shapeLayer9.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer9.lineWidth = 10;
        [self.layer addSublayer:shapeLayer9];
        
        UIBezierPath *path10 = [UIBezierPath bezierPath];
        [path10 moveToPoint:CGPointMake(390,260)];
        [path10 addLineToPoint:CGPointMake(440, 210)];
        CAShapeLayer *shapeLayer10 = [CAShapeLayer layer];
        shapeLayer10.path = [path10 CGPath];
        shapeLayer10.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer10.lineWidth = 10;
        [self.layer addSublayer:shapeLayer10];
        
        UIBezierPath *path11 = [UIBezierPath bezierPath];
        [path11 moveToPoint:CGPointMake(400,270)];
        [path11 addLineToPoint:CGPointMake(450, 220)];
        CAShapeLayer *shapeLayer11 = [CAShapeLayer layer];
        shapeLayer11.path = [path11 CGPath];
        shapeLayer11.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer11.lineWidth = 10;
        [self.layer addSublayer:shapeLayer11];
        
        UIBezierPath *path12 = [UIBezierPath bezierPath];
        [path12 moveToPoint:CGPointMake(410,280)];
        [path12 addLineToPoint:CGPointMake(460, 230)];
        CAShapeLayer *shapeLayer12 = [CAShapeLayer layer];
        shapeLayer12.path = [path12 CGPath];
        shapeLayer12.strokeColor = [UIColor blackColor].CGColor;
        shapeLayer12.lineWidth = 10;
        [self.layer addSublayer:shapeLayer12];
        
        
        
        //cortando as listas anteriormente adicionadas igual a sua bandeira
        UIBezierPath *path13 = [UIBezierPath bezierPath];
        [path13 moveToPoint:CGPointMake(405,225)];
        [path13 addLineToPoint:CGPointMake(445, 265)];
        CAShapeLayer *shapeLayer13 = [CAShapeLayer layer];
        shapeLayer13.path = [path13 CGPath];
        shapeLayer13.strokeColor = [UIColor whiteColor].CGColor;
        shapeLayer13.lineWidth = 10;
        [self.layer addSublayer:shapeLayer13];
        
        UIBezierPath *path14 = [UIBezierPath bezierPath];
        [path14 moveToPoint:CGPointMake(160,250)];
        [path14 addLineToPoint:CGPointMake(150, 260)];
        CAShapeLayer *shapeLayer14 = [CAShapeLayer layer];
        shapeLayer14.path = [path14 CGPath];
        shapeLayer14.strokeColor = [UIColor whiteColor].CGColor;
        shapeLayer14.lineWidth = 10;
        [self.layer addSublayer:shapeLayer14];

        UIBezierPath *path15 = [UIBezierPath bezierPath];
        [path15 moveToPoint:CGPointMake(400,70)];
        [path15 addLineToPoint:CGPointMake(410, 60)];
        CAShapeLayer *shapeLayer15 = [CAShapeLayer layer];
        shapeLayer15.path = [path15 CGPath];
        shapeLayer15.strokeColor = [UIColor whiteColor].CGColor;
        shapeLayer15.lineWidth = 10;
        [self.layer addSublayer:shapeLayer15];
        

        UIBezierPath *path16 = [UIBezierPath bezierPath];
        [path16 moveToPoint:CGPointMake(420,50)];
        [path16 addLineToPoint:CGPointMake(440, 30)];
        CAShapeLayer *shapeLayer16 = [CAShapeLayer layer];
        shapeLayer16.path = [path16 CGPath];
        shapeLayer16.strokeColor = [UIColor whiteColor].CGColor;
        shapeLayer16.lineWidth = 10;
        [self.layer addSublayer:shapeLayer16];


    }
    
    //adicionando sombras
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 20.0f;
    UIBezierPath *caminho = [UIBezierPath bezierPathWithRect:self.bounds];
    self.layer.shadowPath = caminho.CGPath;
    

    return self;
}

@end
