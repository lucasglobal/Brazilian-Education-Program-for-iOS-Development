//
//  ViewController.m
//  desafio1_maio_14
//
//  Created by Lucas Andrade on 5/14/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"
#import "ConfirmacaoViewIphone.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"entrou");
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     [_sliderIdade addTarget:self action:@selector(changelabel) forControlEvents:UIControlEventValueChanged];
    //Funcao caso o app entre em background e usando o método enteredBackground
    [[NSNotificationCenter defaultCenter] addObserver:self
selector:@selector(enteredBackground)
name:UIApplicationDidEnterBackgroundNotification
object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //metodo caso aconteca clique fora do label, descendo o teclado
    [[self view] endEditing:YES];
}
- (IBAction)botaoLimpar:(id)sender {
    //limpando as informacoes ao clicar o botao
    _espacoNome.text = @"";
    _sliderIdade.value = 18.0;
    _espacoEmail.text = @"";
    _espacoTelefone.text = @"";
    _espacoUniversidade.text = @"";
    _espacoCurso.text = @"";
    _labeIdade.text = @"18";

}

- (IBAction)botaoEnviar:(id)sender {
    
    
    //Criacao de variavel com diretorio e nome do arquivo
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *strPlist = [documentsPath stringByAppendingPathComponent:@"arquivo.plist"];
    
    NSLog(@" aaa %@",strPlist);
    
    //criando dicionario com dados necessarios
    NSMutableDictionary *arrInfo = [[NSMutableDictionary alloc]init];
    [arrInfo setObject:_espacoNome.text forKey:_labeIdade.text];
    [arrInfo setObject:_espacoNome.text forKey:_espacoEmail.text];
    [arrInfo setObject:_espacoNome.text forKey:_espacoTelefone.text];
    [arrInfo setObject:_espacoNome.text forKey:_espacoUniversidade.text];
    [arrInfo setObject:_espacoNome.text forKey:_espacoCurso.text];

    //escrevendo no arquivo
    [arrInfo writeToFile:strPlist atomically:YES];

    
    //passando para a tela de confirmacao
    ConfirmacaoViewIphone* confView = [[ConfirmacaoViewIphone alloc]init];
    [self presentViewController:confView animated:YES completion:nil];

}

-(IBAction)changelabel{
    //metodo para fazer com que label sempre tenha valor do slider
    _labeIdade.text = [[NSString alloc]initWithFormat:@"%0.f",_sliderIdade.value];
}
-(void)enteredBackground{
    //metodo para quando o aplicativo entrar em background
    NSLog(@"Gravação dos dados por background:");
    NSLog(@" Nome %@,idade %@, email %@, telefone %@, universidade %@, curso %@",_espacoNome.text,_espacoEmail.text,_espacoEmail.text,_espacoTelefone.text,_espacoUniversidade.text,_espacoCurso.text);
}
@end
