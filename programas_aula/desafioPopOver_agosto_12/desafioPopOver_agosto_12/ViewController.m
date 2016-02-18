//
//  ViewController.m
//  desafioPopOver_agosto_12
//
//  Created by Lucas Andrade on 8/12/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoEnviar:(id)sender {
    if([self.imagePickerPopover isPopoverVisible]){
        [self.imagePickerPopover dismissPopoverAnimated:YES];
        self.imagePickerPopover = nil;
        return;
    }
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    if([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad){
        NSLog(@"ipad");
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        imagePicker.delegate = self;
        self.imagePickerPopover = [[UIPopoverController alloc]initWithContentViewController:imagePicker];
        self.imagePickerPopover.delegate = self;
        [self.imagePickerPopover presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
    else{
        NSLog(@"iphone");
        imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        imagePicker.delegate = self;
        [self presentViewController:imagePicker animated:YES completion:nil];

    }
}
- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    self.imageView.image = image;
    [self dismissViewControllerAnimated:YES completion:nil];

}
-(void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController{
    NSLog(@"user dismissedpopover");
    self.imagePickerPopover = nil;
}
- (IBAction)backgroundTapped:(id)sender
{
    [self.view endEditing:YES];
}
@end
