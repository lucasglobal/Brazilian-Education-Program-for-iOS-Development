//
//  ViewController.m
//  desafio1_julho_09
//
//  Created by Lucas Andrade on 7/9/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tirarFoto:(id)sender {
    
    
    UIImagePickerController* imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.allowsEditing = YES;

    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    else{
        imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    imagePicker.delegate = self;
        [self presentViewController:imagePicker animated:YES completion:nil];
}

- (IBAction)excluirImagem:(id)sender {
    if(self.imageView.image){
        self.imageView.image = nil;
        return;
    }
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Erro" message:@"Imagem inexistente" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    
    
    UIImage* imagemTirada = info[UIImagePickerControllerEditedImage];
    
    self.imageView.image = imagemTirada;
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end
