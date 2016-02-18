//
//  DesenhoViewController.m
//  desafio2_maio_19
//
//  Created by LucasAndrade on 5/19/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "DesenhoViewController.h"
#import "LARView.h"
#import "Objeto.h"
#import "ViewController.h"
@interface DesenhoViewController ()

@end

@implementation DesenhoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
  
    
    return self;
}

- (id)initMinha:(ViewController*)Vc
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        //self.
        // Custom initialization
    }
    
    
    return self;
}



- (void)viewDidLoad
{
    
    // Do any additional setup after loading the view from its nib.
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoVoltar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void) LARdesenhar:(ViewController*)vc{
    
    CGRect firstFrame = CGRectMake([vc.campoCoordenadaX.text floatValue], [vc.campoCoordenadaY.text floatValue],[vc.campoTamanhoX.text floatValue] , [vc.campoTamanhoY.text floatValue]);
    
    BOOL retangulo;
    if(vc.campoFormaGeometrica.selectedSegmentIndex == 0){
        retangulo = YES;
    }
    else{
        retangulo = NO;
    }
    
    UIColor* corCorrente = [[UIColor alloc]init];
    
    switch(vc.campoCor.selectedSegmentIndex) {
        case 0:
            corCorrente = [UIColor yellowColor];
            break;
        case 1:
            corCorrente = [UIColor blueColor];
            break;
        case 2:
            corCorrente = [UIColor greenColor];
            break;
        case 3:
            corCorrente = [UIColor blackColor];
            break;
        case 4:
            corCorrente = [UIColor redColor];
            break;
    }

    
    LARView *firstView = [[LARView alloc]initWithFrame:firstFrame retangulo: retangulo eCor:corCorrente];
    
    [self.view addSubview:firstView];
    
    [vc presentViewController:self animated:YES completion:nil];
    
}
@end
