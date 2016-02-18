//
//  ResultadojogoViewController.m
//  desafioApp2_maio_22
//
//  Created by LucasAndrade on 5/22/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "ResultadojogoViewController.h"

@interface ResultadojogoViewController ()

@end

@implementation ResultadojogoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (id)initWithNumero:(int) numero Tipo:(int) tipo
{
        //novo init criado para coletar as informações da tela anterior
        [self setNumero:numero];
        [self setTipo:tipo];
        
    
    return self;
}

- (void)viewDidLoad
{
    //todos os "IF" estão relacionados à quantidade de dedos que serão mostrados na imagem dependendo do número escolhido pelo usuário na tela anterior
    if(self.numero == 0){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoUm.jpg"]];
        pessoa.frame = CGRectMake(110,110, 90, 100);
        [self.view addSubview:pessoa];
    }
    if(self.numero == 1){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoDois.jpg"]];
        pessoa.frame = CGRectMake(110,110, 90, 100);
        [self.view addSubview:pessoa];
        
    }
    if(self.numero == 2){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoTres.jpg"]];
        pessoa.frame = CGRectMake(110,110, 90, 100);
        [self.view addSubview:pessoa];
        
    }
    if(self.numero == 3){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoQuatro.jpg"]];
        pessoa.frame = CGRectMake(110,110, 90, 100);
        [self.view addSubview:pessoa];
        
    }
    if(self.numero == 4){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoCinco.jpg"]];
        pessoa.frame = CGRectMake(110,110, 90, 100);
        [self.view addSubview:pessoa];
        
    }


    
    
    //muda o texto com a escolha de impar ou par do usuário na tela anterior
    if(self.tipo == 0){
        self.labelTipoVoce.text = @"PAR";
    }
    else{
        self.labelTipoVoce.text = @"ÍMPAR";
    }
    
    //cria um número randomico que será usado como número que o PC escolheu
    int randNumeroPC = (arc4random() % (5 - 1 + 1)) + 1;
    
    //muda a escolha do PC dependendo da escolha anterior do usuário
    if([self.labelTipoVoce.text isEqualToString:@"PAR"]){
        self.labelTipoPC.text = @"ÍMPAR";
    }
    else{
        self.labelTipoPC.text = @"PAR";
    }
    
    //muda a quantidade de dedos que aparecerão na tela relacionado ao número randômico gerado para a jogada do PC
    if(randNumeroPC == 1){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoUm.jpg"]];
        pessoa.frame = CGRectMake(110,410, 90, 100);
        [self.view addSubview:pessoa];
    }
    if(randNumeroPC == 2){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoDois.jpg"]];
        pessoa.frame = CGRectMake(110,410, 90, 100);
        [self.view addSubview:pessoa];
        
    }
    if(randNumeroPC== 3){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoTres.jpg"]];
        pessoa.frame = CGRectMake(110,410, 90, 100);
        [self.view addSubview:pessoa];
        
    }
    if(randNumeroPC== 4){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoQuatro.jpg"]];
        pessoa.frame = CGRectMake(110,410, 90, 100);
        [self.view addSubview:pessoa];
        
    }
    if(randNumeroPC == 5){
        UIImageView* pessoa = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dedoCinco.jpg"]];
        pessoa.frame = CGRectMake(110,410, 90, 100);
        [self.view addSubview:pessoa];
        
    }

    
    //se o resultado for par, mudará a mensagem de resultado dependendo das escolhas do usuário
    if((((self.numero) + 1) + randNumeroPC)%2 == 0){
        //caso escolha do usuário tenha sido par
        if([self.labelTipoVoce.text isEqualToString: @"PAR"]){
          self.labelResultado.text = [[NSString alloc]initWithFormat:@"GANHOU! DEU PAR, DEU %d",(((self.numero) + 1) + randNumeroPC)];
            self.labelResultado.textColor = [UIColor greenColor];
        }
        else{
            //caso a escolha do usuário tenha sido ímpar
            self.labelResultado.text = [[NSString alloc]initWithFormat:@"PERDEU! DEU PAR, DEU %d",(((self.numero) + 1) + randNumeroPC)];
            self.labelResultado.textColor = [UIColor redColor];
        }
    }
    //se o resultado for impar, mudará a mensagem do resultado dependendo das escolhas do usuário
    else{
        //caso a escolha do usuário tenha sido impar
        if([self.labelTipoVoce.text isEqualToString: @"ÍMPAR"]){
            self.labelResultado.text = [[NSString alloc]initWithFormat:@"GANHOU! DEU ÍMPAR, DEU %d",(((self.numero) + 1) + randNumeroPC)];
            self.labelResultado.textColor = [UIColor greenColor];
        }
        else{
            //caso a escolha do usuário tenha sido par
            self.labelResultado.text = [[NSString alloc]initWithFormat:@"PERDEU! DEU ÍMPAR, DEU %d",(((self.numero) + 1) + randNumeroPC)];
            self.labelResultado.textColor = [UIColor redColor];
        }
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
