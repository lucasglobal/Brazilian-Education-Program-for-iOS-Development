//
//  AppDelegate.m
//  desafio3_maio_21
//
//  Created by LucasAndrade on 5/21/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "AppDelegate.h"
#import "PrincipalView.h"
#import "viewJapao.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    bigRect.size.height *=2;
    
    UIScrollView* scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
    [self.window addSubview:scrollView];
    
    PrincipalView* hyp = [[PrincipalView alloc]initWithFrame:screenRect];
    
    [scrollView addSubview:hyp];
    scrollView.contentSize = bigRect.size;
    
    
    
    // Adjust scroll view content size, set background colour and turn on paging
    
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * 7,
                                        scrollView.frame.size.height);
    scrollView.pagingEnabled=YES;
    scrollView.backgroundColor = [UIColor blackColor];
    
    // Generate content for our scroll view using the frame height and width as the reference point
    
    
    int i = 0;
    while (i<=6) {
        
        UIView *views = [[UIView alloc]
                         initWithFrame:CGRectMake(((scrollView.frame.size.width)*i)+20, 0,
                                                  (scrollView.frame.size.width)-40, scrollView.frame.size.height-20)];
        
        if(i == 0){
            //BANDEIRA DO JAPAO
            views.backgroundColor = [UIColor whiteColor];
            //setar as posicoes necessarias para desenhar o o corner
            float diametro = views.frame.size.height -300;
            float x = CGRectGetMidX(views.bounds) - diametro/2;
            float y = CGRectGetMidY(views.bounds) - diametro/2-20;
            
            //desenhar primeiramente um quadrado e entao aumentar o raio dos vertices ate a metade do diamentro para que esse vire um circulo
            UIView* circulo = [[UIView alloc]initWithFrame:CGRectMake(x, y, diametro, diametro)];
            circulo.layer.cornerRadius = diametro/2;
            circulo.backgroundColor = [UIColor redColor];
            
            [views addSubview:circulo];
            
        }
        
        if(i == 1){
            
            //BANDEIRA DA FRANCA
            
            views.backgroundColor = [UIColor blueColor];
            
            //quantidade de divisoes que a tela terá
            float divisoes = views.bounds.size.width/3;
            
            //array com as cores a serem utilizadas em ordem
            NSMutableArray* arrayCores = [NSMutableArray array];
            [arrayCores addObject:[UIColor blueColor]];
            [arrayCores addObject:[UIColor whiteColor]];
            [arrayCores addObject:[UIColor redColor]];
            
            //percorrer a tela horizontalmente e adicionando as cores de acordo a divisao feita da tela
            for(int i = 0, comecoX = 0; i<3; i++){
                UIView* retangulo = [[UIView alloc]initWithFrame:CGRectMake(comecoX, views.bounds.origin.y, divisoes*(i+1), views.bounds.size.height)];
                retangulo.backgroundColor = [arrayCores objectAtIndex:i];
                [views addSubview:retangulo];
                comecoX += divisoes;
            }
        }

        if(i == 2){
            
            //BANDEIRA DA SUICA
            views.backgroundColor = [UIColor redColor];
            
            //criando o retangulo branco horizontal da bandeira
            UIView* retanguloHorizontal = [[UIView alloc]initWithFrame:CGRectMake(views.bounds.origin.x, views.bounds.size.height/2, views.bounds.size.width,40)];
            retanguloHorizontal.backgroundColor = [UIColor whiteColor];
            [views addSubview:retanguloHorizontal];
            
            //criando o retangulo horizontal da bandeira
            UIView* retanguloVertical = [[UIView alloc]initWithFrame:CGRectMake(views.bounds.size.width/3-21, views.bounds.origin.y, 40,views.bounds.size.height)];
            retanguloVertical.backgroundColor = [UIColor whiteColor];
            [views addSubview:retanguloVertical];

        }
        if(i == 3){
            
            //BANDEIRA DO CHILE
            //colocando um retangulo branco na metade da tela em relacao a horizontal
            UIView* retanguloBranco = [[UIView alloc]initWithFrame:CGRectMake(views.bounds.origin.x, views.bounds.origin.y, views.bounds.size.width,views.bounds.size.height/2)];
            retanguloBranco.backgroundColor = [UIColor whiteColor];
            [views addSubview:retanguloBranco];
            
            //colocando um retangulo vermelho na metade da tela em relacao a horizontal
            UIView* retanguloVermelho = [[UIView alloc]initWithFrame:CGRectMake(views.bounds.origin.x, views.bounds.size.height/2-21, views.bounds.size.width,views.bounds.size.height)];
            retanguloVermelho.backgroundColor = [UIColor redColor];
            [views addSubview:retanguloVermelho];
            
            
            //colocando um quadrado azul da bandeira que encontra-se no primeiro 1/3
            UIView* quadradoAzul= [[UIView alloc]initWithFrame:CGRectMake(views.bounds.origin.x, views.bounds.origin.y, views.bounds.size.width/3,views.bounds.size.height/2-21)];
            quadradoAzul.backgroundColor = [UIColor blueColor];
            [views addSubview:quadradoAzul];
            
            //adicionado a imagem de uma estrela no centro do quadrado azul
            UIImageView* estrela = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4i9aezKET.png"]];
            estrela.frame = CGRectMake(quadradoAzul.bounds.size.width/2-45, quadradoAzul.bounds.size.height/2-45, 90, 90);
            [quadradoAzul addSubview:estrela];
            

        }
        if(i == 4){
            
            //BANDEIRA DA GRECIA
            //dividindo a tela em 10 pedaços
            float divisoes = views.bounds.size.height/10;
            
            //colocando as listras na tela nos 10 pedacos, de modo que comeca sendo azul, e vai invertendo com branco
            for(int i = 2, comecoY = 0; i<12; i++){
                UIView* retangulo = [[UIView alloc]initWithFrame:CGRectMake(views.bounds.origin.x, comecoY,views.bounds.size.width,divisoes*(i+1))];
                if(i%2==0){
                    retangulo.backgroundColor = [UIColor blueColor];
                }
                else{
                    retangulo.backgroundColor = [UIColor whiteColor];
                }
                [views addSubview:retangulo];
                comecoY += divisoes;
            }
            
            //criacao de um quadrado azul na posicao de 1/3 da tela
            UIView* quadradoAzul = [[UIView alloc]initWithFrame:CGRectMake(0,0,views.bounds.size.width/3,divisoes*5)];
            quadradoAzul.backgroundColor = [UIColor blueColor];
            [views addSubview:quadradoAzul];
            
            //criando um retangulo horizontal dentro do quadrado azul no seu meio em relacao a horizontal e com o tamanho das divisoes
            UIView* retanguloHorizontal = [[UIView alloc]initWithFrame:CGRectMake(0,quadradoAzul.bounds.size.height/2-divisoes/2,quadradoAzul.bounds.size.width,divisoes)];
            retanguloHorizontal.backgroundColor = [UIColor whiteColor];
            [quadradoAzul addSubview:retanguloHorizontal];
            
            //criando um retangulo vertical dentro do quadrado azul na posicaode 1/3 e com o tamanho das divisoes
            UIView* retanguloVertical = [[UIView alloc]initWithFrame:CGRectMake(divisoes-30,0,divisoes,quadradoAzul.bounds.size.height)];
            retanguloVertical.backgroundColor = [UIColor whiteColor];
            [quadradoAzul addSubview:retanguloVertical];
            
        }
        if(i == 5){
            
            //BANDEIRA DO BRASIL
            //criacao do quadrado verde em toda a tela
            UIView* quadradoVerde = [[UIView alloc]initWithFrame:CGRectMake(0,0,views.bounds.size.width,views.bounds.size.height)];
            quadradoVerde.backgroundColor = [UIColor colorWithRed:0 green:0.5 blue:0 alpha:1];
            [views addSubview:quadradoVerde];
            
            //desenhando um losango amarelo com os pontos na tela
            UIBezierPath *path = [UIBezierPath bezierPath];
            [path moveToPoint:CGPointMake(0,views.bounds.size.height/2)];
            [path addLineToPoint:CGPointMake(views.bounds.size.width/2, views.bounds.size.height)];
            [path addLineToPoint:CGPointMake(views.bounds.size.width, views.bounds.size.height/2)];
            [path addLineToPoint:CGPointMake(views.bounds.size.width/2, 0)];
            [path closePath];
            CAShapeLayer *shapeLayer = [CAShapeLayer layer];
            shapeLayer.path = [path CGPath];
            shapeLayer.fillColor = [[UIColor yellowColor] CGColor];
            [views.layer addSublayer:shapeLayer];
            
            
            
            //desenhando um circulo azul no centro da tela
            float diametro = views.frame.size.height - 300;
            float x = CGRectGetMidX(views.bounds) - diametro/2;
            float y = CGRectGetMidY(views.bounds) - diametro/2;
            UIView* circulo = [[UIView alloc]initWithFrame:CGRectMake(x, y, diametro, diametro)];
            circulo.layer.cornerRadius = diametro/2;
            circulo.backgroundColor = [UIColor blueColor];
            [views addSubview:circulo];
            
            
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
        if(i == 6){
            
            //BANDEIRA DO COREIA DO SUL
            views.backgroundColor = [UIColor whiteColor];
            
            //adicionando imagem com o simbolo do yin yang da bandeira
            UIImageView* circulo = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Flag_of_South_Korea.svg.png"]];
            circulo.frame = CGRectMake(views.bounds.size.width/2-90,views.bounds.size.height/2-111, 180, 180);
            [views addSubview:circulo];
            
            
            //adicionando listras ao redor da imagem
            UIBezierPath *path = [UIBezierPath bezierPath];
            [path moveToPoint:CGPointMake(140,90)];
            [path addLineToPoint:CGPointMake(190, 40)];
            CAShapeLayer *shapeLayer = [CAShapeLayer layer];
            shapeLayer.path = [path CGPath];
            shapeLayer.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer.lineWidth = 10;
            [views.layer addSublayer:shapeLayer];
            
            UIBezierPath *path2 = [UIBezierPath bezierPath];
            [path2 moveToPoint:CGPointMake(130,80)];
            [path2 addLineToPoint:CGPointMake(180, 30)];
            CAShapeLayer *shapeLayer2 = [CAShapeLayer layer];
            shapeLayer2.path = [path2 CGPath];
            shapeLayer2.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer2.lineWidth = 10;
            [views.layer addSublayer:shapeLayer2];
            
            UIBezierPath *path3 = [UIBezierPath bezierPath];
            [path3 moveToPoint:CGPointMake(120,70)];
            [path3 addLineToPoint:CGPointMake(170, 20)];
            CAShapeLayer *shapeLayer3 = [CAShapeLayer layer];
            shapeLayer3.path = [path3 CGPath];
            shapeLayer3.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer3.lineWidth = 10;
            [views.layer addSublayer:shapeLayer3];
            
            UIBezierPath *path4 = [UIBezierPath bezierPath];
            [path4 moveToPoint:CGPointMake(430,90)];
            [path4 addLineToPoint:CGPointMake(380,40)];
            CAShapeLayer *shapeLayer4 = [CAShapeLayer layer];
            shapeLayer4.path = [path4 CGPath];
            shapeLayer4.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer4.lineWidth = 10;
            [views.layer addSublayer:shapeLayer4];
            
            UIBezierPath *path5 = [UIBezierPath bezierPath];
            [path5 moveToPoint:CGPointMake(450,70)];
            [path5 addLineToPoint:CGPointMake(400, 20)];
            CAShapeLayer *shapeLayer5 = [CAShapeLayer layer];
            shapeLayer5.path = [path5 CGPath];
            shapeLayer5.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer5.lineWidth = 10;
            [views.layer addSublayer:shapeLayer5];
            
            UIBezierPath *path6 = [UIBezierPath bezierPath];
            [path6 moveToPoint:CGPointMake(440,80)];
            [path6 addLineToPoint:CGPointMake(390, 30   )];
            CAShapeLayer *shapeLayer6 = [CAShapeLayer layer];
            shapeLayer6.path = [path6 CGPath];
            shapeLayer6.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer6.lineWidth = 10;
            [views.layer addSublayer:shapeLayer6];
            
            UIBezierPath *path7 = [UIBezierPath bezierPath];
            [path7 moveToPoint:CGPointMake(190,270)];
            [path7 addLineToPoint:CGPointMake(140, 220)];
            CAShapeLayer *shapeLayer7 = [CAShapeLayer layer];
            shapeLayer7.path = [path7 CGPath];
            shapeLayer7.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer7.lineWidth = 10;
            [views.layer addSublayer:shapeLayer7];
            
            UIBezierPath *path8 = [UIBezierPath bezierPath];
            [path8 moveToPoint:CGPointMake(180,280)];
            [path8 addLineToPoint:CGPointMake(130, 230)];
            CAShapeLayer *shapeLayer8 = [CAShapeLayer layer];
            shapeLayer8.path = [path8 CGPath];
            shapeLayer8.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer8.lineWidth = 10;
            [views.layer addSublayer:shapeLayer8];
            
            UIBezierPath *path9 = [UIBezierPath bezierPath];
            [path9 moveToPoint:CGPointMake(170,290)];
            [path9 addLineToPoint:CGPointMake(120, 240)];
            CAShapeLayer *shapeLayer9 = [CAShapeLayer layer];
            shapeLayer9.path = [path9 CGPath];
            shapeLayer9.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer9.lineWidth = 10;
            [views.layer addSublayer:shapeLayer9];
            
            UIBezierPath *path10 = [UIBezierPath bezierPath];
            [path10 moveToPoint:CGPointMake(390,260)];
            [path10 addLineToPoint:CGPointMake(440, 210)];
            CAShapeLayer *shapeLayer10 = [CAShapeLayer layer];
            shapeLayer10.path = [path10 CGPath];
            shapeLayer10.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer10.lineWidth = 10;
            [views.layer addSublayer:shapeLayer10];
            
            UIBezierPath *path11 = [UIBezierPath bezierPath];
            [path11 moveToPoint:CGPointMake(400,270)];
            [path11 addLineToPoint:CGPointMake(450, 220)];
            CAShapeLayer *shapeLayer11 = [CAShapeLayer layer];
            shapeLayer11.path = [path11 CGPath];
            shapeLayer11.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer11.lineWidth = 10;
            [views.layer addSublayer:shapeLayer11];
            
            UIBezierPath *path12 = [UIBezierPath bezierPath];
            [path12 moveToPoint:CGPointMake(410,280)];
            [path12 addLineToPoint:CGPointMake(460, 230)];
            CAShapeLayer *shapeLayer12 = [CAShapeLayer layer];
            shapeLayer12.path = [path12 CGPath];
            shapeLayer12.strokeColor = [UIColor blackColor].CGColor;
            shapeLayer12.lineWidth = 10;
            [views.layer addSublayer:shapeLayer12];
            
            
            
            //cortando as listas anteriormente adicionadas igual a sua bandeira
            UIBezierPath *path13 = [UIBezierPath bezierPath];
            [path13 moveToPoint:CGPointMake(405,225)];
            [path13 addLineToPoint:CGPointMake(445, 265)];
            CAShapeLayer *shapeLayer13 = [CAShapeLayer layer];
            shapeLayer13.path = [path13 CGPath];
            shapeLayer13.strokeColor = [UIColor whiteColor].CGColor;
            shapeLayer13.lineWidth = 10;
            [views.layer addSublayer:shapeLayer13];
            
            UIBezierPath *path14 = [UIBezierPath bezierPath];
            [path14 moveToPoint:CGPointMake(160,250)];
            [path14 addLineToPoint:CGPointMake(150, 260)];
            CAShapeLayer *shapeLayer14 = [CAShapeLayer layer];
            shapeLayer14.path = [path14 CGPath];
            shapeLayer14.strokeColor = [UIColor whiteColor].CGColor;
            shapeLayer14.lineWidth = 10;
            [views.layer addSublayer:shapeLayer14];
            
            UIBezierPath *path15 = [UIBezierPath bezierPath];
            [path15 moveToPoint:CGPointMake(400,70)];
            [path15 addLineToPoint:CGPointMake(410, 60)];
            CAShapeLayer *shapeLayer15 = [CAShapeLayer layer];
            shapeLayer15.path = [path15 CGPath];
            shapeLayer15.strokeColor = [UIColor whiteColor].CGColor;
            shapeLayer15.lineWidth = 10;
            [views.layer addSublayer:shapeLayer15];
            
            
            UIBezierPath *path16 = [UIBezierPath bezierPath];
            [path16 moveToPoint:CGPointMake(420,50)];
            [path16 addLineToPoint:CGPointMake(440, 30)];
            CAShapeLayer *shapeLayer16 = [CAShapeLayer layer];
            shapeLayer16.path = [path16 CGPath];
            shapeLayer16.strokeColor = [UIColor whiteColor].CGColor;
            shapeLayer16.lineWidth = 10;
            [views.layer addSublayer:shapeLayer16];

            
        }

        //views.backgroundColor=[UIColor whiteColor];
       
        [views setTag:i];
        [scrollView addSubview:views];
        
        i++;
    }
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
