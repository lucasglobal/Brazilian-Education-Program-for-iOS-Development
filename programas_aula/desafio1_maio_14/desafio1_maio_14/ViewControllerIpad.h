//
//  ViewControllerIpad.h
//  desafio1_maio_14
//
//  Created by LucasAndrade on 5/15/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerIpad : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *espacoNome;
@property (weak, nonatomic) IBOutlet UILabel *labelIdade;
@property (weak, nonatomic) IBOutlet UISlider *sliderIdade;
@property (weak, nonatomic) IBOutlet UITextField *espacoEmail;
@property (weak, nonatomic) IBOutlet UITextField *espacoTelefone;
@property (weak, nonatomic) IBOutlet UITextField *espacoUniversidade;
@property (weak, nonatomic) IBOutlet UITextField *espacoCurso;
- (IBAction)botaoLimpar:(id)sender;
- (IBAction)botaoEnviar:(id)sender;

@end
