//
//  SegundaViewController.m
//  desafio1_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "SegundaViewController.h"
#import "Dados.h"
@interface SegundaViewController ()

@end

@implementation SegundaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        UINavigationItem* itemNav = self.navigationItem;
        UIBarButtonItem* editButton = [[UIBarButtonItem alloc]initWithTitle:@"Ok" style:UIBarButtonItemStylePlain target:self action:@selector(botaoOK:)];
        itemNav.rightBarButtonItem = editButton;

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
-(IBAction)botaoOK:(id)sender{
    NSLog(@"alteracao realizada");
    [[Dados shared]setarSharedIdade: [self.fieldIdade.text intValue]];
    [[Dados shared]setarSharedAltura:[self.fieldAltura.text floatValue]];
    [[Dados shared]setarSharedPeso:[self.fieldPeso.text floatValue]];
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)viewWillAppear:(BOOL)animated{
    Dados* dadosAux = [[Dados shared]obterShared];
    self.fieldIdade.text = [[NSString alloc]initWithFormat:@"%d",dadosAux.idade];
    self.fieldAltura.text = [[NSString alloc]initWithFormat:@"%f",dadosAux.altura];
    self.fieldPeso.text = [[NSString alloc]initWithFormat:@"%f",dadosAux.peso];
}
@end
