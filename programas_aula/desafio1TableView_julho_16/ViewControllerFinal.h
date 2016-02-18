//
//  ViewControllerFinal.h
//  desafio1TableView_julho_16
//
//  Created by Lucas Andrade on 7/16/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerFinal : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imagem;
@property (weak, nonatomic) IBOutlet UILabel *labelNome;
@property (weak, nonatomic) IBOutlet UILabel *labelSobreNome;
@property(nonatomic) NSDictionary* dicionario;
@end
