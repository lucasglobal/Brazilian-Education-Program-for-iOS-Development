//
//  ViewController.h
//  exemploCamera_julho_09
//
//  Created by Lucas Andrade on 7/9/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imagem;
- (IBAction)tirarFoto:(id)sender;


@end
