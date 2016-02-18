//
//  CustomTableViewCell.h
//  desafio1TableView_julho_16
//
//  Created by Lucas Andrade on 7/16/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *customPrimeiroNome;
@property (weak, nonatomic) IBOutlet UILabel *customSegundoNome;
@property (weak, nonatomic) IBOutlet UIImageView *customImagem;


@end
