//
//  ViewController.m
//  exemploNav_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"
#import "BEPNome.h"
#import "EditViewController.h"
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
-(id)init{
    self = [super init];
    
    if(self){
        UINavigationItem* navItem = self.navigationItem;
        UIBarButtonItem* editButton = [[UIBarButtonItem alloc]initWithTitle:@"Editar" style:UIBarButtonItemStylePlain target:self action:@selector(editNome:)];
        navItem.rightBarButtonItem = editButton;
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
-(IBAction)editNome:(id)sender{
    NSLog(@"Clicou em edit");
    
    EditViewController* editVC = [[EditViewController alloc]init];
    [self.navigationController pushViewController:editVC animated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    self.labelNome.text = [[BEPNome sharedNome] obterSharedNome];
}


@end
