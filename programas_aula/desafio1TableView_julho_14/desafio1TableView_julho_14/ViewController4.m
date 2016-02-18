//
//  ViewController4.m
//  desafio1TableView_julho_14
//
//  Created by Lucas Andrade on 7/14/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController4.h"

@interface ViewController4 ()

@end

@implementation ViewController4

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
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor greenColor]];
    [self.navigationItem setTitle:@"verde"];

    UIImageView* imagem = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4.jpg"]];
    [imagem setBounds:CGRectMake(0, 50, 500, 300)];
    [self.view addSubview:imagem];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
