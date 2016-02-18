//
//  ResultadojogoViewController.h
//  desafioApp2_maio_22
//
//  Created by LucasAndrade on 5/22/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultadojogoViewController : UIViewController
@property (nonatomic) int numero;
@property(nonatomic) int tipo;


- (id)initWithNumero:(int)numero Tipo:(int)tipo;

@property (weak, nonatomic) IBOutlet UILabel *labelTipoVoce;
@property (weak, nonatomic) IBOutlet UILabel *labalNumeroVoce;
@property (weak, nonatomic) IBOutlet UILabel *labelResultado;
@property (weak, nonatomic) IBOutlet UILabel *labelTipoPC;
@property (weak, nonatomic) IBOutlet UILabel *labelNumeroPC;
- (IBAction)botaoJogarNovamente:(id)sender;




@end
