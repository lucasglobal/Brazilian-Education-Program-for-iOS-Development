//
//  DesenhoViewController.h
//  desafio2_maio_19
//
//  Created by LucasAndrade on 5/19/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objeto.h"
#import "ViewController.h"


@interface DesenhoViewController : UIViewController
@property(nonatomic) Objeto* objeto;





- (void)LARdesenhar:(id)vc;
- (IBAction)botaoVoltar:(id)sender;


@end



