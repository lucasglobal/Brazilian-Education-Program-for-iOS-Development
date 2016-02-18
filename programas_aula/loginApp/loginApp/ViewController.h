//
//  ViewController.h
//  loginApp
//
//  Created by Lucas Andrade on 9/23/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usuarioText;

@property (weak, nonatomic) IBOutlet UITextField *senhaText;
- (IBAction)btnEntrar:(id)sender;

@end

