//
//  ZXYTableViewController.m
//  splitViewController
//
//  Created by Lucas Andrade on 9/24/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ZXYTableViewController.h"
#import "ZXYItemStore.h"
#import "ZXYItem.h"
#import "DetailViewController2.h"

@interface ZXYTableViewController ()
@property (nonatomic) ZXYItemStore* storeApp;
@end

@implementation ZXYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Minha TableView"];
    self.storeApp = [[ZXYItemStore alloc]init];
    [self.storeApp createItem];
    [self.storeApp createItem];
    [self.storeApp createItem];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)becomeFirstResponder{
    
    return YES;
}
-(void)viewDidAppear:(BOOL)animated{
    [self.tableView reloadData];
    ZXYItem* itemModificado = self.detailViewController.item;
    [self.storeApp updateItens:self.detailViewController.novoItem];
    NSLog(@"praca????? burro");

}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [[self.storeApp allItems] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"apareceu aqui");
    
    static NSString* identificador = @"Celula";
    UITableViewCell* celula = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identificador];
    if(celula == nil){
        celula = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identificador];
    }
    NSArray* dataCaught = [NSArray array];
    dataCaught = [self.storeApp allItems];
    
    ZXYItem* itemNovo = dataCaught[indexPath.row];
    celula.textLabel.text = itemNovo.itemName;
    return celula;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
//    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    ZXYItem* itemNovo = [self.storeApp allItems][indexPath.row];

    self.detailViewController.item = itemNovo;
    if(!self.splitViewController){
        [self.navigationController pushViewController:self.detailViewController animated:YES];
    }
    else{
        [self.detailViewController didMoveToParentViewController:self];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
