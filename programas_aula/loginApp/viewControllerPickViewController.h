//
//  viewControllerPickViewController.h
//  loginApp
//
//  Created by Lucas Andrade on 9/23/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"

@interface viewControllerPickViewController : ViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate>{
    IBOutlet UIImageView *imageview;
    __weak IBOutlet UILabel* lblProcessado;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) __weak IBOutlet UILabel *lblProcessado;
- (IBAction)pushPick:(id)sender;
- (IBAction)pushUpload:(id)sender;

@end
