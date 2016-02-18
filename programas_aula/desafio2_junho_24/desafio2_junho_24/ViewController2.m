//
//  ViewController2.m
//  desafio2_junho_24
//
//  Created by Lucas Andrade on 6/25/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController2.h"
#import "ViewControllerDefault.h"
@interface ViewController2 ()

@end

@implementation ViewController2
@synthesize botaoProxima;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        
        self.tabBarItem.title= @"Tab2";
        //UIImage *i = [UIImage imageNamed:@"calendar.png"];
        //self.tabBarItem.image = i;
        
        
        // Initialization code
        //label com informacao da view
        UILabel* infoTab = [[UILabel alloc]initWithFrame:CGRectMake(10, 90, 300, 20)];
        infoTab.text = @"ADICIONANDO TABS";
        [self.view addSubview:infoTab];
        
        //adicionando botao
        botaoProxima = [[UIButton alloc] initWithFrame:CGRectMake(15, 200,200, 55)];
        [botaoProxima addTarget:self action:@selector(adicionarTab) forControlEvents:UIControlEventTouchUpInside];
        [botaoProxima setTitle:@"Adicionar!" forState:UIControlStateNormal];
        botaoProxima.backgroundColor = [UIColor colorWithRed:0.80392157 green:0.16078431 blue:0.12941176 alpha:1];
        [self.view addSubview:botaoProxima];
        

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
-(void)adicionarTab{
    
    NSMutableArray* arrayAux = [NSMutableArray arrayWithArray:self.tabBarController.viewControllers];

    ViewControllerDefault* vcd = [[ViewControllerDefault alloc] init];
    [arrayAux addObject: vcd];
    
    NSArray* arrayFinal = [NSArray arrayWithArray:arrayAux];
    self.tabBarController.viewControllers = arrayFinal;
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
