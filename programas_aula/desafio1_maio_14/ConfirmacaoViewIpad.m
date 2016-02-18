//
//  ConfirmacaoViewIpad.m
//  desafio1_maio_14
//
//  Created by LucasAndrade on 5/15/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ConfirmacaoViewIpad.h"
#import "ViewControllerIpad.h"
@interface ConfirmacaoViewIpad ()

@end

@implementation ConfirmacaoViewIpad

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
    //voltando para tela anterior
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)botaoNovoCadastro:(id)sender {
    //criando nova tela de cadastro
    ViewControllerIpad* viewC = [[ViewControllerIpad alloc]init];
    [self presentViewController:viewC animated:YES completion:nil];
}

@end
