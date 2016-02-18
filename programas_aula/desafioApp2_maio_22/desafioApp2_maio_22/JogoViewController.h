//
//  JogoViewController.h
//  desafioApp2_maio_22
//
//  Created by LucasAndrade on 5/22/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JogoViewController : UIViewController
@property (nonatomic) int numero;
@property(nonatomic) int tipo;
@property (weak, nonatomic) IBOutlet UISegmentedControl *campoJogo;
@property (weak, nonatomic) IBOutlet UISegmentedControl *campoTipoNumero;
@property (weak, nonatomic) IBOutlet UISegmentedControl *campoNumero;
- (IBAction)botaoJogar:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *campoJogadaJoken;

@end
