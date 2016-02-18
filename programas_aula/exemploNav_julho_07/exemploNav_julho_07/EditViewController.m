//
//  EditViewController.m
//  exemploNav_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "EditViewController.h"
#import "BEPNome.h"
@interface EditViewController ()

@end

@implementation EditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(id)init{
    self = [super init];
    
    if(self){
        UINavigationItem* navEditItem = self.navigationItem;
        UIBarButtonItem* doneButtom = [[UIBarButtonItem alloc]initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(editDone:)];
        navEditItem.rightBarButtonItem = doneButtom;
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
-(IBAction)editDone:(id)sender{
    NSLog(@"Alteracao realizada");
    
    [[BEPNome sharedNome] setarSharedNome:self.labelNome.text];
    
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)viewWillAppear:(BOOL)animated{
    self.labelNome.text = [[BEPNome sharedNome]obterSharedNome];
}

@end
