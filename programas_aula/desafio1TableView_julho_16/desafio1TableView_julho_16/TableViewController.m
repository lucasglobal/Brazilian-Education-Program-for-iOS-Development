//
//  TableViewController.m
//  desafio1TableView_julho_16
//
//  Created by Lucas Andrade on 7/16/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTableViewCell.h"
#import "ViewControllerFinal.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    NSString* caminho = [[NSBundle mainBundle]pathForResource:@"contacts" ofType:@"plist"];
    self.array = [NSArray arrayWithContentsOfFile:caminho];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.array count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString* identificador = @"Cell";
    //UITableViewCell* celula = [tableView dequeueReusableCellWithIdentifier:identificador forIndexPath:indexPath];
    CustomTableViewCell* celulaCustomizada = [tableView dequeueReusableCellWithIdentifier:identificador forIndexPath:indexPath];
    
    
    self.dicionario = self.array[indexPath.row];
    
    NSString* primeiroNome = self.dicionario[@"firstName"];
    NSString* segundoNome = self.dicionario[@"lastName"];
    NSString* imagem = self.dicionario[@"imageName"];
    UIImage* imagemFinal = [UIImage imageNamed:imagem];
    
    celulaCustomizada.customPrimeiroNome.text = primeiroNome;
    celulaCustomizada.customSegundoNome.text = segundoNome;
    celulaCustomizada.customImagem.image= imagemFinal;
    // Configure the cell...
    
    return celulaCustomizada;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"ass %d",indexPath.row);
    self.linha = indexPath.row;
    
    ViewControllerFinal* VCFinal = [self.parentViewController childViewControllers][1];
    NSDictionary* auxDic = self.array[self.linha];
    NSLog(@"%@",auxDic);
    VCFinal.dicionario = auxDic;
    
    
    
}
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    ViewControllerFinal* viewControllerFinal = [[ViewControllerFinal alloc]init];
//    NSIndexPath* indexPath = [self.tableView indexPathForCell:(UITableViewCell*)sender];
//    viewControllerFinal.labelNome.text = self.dicionario[@"firstName"];
//    NSLog(@"%@",self.dicionario[@"firstName"]);
//}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
