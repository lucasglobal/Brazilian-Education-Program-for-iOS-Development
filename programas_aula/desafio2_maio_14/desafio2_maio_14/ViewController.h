//
//  ViewController.h
//  desafio2_maio_14
//
//  Created by LucasAndrade on 5/15/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Publicacao.h"
@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *campoTitulo;
@property (weak, nonatomic) IBOutlet UITextField *campoAutor;
@property (weak, nonatomic) IBOutlet UITextField *campoCodigoIBSN;
@property (weak, nonatomic) IBOutlet UITextField *campoCodigoRegistro;
@property(nonatomic) Publicacao* publicacao;
- (IBAction)botaoLimpar:(id)sender;
- (IBAction)botaoEnviar:(id)sender;


@end
