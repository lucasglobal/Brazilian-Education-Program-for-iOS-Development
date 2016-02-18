//
//  ScrollViewController.m
//  desafio_junho_30
//
//  Created by Lucas Andrade on 6/30/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController
@synthesize scroll1,scroll2;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        scroll1 = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/2)];
        scroll1.backgroundColor = [UIColor greenColor];
        scroll1.contentSize = CGSizeMake(scroll1.frame.size.width*2,
                                                       scroll1.frame.size.height);
        scroll1.delegate = self;

        //scroll1.pagingEnabled=NO;
        UIButton* botao1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 30, 90, 50)];
        [botao1 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botao1 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botao1.backgroundColor = [UIColor  redColor];
        [scroll1 addSubview:botao1];
        UIButton* botao2 = [[UIButton alloc]initWithFrame:CGRectMake(100,30, 90, 50)];
        [botao2 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botao2 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botao2.backgroundColor = [UIColor  redColor];
        [scroll1 addSubview:botao2];
        UIButton* botao3 = [[UIButton alloc]initWithFrame:CGRectMake(200,30, 90, 50)];
        [botao3 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botao3 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botao3.backgroundColor = [UIColor  redColor];
        [scroll1 addSubview:botao3];
        UIButton* botao4 = [[UIButton alloc]initWithFrame:CGRectMake(300,30, 90, 50)];
        [botao4 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botao4 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botao4.backgroundColor = [UIColor  redColor];
        [scroll1 addSubview:botao4];
        UIButton* botao5 = [[UIButton alloc]initWithFrame:CGRectMake(400,30, 90, 50)];
        [botao5 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botao5 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botao5.backgroundColor = [UIColor  redColor];
        [scroll1 addSubview:botao5];
        UIButton* botao6 = [[UIButton alloc]initWithFrame:CGRectMake(500,30, 90, 50)];
        [botao6 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botao6 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botao6.backgroundColor = [UIColor  redColor];
        [scroll1 addSubview:botao6];

        

        
        scroll2 = [[UIScrollView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height/2, self.view.bounds.size.width, self.view.bounds.size.height)];
        scroll2.backgroundColor = [UIColor blueColor];
        scroll2.contentSize = CGSizeMake(scroll1.frame.size.width*2,
                                         scroll1.frame.size.height);
        scroll2.delegate = self;
        UIButton* botaoo1 = [[UIButton alloc]initWithFrame:CGRectMake(0,30, 90, 50)];
        [botaoo1 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botaoo1 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botaoo1.backgroundColor = [UIColor  brownColor];
        [scroll2 addSubview:botaoo1];
        UIButton* botaoo2 = [[UIButton alloc]initWithFrame:CGRectMake(100,30, 90, 50)];
        [botaoo2 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botaoo2 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botaoo2.backgroundColor = [UIColor  brownColor];
        [scroll2 addSubview:botaoo2];
        UIButton* botaoo3 = [[UIButton alloc]initWithFrame:CGRectMake(200,30, 90, 50)];
        [botaoo3 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botaoo3 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botaoo3.backgroundColor = [UIColor  brownColor];
        [scroll2 addSubview:botaoo3];
        UIButton* botaoo4 = [[UIButton alloc]initWithFrame:CGRectMake(300,30, 90, 50)];
        [botaoo4 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botaoo4 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botaoo4.backgroundColor = [UIColor  brownColor];
        [scroll2 addSubview:botaoo4];
        UIButton* botaoo5 = [[UIButton alloc]initWithFrame:CGRectMake(400,30, 90, 50)];
        [botaoo5 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botaoo5 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botaoo5.backgroundColor = [UIColor  brownColor];
        [scroll2 addSubview:botaoo5];
        UIButton* botaoo6 = [[UIButton alloc]initWithFrame:CGRectMake(500,30, 90, 50)];
        [botaoo6 addTarget:self action:@selector(escolhaBotao) forControlEvents:UIControlEventTouchUpInside];
        [botaoo6 setTitle:@"BOTÃO" forState:UIControlStateNormal];
        botaoo6.backgroundColor = [UIColor  brownColor];
        [scroll2 addSubview:botaoo6];
        
        
        [self.view addSubview:scroll1];
        [self.view addSubview:scroll2];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)escolhaBotao{
    NSLog(@"botao apertado");
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    if([scroll1 isEqual: scrollView]){
        NSLog(@"FOI PRA SCROLL VERDE");
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Aumento de Tela" message:@"Você deseja aumentar a tela verde?" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Aumentar verde!", nil];
        [alert show];
    }
    else{
        NSLog(@"fOI PRA SCROLL AZUL");
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Aumento de Tela" message:@"Você deseja aumentar a tela azul?" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Aumentar azul!", nil];
        [alert show];
    }
}


-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 1){
        NSLog(@"%@",alertView.message);
        NSLog(@"foi para o primeiro");
        if([alertView.message isEqualToString:@"Você deseja aumentar a tela verde?"]){
            NSLog(@"vou aumentar a verde");
            scroll1.frame = CGRectMake(0, 0, self.view.bounds.size.width, (self.view.bounds.size.height/2) + 20);
            scroll2.frame = CGRectMake(0, (self.view.bounds.size.height/2) + 20, self.view.bounds.size.width, self.view.bounds.size.height-20);
        }
        else{
            NSLog(@"vou aumentar a azul");
            scroll1.frame = CGRectMake(0, 0, self.view.bounds.size.width, (self.view.bounds.size.height/2) - 20);
            scroll2.frame = CGRectMake(0, (self.view.bounds.size.height/2) - 20, self.view.bounds.size.width, self.view.bounds.size.height+20);

        }
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
