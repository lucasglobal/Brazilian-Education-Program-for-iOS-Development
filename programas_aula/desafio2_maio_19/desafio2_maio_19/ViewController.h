//
//  ViewController.h
//  desafio2_maio_19
//
//  Created by LucasAndrade on 5/19/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objeto.h"

@class DesenhoViewController;


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *campoCoordenadaY;
@property (weak, nonatomic) IBOutlet UITextField *campoCoordenadaX;
@property (weak, nonatomic) IBOutlet UITextField *campoTamanhoX;
@property (weak, nonatomic) IBOutlet UITextField *campoTamanhoY;
@property (weak, nonatomic) IBOutlet UISegmentedControl *campoCor;
@property (weak, nonatomic) IBOutlet UISegmentedControl *campoFormaGeometrica;

@property (nonatomic,readonly) DesenhoViewController *DVController;

- (IBAction)botaoDesenhar:(id)sender;
- (IBAction)botaoLimpar:(id)sender;

@end
