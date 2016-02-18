//
//  BEPEditViewController.m
//  navControllerSimples
//
//  Created by Marcos on 7/2/14.
//  Copyright (c) 2014 Marcos. All rights reserved.
//

#import "BEPEditViewController.h"
#import "BEPNome.h"

@interface BEPEditViewController ()

@end

@implementation BEPEditViewController

-(id) init {
    self = [super init];
    
    if (self)
    {
        UINavigationItem *navEditItem = self.navigationItem;

        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(editDone:)];
        
        navEditItem.rightBarButtonItem = doneButton;
        
    }
    
    return self;
}

- (IBAction)editDone:(id)sender {
    NSLog(@"Alteracao realizada!");
    
    [[BEPNome sharedNome] setarSharedNome:self.campoNome.text];
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) viewWillAppear:(BOOL)animated
{
    self.campoNome.text = [[BEPNome sharedNome] obterSharedNome];
}

@end
