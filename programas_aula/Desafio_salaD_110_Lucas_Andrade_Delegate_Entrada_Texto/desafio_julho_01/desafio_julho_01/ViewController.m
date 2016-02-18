//
//  ViewController.m
//  desafio_julho_01
//
//  Created by Lucas Andrade on 7/1/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize dataForm;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [_scrollView setScrollEnabled:YES];
        
        _scrollView.contentSize = CGSizeMake(320, 800);
        _scrollView.delegate = self;
        [_scrollView addSubview:_nomeField];
        [self.scrollView addSubview:self.contentView];
        self.scrollView.contentSize = self.contentView.bounds.size;
//        [self.view addSubview:_scrollView];
        _nomeField.delegate = self;
        
        
        
        
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

- (IBAction)botaoEnviar:(id)sender {
    
    
    if((_nomeField.text.length < 2) || (_cpfField.text.length == 0) || (_senhaField.text.length < 6)){
        if(_nomeField.text.length <2){
            UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Nome Pequeno" message:@"Nome deve te no mínimo 2 letras" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
            [alert show];
        }
        else if(_cpfField.text.length == 0){
            UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"CPF inválido" message:@"CPF deve ser preenchido" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
            [alert show];
        }
        else{
            UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Senha inválida" message:@"Senha deve ter no mínimo 6 caracteres, sendo 2 maiúsculas e 2 números" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
            [alert show];
        }
    }
    
    int quantMaisculo = 0;
    int quantNum = 0;
    for (int i = 0; i < [_senhaField.text length]; i++)
    {
        unichar c = [_senhaField.text characterAtIndex:i];
        if([[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:c]){
            quantMaisculo++;
        }
        else if([[NSCharacterSet decimalDigitCharacterSet]characterIsMember:c]){
            quantNum++;
        }

    }
    if(quantMaisculo < 2 || _senhaField.text.length < 6){
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Senha inválida" message:@"Senha deve ter no mínimo 6 caracteres, sendo 2 maiúsculas e 2 números" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
        [alert show];
    }
    else if(quantNum < 2 || _senhaField.text.length < 6){
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Senha inválida" message:@"Senha deve ter no mínimo 6 caracteres, sendo 2 maiúsculas e 2 números" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
        [alert show];
    }
    
    else{
        
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Confirmação" message:@"Cadastrado com sucesso" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: @"Cancelar", nil];
        [alert show];
 
    }
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //metodo caso aconteca clique fora do label, descendo o teclado
    
    [[self view] endEditing:YES];
    if(_telefoneField.text.length != 18){
        _telefoneField.text = @"";
    }
}
-(BOOL)textFieldShouldReturn:(UITextField*)textField;
{
    if (textField == _nomeField) {
        if(textField.text.length < 2){
            UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Nome Pequeno" message:@"Nome deve te no mínimo 2 letras" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
            [alert show];

        }
        else{
            [_cpfField becomeFirstResponder];

        }
    }
    if(textField == _cpfField){
        if(_cpfField.text.length == 0){
            UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"CPF inválido" message:@"CPF deve ser preenchido" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
            [alert show];
        }
        else{
            [_telefoneField becomeFirstResponder];
        }
    }
    else if(textField == _telefoneField){
        [_senhaField becomeFirstResponder];
    }
    else if(textField == _senhaField){
    
    
    int quantMaisculo = 0;
    int quantNum = 0;
    for (int i = 0; i < [_senhaField.text length]; i++)
    {
        unichar c = [_senhaField.text characterAtIndex:i];
        if([[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:c]){
            quantMaisculo++;
        }
        else if([[NSCharacterSet decimalDigitCharacterSet]characterIsMember:c]){
            quantNum++;
        }
        
    }
    if(quantMaisculo < 2 || _senhaField.text.length < 6){
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Senha inválida" message:@"Senha deve ter no mínimo 6 caracteres, sendo 2 maiúsculas e 2 números" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
        [alert show];
    }
    else if(quantNum < 2 || _senhaField.text.length < 6){
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Senha inválida" message:@"Senha deve ter no mínimo 6 caracteres, sendo 2 maiúsculas e 2 números" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
        [alert show];
    }

        [_senhaField resignFirstResponder];
    }


    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if(textField == _nomeField){
        if(textField.text.length < 2){
            _nomeField.enablesReturnKeyAutomatically = YES;
        }
        else{
            _nomeField.enablesReturnKeyAutomatically = NO;
        }
    }
    if(textField == _cpfField){
        if(range.location == 3 || range.location == 7){
            NSString* strAux = [NSString stringWithFormat:@"%@.",textField.text];
            textField.text = strAux;
        }
        if(range.location == 11){
            NSString* strAux = [NSString stringWithFormat:@"%@/",textField.text];
            textField.text = strAux;
        }
        if(range.location == 14){
            [_cpfField resignFirstResponder];
        }
    }
    if(textField == _telefoneField){
        if(range.location == 0){
            NSString* strAux = [NSString stringWithFormat:@"[%@+",textField.text];
            textField.text = strAux;
        }
        if(range.location == 4){
            NSString* strAux = [NSString stringWithFormat:@"%@](",textField.text];
            textField.text = strAux;
        }
        if(range.location == 8){
            NSString* strAux = [NSString stringWithFormat:@"%@)",textField.text];
            textField.text = strAux;
        }
        if(range.location == 13){
            NSString* strAux = [NSString stringWithFormat:@"%@-",textField.text];
            textField.text = strAux;
        }
        if(range.location == 18){
            [_telefoneField resignFirstResponder];
        }
    }
    
    return YES;

}
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if([alertView.message isEqualToString:@"Cadastrado com sucesso" ]){
        if(buttonIndex == 0){
            dataForm = nil;
            dataForm = [[NSDate alloc]init];
            
            NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
            NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
            
            NSString *docfilePath = [basePath stringByAppendingPathComponent:@"playerData.plist"];
            
            NSMutableDictionary* plistdict  = [[NSMutableDictionary alloc]init];
            [plistdict setObject:_nomeField.text forKey: @"nome"];
            [plistdict setObject:_cpfField.text  forKey: @"cpf"];
            [plistdict setObject:_telefoneField.text forKey: @"telefone"];
            [plistdict setObject:_senhaField.text forKey:@"senha"];
            [plistdict setObject:dataForm forKey:@"data"];
            [plistdict writeToFile:docfilePath atomically:YES];
        }
        else{
            UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Cancelado" message:@"Dados não salvos" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
            [alert show];
        }
    }
}
@end
