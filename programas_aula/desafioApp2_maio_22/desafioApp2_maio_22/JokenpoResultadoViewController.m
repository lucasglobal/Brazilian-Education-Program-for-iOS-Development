//
//  JokenpoResultadoViewController.m
//  desafioApp2_maio_22
//
//  Created by LucasAndrade on 5/23/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "JokenpoResultadoViewController.h"

@interface JokenpoResultadoViewController ()

@end

@implementation JokenpoResultadoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (id)initWithNumero:(int) numero
{
    //novo init criado para coletar as informações da tela anterior
    [self setNumero:numero];    
    
    return self;
}

- (void)viewDidLoad
{
    //todos os "IF" estão relacionados à quantidade de dedos que serão mostrados na imagem dependendo do número escolhido pelo usuário na tela anterior
    NSLog(@"aaaa %d",_numero);

    if(_numero == 0){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"pedra.jpg"]];
        pessoa.frame = CGRectMake(110,110, 90, 100);
        [self.view addSubview:pessoa];
        }
    if(_numero == 1){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"papel.jpg"]];
        pessoa.frame = CGRectMake(110,110, 90, 100);
        [self.view addSubview:pessoa];
        
    }
    if(_numero == 2){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoDois.jpg"]];
        pessoa.frame = CGRectMake(110,110, 90, 100);
        [self.view addSubview:pessoa];
        
    }
    
    
    
    
    //cria um número randomico que será usado como número que o PC escolheu
    int randNumeroPC = arc4random() % 2;
    
    //muda a quantidade de dedos que aparecerão na tela relacionado ao número randômico gerado para a jogada do PC
    if(randNumeroPC == 0){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"pedra.jpg"]];
        pessoa.frame = CGRectMake(110,410, 90, 100);
        [self.view addSubview:pessoa];
    }
    if(randNumeroPC == 1){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"papel.jpg"]];
        pessoa.frame = CGRectMake(110,410, 90, 100);
        [self.view addSubview:pessoa];
        
    }
    if(randNumeroPC== 2){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tesoura.jpg"]];
        pessoa.frame = CGRectMake(110,410, 90, 100);
        [self.view addSubview:pessoa];
    }
    
    //resultado gerado dependendo da escolha do usuário e do PC
    if(_numero == randNumeroPC){
        _labelResultado.text = @"DEU EMPATE";
        _labelResultado.textColor = [UIColor brownColor];
    }
    else if((_numero == 0) && (randNumeroPC  == 1)){
        _labelResultado.text = @"VOCE PERDEU!!!";
        _labelResultado.textColor = [UIColor redColor];
    }
    else if((_numero == 0) && (randNumeroPC  == 2)){
        _labelResultado.text = @"VOCE GANHOU!!!";
        _labelResultado.textColor = [UIColor greenColor];
    }

    
    
    
        [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoJogarNovamente:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
