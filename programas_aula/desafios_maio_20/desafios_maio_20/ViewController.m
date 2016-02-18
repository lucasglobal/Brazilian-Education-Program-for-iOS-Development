//
//  ViewController.m
//  desafios_maio_20
//
//  Created by LucasAndrade on 5/20/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "ViewController.h"
#import "DesenhoPaisViewController.h"
#import "viewJapao.h"
#import "viewFranca.h"
#import "viewSuica.h"
#import "viewChile.h"
#import "viewGrecia.h"
#import "viewBrasil.h"
#import "viewCoreiaSul.h"

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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//para cada botao, cria-se a view do determinado país e entao usa-se a viewcontroller padrao para todos para conseguir adicionar a subview(de cada pais)
- (IBAction)botaoJapao:(id)sender {
    
    CGRect firstFrame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y+42, self.view.bounds.size.width, self.view.bounds.size.height);
    viewJapao* japaoView = [[viewJapao alloc]initWithFrame:firstFrame];

    DesenhoPaisViewController* DPViewController = [[DesenhoPaisViewController alloc]init];
    [DPViewController.view addSubview:japaoView];
    
    [self presentViewController:DPViewController animated:YES completion:nil];

}

- (IBAction)botaoFranca:(id)sender {
    CGRect firstFrame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y+42, self.view.bounds.size.width, self.view.bounds.size.height);
    viewFranca* francaView = [[viewFranca alloc]initWithFrame:firstFrame];
    
    DesenhoPaisViewController* DPViewController = [[DesenhoPaisViewController alloc]init];
    [DPViewController.view addSubview:francaView];
    
    [self presentViewController:DPViewController animated:YES completion:nil];

}

- (IBAction)botaoSuica:(id)sender {
    CGRect firstFrame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y+42, self.view.bounds.size.width, self.view.bounds.size.height);
    viewSuica* suicaView = [[viewSuica alloc]initWithFrame:firstFrame];
    
    DesenhoPaisViewController* DPViewController = [[DesenhoPaisViewController alloc]init];
    [DPViewController.view addSubview:suicaView];
    
    [self presentViewController:DPViewController animated:YES completion:nil];
}

- (IBAction)botaoChile:(id)sender {
    CGRect firstFrame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y+42, self.view.bounds.size.width, self.view.bounds.size.height);
    viewChile* chileView = [[viewChile alloc]initWithFrame:firstFrame];
    
    DesenhoPaisViewController* DPViewController = [[DesenhoPaisViewController alloc]init];
    [DPViewController.view addSubview:chileView];
    
    [self presentViewController:DPViewController animated:YES completion:nil];
}

- (IBAction)botaoBrasil:(id)sender {
    CGRect firstFrame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y+42, self.view.bounds.size.width, self.view.bounds.size.height);
    viewBrasil* brasilView = [[viewBrasil alloc]initWithFrame:firstFrame];
    
    DesenhoPaisViewController* DPViewController = [[DesenhoPaisViewController alloc]init];
    [DPViewController.view addSubview:brasilView];
    
    [self presentViewController:DPViewController animated:YES completion:nil];
}

- (IBAction)botaoGrecia:(id)sender {
    CGRect firstFrame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y+42, self.view.bounds.size.width, self.view.bounds.size.height);
    viewGrecia* greciaView = [[viewGrecia alloc]initWithFrame:firstFrame];
    
    DesenhoPaisViewController* DPViewController = [[DesenhoPaisViewController alloc]init];
    [DPViewController.view addSubview:greciaView];
    
    [self presentViewController:DPViewController animated:YES completion:nil];
}

- (IBAction)botaoCoreiaDoSul:(id)sender {
    CGRect firstFrame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y+42, self.view.bounds.size.width, self.view.bounds.size.height);
    viewCoreiaSul* coreiaSulView = [[viewCoreiaSul alloc]initWithFrame:firstFrame];
    
    DesenhoPaisViewController* DPViewController = [[DesenhoPaisViewController alloc]init];
    [DPViewController.view addSubview:coreiaSulView];
    
    [self presentViewController:DPViewController animated:YES completion:nil];

}

@end
