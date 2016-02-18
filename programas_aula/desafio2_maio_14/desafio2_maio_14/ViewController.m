//
//  ViewController.m
//  desafio2_maio_14
//
//  Created by LucasAndrade on 5/15/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end


@implementation ViewController


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
    //metodo caso o app entre em background
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(enteredBackground)
                                                 name:UIApplicationDidBecomeActiveNotification
                                               object:nil];
    // Output for locale en_US: "formattedNumberString: formattedNumberString: 122,344.45"

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoLimpar:(id)sender {
    //limpando os valores de entrada
    _campoTitulo.text = @"";
    _campoCodigoIBSN.text = @"";
    _campoCodigoRegistro.text = @"";
}



- (IBAction)botaoEnviar:(id)sender {
    
    //salvando os dados no objeto Publicacao que é um atributo da viewController fechando a possiblidade de existir outros dados
    [[self publicacao] setTitulo:[[self campoTitulo] text]];
    [[self publicacao] setAutores:[[self campoAutor] text]];
    [[self publicacao] setCodigoIBSN:[[self campoCodigoIBSN] text]];
    [[self publicacao] setCodigoRegistro:[[self campoCodigoRegistro] text]];

    //criando variavel com o destino
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *strPlist = [documentsPath stringByAppendingPathComponent:@"arquivo.plist"];
  
    //criando dicionario com dados a serem salvos na plist
    NSMutableDictionary *arrInfo = [[NSMutableDictionary alloc]init];
    [arrInfo setObject:_campoTitulo.text forKey:@"Titulo"];
    [arrInfo setObject:_campoAutor.text forKey:@"Autor"];
    [arrInfo setObject:_campoCodigoIBSN.text forKey:@"Codigo IBSN"];
    [arrInfo setObject:_campoCodigoRegistro forKey:@"Codigo de Registro"];
    
    [arrInfo writeToFile:strPlist atomically:YES];
    
    //lendo os dados que estao dentro da plist
    NSMutableDictionary* dicLido = [[NSMutableDictionary alloc]initWithContentsOfFile:strPlist];
    NSLog(@"%@",dicLido);

    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //descendo o teclado caso seja clicado fora do label
    [[self view] endEditing:YES];
}
-(void)enteredBackground{
    //metodo caso o app tenha entrado em background
    //criando variavel com o destino
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *strPlist = [documentsPath stringByAppendingPathComponent:@"arquivo.plist"];
    
    //verificando caso o arquivo existe e então lendo ele no console
    if ([[NSFileManager defaultManager]fileExistsAtPath: strPlist ] == YES){
        
        NSMutableDictionary* dicLido = [[NSMutableDictionary alloc]initWithContentsOfFile:strPlist];
        NSLog(@"%@",dicLido);
    }
    else
        NSLog (@"Nao há registro armazenado");
    
}

@end
