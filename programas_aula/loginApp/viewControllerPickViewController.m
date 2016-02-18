//
//  viewControllerPickViewController.m
//  loginApp
//
//  Created by Lucas Andrade on 9/23/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "viewControllerPickViewController.h"

@interface viewControllerPickViewController ()

@end

@implementation viewControllerPickViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"foi pra tela da imagem");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    [picker dismissViewControllerAnimated:YES completion:nil];
    _imageView.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.lblProcessado.text = @"";
    self.lblProcessado.hidden = true;
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:nil];
    self.lblProcessado.text = @"";
    self.lblProcessado.hidden = TRUE;
}

- (IBAction)pushPick:(id)sender {
}

- (IBAction)pushUpload:(id)sender {
    NSData* imageData = UIImageJPEGRepresentation(_imageView.image, 90);
    NSString* urlString = @"http://172.16.3.74/upload.php";
    
    NSMutableURLRequest* request = [[NSMutableURLRequest alloc]init];
    [request setURL:[NSURL URLWithString:urlString]];
    [request setHTTPMethod:@"POST"];
    
    NSString* boundary = @"---------------12312412431231";
    NSString* contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@",boundary];
    [request addValue:contentType forHTTPHeaderField:@"Content-Type"];
    
    NSMutableData* body = [NSMutableData data];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Disposition: form-data; name=\"userfile\"; filename=\".jpg\"\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content_Type: application/octet-stream\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[NSData dataWithData:imageData]];
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    
    [request setHTTPBody:body];
    
    NSData* returnData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString* returnString = [[NSString alloc]initWithData:returnData encoding:NSUTF8StringEncoding];
    NSLog(@"%@",returnString);
    self.lblProcessado.text =  @"Imagem enviada";
    self.lblProcessado.hidden = false;
    
    
    
    
    
    
    
}















@end
