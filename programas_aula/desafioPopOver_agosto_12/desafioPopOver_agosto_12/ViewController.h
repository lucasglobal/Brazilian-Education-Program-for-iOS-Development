//
//  ViewController.h
//  desafioPopOver_agosto_12
//
//  Created by Lucas Andrade on 8/12/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPopoverControllerDelegate ,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
- (IBAction)botaoEnviar:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property(strong,nonatomic) UIPopoverController* imagePickerPopover;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cameraButton;

@end
