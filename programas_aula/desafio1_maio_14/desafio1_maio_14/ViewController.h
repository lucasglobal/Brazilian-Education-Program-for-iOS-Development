//
//  ViewController.h
//  desafio1_maio_14
//
//  Created by Lucas Andrade on 5/14/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfirmacaoViewIphone.h"
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *espacoNome;
@property (weak, nonatomic) IBOutlet UISlider *sliderIdade;
@property (weak, nonatomic) IBOutlet UITextField *espacoEmail;
@property (weak, nonatomic) IBOutlet UITextField *espacoTelefone;
@property (weak, nonatomic) IBOutlet UITextField *espacoUniversidade;
@property (weak, nonatomic) IBOutlet UITextField *espacoCurso;
@property (weak, nonatomic) IBOutlet UILabel *labeIdade;


- (IBAction)botaoLimpar:(id)sender;
- (IBAction)botaoEnviar:(id)sender;
-(void)enteredBackground;

@end
