//
//  ViewController.h
//  desafio1_julho_09
//
//  Created by Lucas Andrade on 7/9/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)tirarFoto:(id)sender;
- (IBAction)excluirImagem:(id)sender;

@end
