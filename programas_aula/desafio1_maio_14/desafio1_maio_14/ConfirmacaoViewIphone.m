//
//  ConfirmacaoViewIphone.m
//  desafio1_maio_14
//
//  Created by Lucas Andrade on 5/14/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ConfirmacaoViewIphone.h"
#import "ViewController.h"
@interface ConfirmacaoViewIphone ()

@end

@implementation ConfirmacaoViewIphone

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

- (IBAction)botaoConfirmacaoView:(id)sender {
    //voltando a tela anterior
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)botaoNovoCadastro:(id)sender {
    //criando nova tela para cadastro
    ViewController* viewC = [[ViewController alloc]init];
    [self presentViewController:viewC animated:YES completion:nil];
}

@end
