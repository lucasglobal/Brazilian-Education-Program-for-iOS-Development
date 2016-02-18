//
//  ViewController.m
//  desafio2_maio_19
//
//  Created by LucasAndrade on 5/19/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "ViewController.h"
#import "DesenhoViewController.h"
#import "Objeto.h"
@interface ViewController ()

@end

@implementation ViewController


-(id)init{
     _DVController = [[DesenhoViewController alloc]init];
    return self;
}
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

- (IBAction)botaoDesenhar:(id)sender {
    [_DVController LARdesenhar:self];
}

- (IBAction)botaoLimpar:(id)sender {
    _DVController = nil;
    _DVController = [[DesenhoViewController alloc]init];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //metodo caso aconteca clique fora do label, descendo o teclado
    [[self view] endEditing:YES];
}

@end
