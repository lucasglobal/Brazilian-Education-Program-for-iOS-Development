//
//  BEPViewController.m
//  navControllerSimples
//
//  Created by Marcos on 7/2/14.
//  Copyright (c) 2014 Marcos. All rights reserved.
//

#import "BEPViewController.h"
#import "BEPEditViewController.h"

@interface BEPViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelNome;

@end

@implementation BEPViewController

-(id) init {
    self = [super init];
    
    if (self)
    {
        UINavigationItem *navItem = self.navigationItem;
        
        UIBarButtonItem *editButton = [[UIBarButtonItem alloc]initWithTitle:@"Editar" style:UIBarButtonItemStylePlain target:self action:@selector(editNome:)];
        
        navItem.rightBarButtonItem = editButton;
    }
    
    return self;
}

- (IBAction)editNome:(id)sender {
    NSLog(@"Clicou em edit!");
    
    BEPEditViewController *editController = [[BEPEditViewController alloc]init]; 
    
    [self.navigationController pushViewController:editController animated:YES];
    
}

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

- (void) viewWillAppear:(BOOL)animated
{
    self.labelNome.text = [[BEPNome sharedNome] obterSharedNome];
}

@end
