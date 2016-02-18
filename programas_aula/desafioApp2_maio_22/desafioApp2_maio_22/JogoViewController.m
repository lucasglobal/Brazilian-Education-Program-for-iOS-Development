//
//  JogoViewController.m
//  desafioApp2_maio_22
//
//  Created by LucasAndrade on 5/22/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "JogoViewController.h"
#import "ResultadojogoViewController.h"
#import "JokenpoResultadoViewController.h"

@interface JogoViewController ()

@end

@implementation JogoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
        // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoJogar:(id)sender {
    
    //criando a controller de resultado e passando os parâmetros que serão usados
    if(_campoJogo.selectedSegmentIndex == 0){
        ResultadojogoViewController* resultadoVC = [[ResultadojogoViewController alloc]initWithNumero:_campoNumero.selectedSegmentIndex Tipo:_campoTipoNumero.selectedSegmentIndex];
        
        //passando para a tela de resultado
        [self presentViewController:resultadoVC animated:YES completion:nil];
    }
    else{
       
        JokenpoResultadoViewController* jokenVC = [[JokenpoResultadoViewController alloc]initWithNumero:_campoJogadaJoken.selectedSegmentIndex];
        
        //passando para a tela de resultado
        [self presentViewController:jokenVC animated:YES completion:nil];
    }

}
@end
