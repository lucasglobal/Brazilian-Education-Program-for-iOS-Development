//
//  SegundaViewController.h
//  desafio2_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Carro.h"
@interface SegundaViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate>
-(id)initwithCar: (Carro*)carro;
@property(nonatomic)Carro* carro;
@end
