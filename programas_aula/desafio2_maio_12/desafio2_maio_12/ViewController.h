//
//  ViewController.h
//  desafio2_maio_12
//
//  Created by LucasAndrade on 5/12/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UITextField *campoTelefone;
@property (weak, nonatomic) IBOutlet UILabel *labelIdade;
@property (weak, nonatomic) IBOutlet UIButton *botaoEnviar;


-(IBAction)changelabel;
@end
