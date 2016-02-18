//
//  ViewController.h
//  desafio4_julho_17
//
//  Created by LucasAndrade on 7/18/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pessoa.h"
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imagemPessoa;

@property (weak, nonatomic) IBOutlet UILabel *labelSalario;
@property(nonatomic) Pessoa* pessoa;
@end
