//
//  InicialViewController.m
//  desafio1_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "InicialViewController.h"
#import "SegundaViewController.h"
#import "Dados.h"
@interface InicialViewController ()

@end

@implementation InicialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        
    }
    return self;
}
-(id)init{
    self = [super init];
    if(self){
        UINavigationItem* itemNav = self.navigationItem;
        UIBarButtonItem* editButton = [[UIBarButtonItem alloc]initWithTitle:@"Editar" style:UIBarButtonItemStylePlain target:self action:@selector(botaoEditar:)];
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
-(IBAction)botaoEditar:(id)sender{
    NSLog(@"editando");
    SegundaViewController* SVC = [[SegundaViewController alloc]init];
    [self.navigationController pushViewController:SVC animated:YES];
}
-(void)viewWillAppear:(BOOL)animated{
    Dados* dadosAux = [[Dados shared]obterShared];
    self.labelIdade.text = [[NSString alloc]initWithFormat:@"%d",dadosAux.idade];
    self.labelAltura.text = [[NSString alloc]initWithFormat:@"%f",dadosAux.altura];
    self.labelPeso.text = [[NSString alloc]initWithFormat:@"%f",dadosAux.peso];

}
@end
