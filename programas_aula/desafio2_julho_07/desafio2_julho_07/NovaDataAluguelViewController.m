//
//  NovaDataAluguelViewController.m
//  desafio2_julho_07
//
//  Created by Lucas Andrade on 7/10/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "NovaDataAluguelViewController.h"
#import "Carro.h"
@interface NovaDataAluguelViewController ()

@end

@implementation NovaDataAluguelViewController
@synthesize picker;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    
    }
    return self;
}
-(id)initWithCar:(Carro*)carro{
    self.carro = carro;
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

- (IBAction)botaoFinalizar:(id)sender {
    NSLog(@"data antes : %@",self.carro.dataFinalAluguel);
    NSLog(@"carro: %@",self.carro.nome);
    self.carro.dataInicioAluguel = [[NSDate alloc]init];
    self.carro.dataFinalAluguel = self.dataPicker.date;
    NSLog(@"data depois: %@",self.carro.dataFinalAluguel);
    self.carro.status = @"alugado";
    [self.navigationController popToRootViewControllerAnimated:YES];

}


@end
