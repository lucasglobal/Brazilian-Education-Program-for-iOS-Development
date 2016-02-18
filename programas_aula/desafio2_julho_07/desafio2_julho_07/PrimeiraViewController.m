//
//  PrimeiraViewController.m
//  desafio2_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "PrimeiraViewController.h"
#import "Carro.h"
#import "SegundaViewController.h"

@interface PrimeiraViewController ()

@end

@implementation PrimeiraViewController
@synthesize scrollCarros,fusca,ferrari,sandero;

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
        UIBarButtonItem* botaoOlhar = [[UIBarButtonItem alloc]initWithTitle:@"Atualizar" style:UIBarButtonItemStylePlain target:self action:@selector(acaoBotaOlhar:)];
        self.navigationItem.rightBarButtonItem = botaoOlhar;
        
        
        scrollCarros = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        
        scrollCarros.contentSize = CGSizeMake(scrollCarros.frame.size.width * 3,
                                            scrollCarros.frame.size.height-100);
        
        scrollCarros.pagingEnabled=YES;
        scrollCarros.delegate = self;
        [self.view addSubview:scrollCarros];

        
        fusca = [[Carro alloc]init];
        fusca.nome = @"Fusca";
        fusca.modelo = 1990;
        fusca.placa = @"JJH-1911";
        fusca.valorDiaria = 100;
        fusca.dataInicioAluguel = nil;
        fusca.dataFinalAluguel = nil;
        fusca.status = @"disponível";
        
        NSString *str =@"6/09/2014 9:15 PM";
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        [formatter setDateFormat:@"MM/dd/yyyy HH:mm a"];
        NSDate *date = [formatter dateFromString:str];
        NSLog(@"%@",date);
        
        fusca.dataUltimaEntrega = date;
        
        UILabel* nomeCarro1 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*0, 100,300,100)];
        nomeCarro1.text = [[NSString alloc]initWithFormat:@"Nome: %@",fusca.nome];
        [nomeCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
        [scrollCarros addSubview:nomeCarro1];
        UILabel* placaCarro1 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*0, 150,300,100)];
        placaCarro1.text = [[NSString alloc]initWithFormat:@"Placa: %@",fusca.placa];
        [placaCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
        [scrollCarros addSubview:placaCarro1];
        UILabel* statusCarro1 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*0, 200,300,100)];
        statusCarro1.text = [[NSString alloc]initWithFormat:@"Status: %@",fusca.status];
        [statusCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
        [scrollCarros addSubview:statusCarro1];
        
        ferrari = [[Carro alloc]init];
        ferrari.nome = @"Ferrari";
        ferrari.modelo = 1981;
        ferrari.placa = @"AJD-1231";
        ferrari.valorDiaria = 3000;
        
        NSString *str2 =@"7/10/2014 9:15 PM";
        NSDateFormatter *formatter2 = [[NSDateFormatter alloc]init];
        [formatter2 setDateFormat:@"MM/dd/yyyy HH:mm a"];
        NSDate *date2 = [formatter dateFromString:str2];
        NSLog(@"%@",date2);
        
        ferrari.dataInicioAluguel = date2;
        
        NSString *str3 =@"7/11/2014 9:15 PM";
        NSDateFormatter *formatter3 = [[NSDateFormatter alloc]init];
        [formatter3 setDateFormat:@"MM/dd/yyyy HH:mm a"];
        NSDate *date3 = [formatter dateFromString:str3];
        NSLog(@"date 3 %@",date3);
        

        ferrari.dataFinalAluguel = date3;
        ferrari.status = @"alugado";
        UILabel* nomeCarro2 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*1, 100,300,100)];
        nomeCarro2.text = [[NSString alloc]initWithFormat:@"Nome: %@",ferrari.nome];
        [nomeCarro2 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
        [scrollCarros addSubview:nomeCarro2];
        UILabel* placaCarro2 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*1, 150,300,100)];
        placaCarro2.text = [[NSString alloc]initWithFormat:@"Placa: %@",ferrari.placa];
        [placaCarro2 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
        [scrollCarros addSubview:placaCarro2];
        UILabel* statusCarro2 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*1, 200,300,100)];
        statusCarro2.text = [[NSString alloc]initWithFormat:@"Status: %@",ferrari.status];
        [statusCarro2 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
        [scrollCarros addSubview:statusCarro2];
        
        sandero = [[Carro alloc]init];
        sandero.nome = @"Sandero";
        sandero.modelo = 2010;
        sandero.placa = @"ADD-0101";
        sandero.valorDiaria = 400;
        sandero.dataInicioAluguel = nil;
        sandero.dataFinalAluguel = nil;
        sandero.status = @"oficina";
        UILabel* nomeCarro3 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*2, 100,300,100)];
        nomeCarro3.text = [[NSString alloc]initWithFormat:@"Nome: %@",sandero.nome];
        [nomeCarro3 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
        [scrollCarros addSubview:nomeCarro3];
        UILabel* placaCarro3 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*2, 150,300,100)];
        placaCarro3.text = [[NSString alloc]initWithFormat:@"Placa: %@",sandero.placa];
        [placaCarro3 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
        [scrollCarros addSubview:placaCarro3];
        UILabel* statusCarro3 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*2, 200,300,100)];
        statusCarro3.text = [[NSString alloc]initWithFormat:@"Status: %@",sandero.status];
        [statusCarro3 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
        [scrollCarros addSubview:statusCarro3];

        NSLog(@"os %@",ferrari.dataInicioAluguel);
        
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
-(IBAction)acaoBotaOlhar:(id)sender{
    CGFloat viewWidth = scrollCarros.frame.size.width;
    int pageNumber = floor((scrollCarros.contentOffset.x - viewWidth/50) / viewWidth) +1;
    
    if(pageNumber == 0){
        NSLog(@"foi para o primeiro");
        SegundaViewController* SVC = [[SegundaViewController alloc]initwithCar:fusca];
        [self.navigationController pushViewController:SVC animated:YES];
    }
    else if(pageNumber == 1){
        NSLog(@"foi para o segundo");
        SegundaViewController* SVC = [[SegundaViewController alloc]initwithCar:ferrari];
        [self.navigationController pushViewController:SVC animated:YES];
    }
    else{
        NSLog(@"foi para o terceiro");
        SegundaViewController* SVC = [[SegundaViewController alloc]initwithCar:sandero];
        [self.navigationController pushViewController:SVC animated:YES];

    }
}

-(void)viewDidAppear:(BOOL)animated{
    
    UILabel* labelAux = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*0, 225,300,85)];
    labelAux.backgroundColor = [UIColor whiteColor];
    [scrollCarros addSubview:labelAux];
    UILabel* labelAux2 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*1, 225,300,85)];
    labelAux2.backgroundColor = [UIColor whiteColor];
    [scrollCarros addSubview:labelAux2];
    UILabel* labelAux3 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*2, 225,300,85)];
    labelAux3.backgroundColor = [UIColor whiteColor];
    [scrollCarros addSubview:labelAux3];


    
    
    UILabel* statusCarro1 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*0, 230,300,40)];
    statusCarro1.text = [[NSString alloc]initWithFormat:@"Status: %@",fusca.status];
    [statusCarro1 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
    
    if([fusca.status isEqualToString:@"disponível"]){
        statusCarro1.textColor = [UIColor greenColor];
        float quantidadeDeTempoAlugado = -(((fusca.dataUltimaEntrega.timeIntervalSinceNow/60)/60))/24;
        if(quantidadeDeTempoAlugado >= 30){
            statusCarro1.backgroundColor = [UIColor blueColor];
        }
    }
    else if([fusca.status isEqualToString:@"alugado"]){
        statusCarro1.textColor = [UIColor redColor];
        float quantidadeDeTempoAlugado = (((fusca.dataFinalAluguel.timeIntervalSinceNow/60)/60))/24;
        NSLog(@"ooooxi%f",quantidadeDeTempoAlugado);
        if(quantidadeDeTempoAlugado>0){
            statusCarro1.textColor = [UIColor whiteColor];
            statusCarro1.backgroundColor = [UIColor redColor];
        }
        }
    else{
        statusCarro1.textColor = [UIColor orangeColor];
    }

    [scrollCarros addSubview:statusCarro1];
        
    UILabel* statusCarro2 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*1, 230,300,40)];
    statusCarro2.text = [[NSString alloc]initWithFormat:@"Status: %@",ferrari.status];
    [statusCarro2 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
    if([ferrari.status isEqualToString:@"disponível"]){
        statusCarro2.textColor = [UIColor greenColor];
        float quantidadeDeTempoAlugado = -(((ferrari.dataUltimaEntrega.timeIntervalSinceNow/60)/60))/24;
        if(quantidadeDeTempoAlugado >= 30){
            statusCarro2.backgroundColor = [UIColor blueColor];
        }

    }
    else if([ferrari.status isEqualToString:@"alugado"]){
        statusCarro2.textColor = [UIColor redColor];
        float quantidadeDeTempoAlugado = (((ferrari.dataFinalAluguel.timeIntervalSinceNow/60)/60))/24;
        NSLog(@"ooooxi%f",quantidadeDeTempoAlugado);
        if(quantidadeDeTempoAlugado>0){
            statusCarro2.textColor = [UIColor whiteColor];
            statusCarro2.backgroundColor = [UIColor redColor];
        }
    }
    else{
        statusCarro2.textColor = [UIColor orangeColor];
    }

    
    [scrollCarros addSubview:statusCarro2];

    UILabel* statusCarro3 = [[UILabel alloc]initWithFrame:CGRectMake((scrollCarros.frame.size.width)*2, 230,300,40)];
    statusCarro3.text = [[NSString alloc]initWithFormat:@"Status: %@",sandero.status];
    [statusCarro3 setFont:[UIFont fontWithName:@"HelveticaNeue" size:35]];
    if([sandero.status isEqualToString:@"disponível"]){
        statusCarro3.textColor = [UIColor greenColor];
        float quantidadeDeTempoAlugado = -(((sandero.dataUltimaEntrega.timeIntervalSinceNow/60)/60))/24;
        if(quantidadeDeTempoAlugado >= 30){
            statusCarro3.backgroundColor = [UIColor blueColor];
        }

    }
    else if([sandero.status isEqualToString:@"alugado"]){
        statusCarro3.textColor = [UIColor redColor];
        float quantidadeDeTempoAlugado = (((sandero.dataFinalAluguel.timeIntervalSinceNow/60)/60))/24;
        NSLog(@"ooooxi%f",quantidadeDeTempoAlugado);
        if(quantidadeDeTempoAlugado>0){
            statusCarro3.textColor = [UIColor whiteColor];
            statusCarro3.backgroundColor = [UIColor redColor];
        }
    }
    else{
        statusCarro3.textColor = [UIColor orangeColor];
    }

    [scrollCarros addSubview:statusCarro3];

    

}

@end
