//
//  ViewController.h
//  desafio_julho_01
//
//  Created by Lucas Andrade on 7/1/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate,UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nomeField;
@property (weak, nonatomic) IBOutlet UITextField *cpfField;
@property (weak, nonatomic) IBOutlet UITextField *telefoneField;
@property (weak, nonatomic) IBOutlet UITextField *senhaField;
- (IBAction)botaoEnviar:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (nonatomic) NSDate* dataForm;
@end
