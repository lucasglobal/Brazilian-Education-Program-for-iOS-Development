//
//  JokenpoResultadoViewController.h
//  desafioApp2_maio_22
//
//  Created by LucasAndrade on 5/23/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JokenpoResultadoViewController : UIViewController

@property (nonatomic) int numero;
@property(nonatomic) int tipo;

@property (weak, nonatomic) IBOutlet UILabel *labelTipoVoce;
@property (weak, nonatomic) IBOutlet UILabel *labelResultado;
@property (weak, nonatomic) IBOutlet UILabel *labelTipoPC;
- (IBAction)botaoJogarNovamente:(id)sender;
- (id)initWithNumero:(int)numero;

@end
