//
//  ViewController.m
//  loginApp
//
//  Created by Lucas Andrade on 9/23/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)alertStatus:(NSString*)msg :(NSString*)title :(int)tag{
    UIAlertView* alertView = [[UIAlertView alloc]initWithTitle:title message:msg delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    alertView.tag = tag;
    [alertView show];
}

- (IBAction)btnEntrar:(id)sender {
    NSInteger success = 0;
    @try {
        if([self.usuarioText.text isEqualToString:@""] || [self.senhaText.text isEqualToString:@""]){
            [self alertStatus:@"Favor , entre com usuário e senha" :@"Acesso falhou" :0];
        }
        else{
            NSString* post = [[NSString alloc]initWithFormat:@"username=%@&password=%@",self.usuarioText.text,self.senhaText.text];
            NSLog(@"PostData: %@",post);
            NSURL *url = [NSURL URLWithString:@"http://172.16.3.74/jsonlogin.php"];
            NSData* postData = [post dataUsingEncoding: NSASCIIStringEncoding allowLossyConversion:YES];
            NSString *postLength = [NSString stringWithFormat:@"%lu",(unsigned long)[postData length]];
            
            NSMutableURLRequest *request = [[NSMutableURLRequest alloc]init];
            [request setURL:url];
            [request setHTTPMethod:@"POST"];
            [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
            [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
            [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
            [request setHTTPBody:postData];
            
            NSError *error = [[NSError alloc]init];
            NSHTTPURLResponse* response = nil;
            NSData* urlData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
            NSLog(@"Response code: %ld",(long)[response statusCode]);
            
            if([response statusCode] >= 200 && [response statusCode] < 300){
                NSString* responseData = [[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
                NSLog(@"Response ==> %@",responseData);
                
                NSError* error = nil;
                NSDictionary* jsonData = [NSJSONSerialization JSONObjectWithData:urlData options:NSJSONReadingMutableContainers error:&error];
                success = [jsonData[@"success"] integerValue];
                NSLog(@"Success %ld",(long)success);
                if(success == 1){
                    NSLog(@"Login SUCCESS");
                }
                else{
                    NSString* error_msg = ( NSString *) jsonData[@"error_message"];
                    [self alertStatus:error_msg :@"Acesso Falhou" :0];
                }
            }
            else{
                [self alertStatus:@"Conexão falhou!" :@"Acesso Falhou" :0];
            }
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@",exception);
        [self alertStatus:@"Acesso falhou! Usuário ou senha inválidos!" :@"Erro" :0];
    }
    if(success){
        [self performSegueWithIdentifier:@"login_success" sender:self];
    }

}
@end
