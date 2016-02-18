//
//  SegundaViewController.m
//  desafio2_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "SegundaViewController.h"
#import "Carro.h"
#import "NovaDataAluguelViewController.h"
@interface SegundaViewController ()

@end

@implementation SegundaViewController

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
-(id)initwithCar: (Carro*)carro {
    self.carro = carro;
//    
//    fusca = [[Carro alloc]init];
//    fusca.nome = @"Fusca";
//    fusca.modelo = 1990;
//    fusca.placa = @"JJH-1911";
//    fusca.valorDiaria = 100;
//    fusca.dataInicioAluguel = nil;
//    fusca.dataFinalAluguel = nil;
//    fusca.status = @"disponível";

    UILabel* nomeCarro1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 10,300,100)];
    nomeCarro1.text = [[NSString alloc]initWithFormat:@"Nome: %@",carro.nome];
    [nomeCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
    [self.view addSubview:nomeCarro1];
    UILabel* modeloCarro1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 60,300,100)];
    modeloCarro1.text = [[NSString alloc]initWithFormat:@"Modelo: %d",carro.modelo];
    [modeloCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
    [self.view addSubview:modeloCarro1];
    UILabel* placaCarro1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 110,300,100)];
    placaCarro1.text = [[NSString alloc]initWithFormat:@"Placa: %@",carro.placa];
    [placaCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
    [self.view addSubview:placaCarro1];
    UILabel* valorCarro1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 160,300,100)];
    valorCarro1.text = [[NSString alloc]initWithFormat:@"Valor: %d",carro.valorDiaria];
    [valorCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
    [self.view addSubview:valorCarro1];
    UILabel* statusCarro1 = [[UILabel alloc]initWithFrame:CGRectMake(130, self.view.bounds.size.height-120, 140, 55)];
    statusCarro1.text = [[NSString alloc]initWithFormat:@"%@",carro.status];
    [self.view addSubview:statusCarro1];
    

    
    
    
    if([carro.status  isEqual: @"alugado"]){
        
        UILabel* dataInicioCarro1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 240,300,100)];
        dataInicioCarro1.text = @"Data de aluguel:";
        [dataInicioCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:30]];
        [self.view addSubview:dataInicioCarro1];
        UILabel* dataInicioCarro2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 280,300,100)];
        dataInicioCarro2.text =[[NSString alloc]initWithFormat:@"%@",carro.dataInicioAluguel];
        [dataInicioCarro2 setFont:[UIFont fontWithName:@"HelveticaNeue" size:30]];
        [self.view addSubview:dataInicioCarro2];
        
        UILabel* dataFinalCarro1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 330,300,100)];
        dataFinalCarro1.text = @"Data de devolução:";
        [dataFinalCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:30]];
        [self.view addSubview:dataFinalCarro1];
        UILabel* dataFinalCarro2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 370,300,100)];
        dataFinalCarro2.text =[[NSString alloc]initWithFormat:@"%@",carro.dataFinalAluguel];
        [dataFinalCarro2 setFont:[UIFont fontWithName:@"HelveticaNeue" size:30]];
        [self.view addSubview:dataFinalCarro2];
        
        
        UIButton* botaoProxima = [[UIButton alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height-120, 100, 55)];
        [botaoProxima setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [botaoProxima addTarget:self action:@selector(botaoRetorno) forControlEvents:UIControlEventTouchUpInside];
        [botaoProxima setTitle:@"Retorno" forState:UIControlStateNormal];
        [self.view addSubview:botaoProxima];

        UIButton* botaoProxima1 = [[UIButton alloc] initWithFrame:CGRectMake(220, self.view.bounds.size.height-120, 100, 55)];
        [botaoProxima1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [botaoProxima1 addTarget:self action:@selector(botaoOficina) forControlEvents:UIControlEventTouchUpInside];
        [botaoProxima1 setTitle:@"Oficina" forState:UIControlStateNormal];
        [self.view addSubview:botaoProxima1];
        
        statusCarro1.textColor = [UIColor redColor];
        
        float quantidadeDeTempoAlugado = (((carro.dataInicioAluguel.timeIntervalSinceNow/60)/60))/24;
        UILabel* quantidadeDias = [[UILabel alloc]initWithFrame:CGRectMake(0,0,300,50)];
        quantidadeDias.text = [[NSString alloc]initWithFormat:@"%.f dias alugado",quantidadeDeTempoAlugado];
        if([quantidadeDias.text isEqualToString:@"-0 dias alugado"]){
            quantidadeDias.text = @"0 dias alugado";
        }

        quantidadeDias.textColor = [UIColor redColor];
        [quantidadeDias setFont:[UIFont fontWithName:@"HelveticaNeue" size:20]];
        [self.view addSubview:quantidadeDias];
        
        
    }
    else if([carro.status isEqualToString:@"disponível"]){
        UIButton* botaoProxima = [[UIButton alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height-120, 100, 55)];
        [botaoProxima setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [botaoProxima addTarget:self action:@selector(botaoAlugar) forControlEvents:UIControlEventTouchUpInside];
        [botaoProxima setTitle:@"Alugar" forState:UIControlStateNormal];
        [self.view addSubview:botaoProxima];
        
        UIButton* botaoProxima1 = [[UIButton alloc] initWithFrame:CGRectMake(220, self.view.bounds.size.height-120, 100, 55)];
        [botaoProxima1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [botaoProxima1 addTarget:self action:@selector(botaoOficina) forControlEvents:UIControlEventTouchUpInside];
        [botaoProxima1 setTitle:@"Oficina" forState:UIControlStateNormal];
        [self.view addSubview:botaoProxima1];
        
        statusCarro1.textColor = [UIColor greenColor];
        
        float quantidadeDeTempoAlugado = -(((carro.dataUltimaEntrega.timeIntervalSinceNow/60)/60))/24;
    
        UILabel* quantidadeDias = [[UILabel alloc]initWithFrame:CGRectMake(0,0,300,50)];
        quantidadeDias.text = [[NSString alloc]initWithFormat:@"%.f dias disponível",quantidadeDeTempoAlugado];
        if([quantidadeDias.text isEqualToString:@"-0 dias disponíveis"]){
            quantidadeDias.text = @"0 dias disponíveis";
        }
        quantidadeDias.textColor = [UIColor greenColor];
        [quantidadeDias setFont:[UIFont fontWithName:@"HelveticaNeue" size:20]];
        [self.view addSubview:quantidadeDias];

    }
    else if([carro.status isEqualToString:@"oficina"]){
        UIButton* botaoProxima = [[UIButton alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height-120, 100, 55)];
        [botaoProxima setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [botaoProxima addTarget:self action:@selector(botaoRetorno) forControlEvents:UIControlEventTouchUpInside];
        [botaoProxima setTitle:@"Retorno" forState:UIControlStateNormal];
        [self.view addSubview:botaoProxima];
        
        statusCarro1.textColor = [UIColor orangeColor];

    }
    
    
    return self;
}
-(void)botaoAlugar{
    NSLog(@"foi pro alugar");
    NovaDataAluguelViewController* novaDataVC = [[NovaDataAluguelViewController alloc]initWithCar:self.carro];
    [self.navigationController pushViewController:novaDataVC animated:YES];

}
-(void)botaoOficina{
    NSLog(@"foi para oficina");
    self.carro.status = @"oficina";
    self.carro.dataFinalAluguel = nil;
    [self.navigationController popViewControllerAnimated:YES];
    }
-(void)botaoRetorno{
    NSLog(@"foi para retorno");
    self.carro.status = @"disponível";
    self.carro.dataFinalAluguel = nil;
    self.carro.dataUltimaEntrega = [[NSDate alloc]init];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
