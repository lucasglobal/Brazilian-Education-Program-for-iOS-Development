//
//  NovaDataAluguelViewController.h
//  desafio2_julho_07
//
//  Created by Lucas Andrade on 7/10/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Carro.h"
@interface NovaDataAluguelViewController : UIViewController
- (IBAction)botaoFinalizar:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *dataPicker;

@property (nonatomic) UIPickerView* picker;
@property (nonatomic)Carro* carro;
-(id)initWithCar:(Carro*)carro;
@end
