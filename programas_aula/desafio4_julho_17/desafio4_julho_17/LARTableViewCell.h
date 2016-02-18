//
//  LARTableViewCell.h
//  desafio4_julho_17
//
//  Created by LucasAndrade on 7/18/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LARTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelID;
@property (weak, nonatomic) IBOutlet UILabel *labelNome;
@property (weak, nonatomic) IBOutlet UILabel *labelIdade;
@property (weak, nonatomic) IBOutlet UILabel *labelEmail;
@property (weak, nonatomic) IBOutlet UIImageView *imagemPessoa;

@end
