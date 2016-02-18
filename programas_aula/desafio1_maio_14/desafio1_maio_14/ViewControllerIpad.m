//
//  ViewControllerIpad.m
//  desafio1_maio_14
//
//  Created by LucasAndrade on 5/15/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewControllerIpad.h"
#import "ConfirmacaoViewIpad.h"
@interface ViewControllerIpad ()

@end

@implementation ViewControllerIpad

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
    //metodo para mudar label com valor do slider
    [super viewDidLoad];
    [_sliderIdade addTarget:self action:@selector(changelabel) forControlEvents:UIControlEventValueChanged];
    //metodos para quando o aplicativo entrar em background
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(enteredBackground)
                                                 name:UIApplicationDidEnterBackgroundNotification
                                               object:nil];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //metodo para descer teclado ao tocar fora da label
    [[self view] endEditing:YES];
}
- (IBAction)botaoLimpar:(id)sender {
    //limpando os valores de entrada
    _espacoNome.text = @"";
    _sliderIdade.value = 18.0;
    _espacoEmail.text = @"";
    _espacoTelefone.text = @"";
    _espacoUniversidade.text = @"";
    _espacoCurso.text = @"";
    _labelIdade.text = @"18";
    
}

- (IBAction)botaoEnviar:(id)sender {
    
    
    //criando variavel com diretorio
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *strPlist = [documentsPath stringByAppendingPathComponent:@"arquivo.plist"];
    
    //criando dicionario com as informacoes relavantes a serem gravadas
    NSMutableDictionary *arrInfo = [[NSMutableDictionary alloc]init];
    [arrInfo setObject:_espacoNome.text forKey:_labelIdade.text];
    [arrInfo setObject:_espacoNome.text forKey:_espacoEmail.text];
    [arrInfo setObject:_espacoNome.text forKey:_espacoTelefone.text];
    [arrInfo setObject:_espacoNome.text forKey:_espacoUniversidade.text];
    [arrInfo setObject:_espacoNome.text forKey:_espacoCurso.text];
    
    
    //gravando no plist
    [arrInfo writeToFile:strPlist atomically:YES];
    
    
    //indo apra tela de confirmacao
    ConfirmacaoViewIpad* confView = [[ConfirmacaoViewIpad alloc]init];
    
    [self presentViewController:confView animated:YES completion:nil];
    
}

-(IBAction)changelabel{
    //mudando o label de acordo com o valor do slider
    _labelIdade.text = [[NSString alloc]initWithFormat:@"%0.f",_sliderIdade.value];
}
-(void)enteredBackground{
    
    //metodo ao entrar em background
    NSLog(@"Gravação dos dados por background:");
    NSLog(@" Nome %@,idade %@, email %@, telefone %@, universidade %@, curso %@",_espacoNome.text,_espacoEmail.text,_espacoEmail.text,_espacoTelefone.text,_espacoUniversidade.text,_espacoCurso.text);
}
@end
