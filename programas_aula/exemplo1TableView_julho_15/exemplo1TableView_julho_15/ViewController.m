//
//  ViewController.m
//  exemplo1TableView_julho_15
//
//  Created by Lucas Andrade on 7/15/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize refresh;
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
    self.numeros = [[NSMutableArray alloc]initWithObjects:@"Um",@"Dois",@"Três",@"Quatro",@"Cinco",@"Seis",@"Sete",@"Oito",@"Nove",@"Dez", nil];
    [self setTitle:@"Minha TableView"];
    [self.navigationItem setLeftBarButtonItem:self.editButtonItem];
    UIBarButtonItem* adicionar = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(alertaNovoObjeto)];
    self.navigationItem.rightBarButtonItem = adicionar;
    refresh = [[UIRefreshControl alloc]init];
    [refresh addTarget:self action:@selector(refreshingAction) forControlEvents:UIControlEventValueChanged];
    [self.tableView addSubview:refresh];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.numeros count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* identificador = @"Celula";
    UITableViewCell* celula = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identificador];
    if(celula == nil){
        celula = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identificador];
    }
    celula.textLabel.text = [self.numeros objectAtIndex:indexPath.row];
    celula.imageView.image = [UIImage imageNamed:@"doida.jpeg"];
    return celula;
}
-(void)setEditing:(BOOL)editing animated:(BOOL)animated{
    [super setEditing:editing animated:animated];
    [self.tableView setEditing:editing animated:animated];
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete){
        [self.numeros removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}
-(void)alertaNovoObjeto{
    UIAlertView* alerta = [[UIAlertView alloc]initWithTitle:@"Digite o número" message:nil delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"OK", nil];
    [alerta setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [alerta show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 1){
        NSString* texto = [alertView textFieldAtIndex:0].text;
        [self.numeros insertObject:texto atIndex:0];
        NSIndexPath* indice = [NSIndexPath indexPathForRow:0 inSection:0];
        [self.tableView insertRowsAtIndexPaths:@[indice] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

-(void)refreshingAction{
    NSLog(@"FOI");
    UIAlertView* alerta = [[UIAlertView alloc]initWithTitle:@"Digite o número" message:nil delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Ok", nil];
    [alerta setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [alerta show];
    [refresh endRefreshing];
}
@end
