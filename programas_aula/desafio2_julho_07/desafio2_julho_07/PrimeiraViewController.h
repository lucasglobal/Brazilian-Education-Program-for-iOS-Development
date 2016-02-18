//
//  PrimeiraViewController.h
//  desafio2_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Carro.h"
@interface PrimeiraViewController : UIViewController <UIScrollViewDelegate>
@property (nonatomic)UIScrollView* scrollCarros;
@property(nonatomic)Carro* fusca;
@property(nonatomic)Carro* ferrari;
@property(nonatomic)Carro* sandero;
-(IBAction)acaoBotaOlhar:(id)sender;
@end
