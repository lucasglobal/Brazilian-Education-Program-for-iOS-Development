//
//  DetailViewController2.m
//  splitViewController
//
//  Created by Lucas Andrade on 9/26/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "DetailViewController2.h"
#import "ZXYItem.h"
#import "ZXYTableViewController.h"

@interface DetailViewController2 ()
@property (weak, nonatomic) IBOutlet UITextField *fieldName;
@property (weak, nonatomic) IBOutlet UITextField *fieldSerial;
@property (weak, nonatomic) IBOutlet UITextField *fieldValue;
@property (weak, nonatomic) IBOutlet UILabel *labelDate;

@end

@implementation DetailViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.navigationController.navigationItem.backBarButtonItem setAction:@selector(backBarButtonItem)];
    NSLog(@"quesssiss");
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)didMoveToParentViewController:(UIViewController *)parent{
 ZXYItem* itemNovo = [[ZXYItem alloc]initWithItemName:self.fieldName.text value:123456 serialNumber:self.fieldSerial.text];
 itemNovo.index = self.item.index;
 NSLog(@"indexes %d %d",itemNovo.index,self.item.index);
 self.novoItem = itemNovo;
 NSLog(@"indexes2 %d %d",itemNovo.index,self.item.index);
 
 self.fieldName.text = self.item.itemName;
 self.fieldSerial.text = self.item.serialNumber;
 self.fieldValue.text = [NSString stringWithFormat:@"%d",self.item.value];
 self.labelDate.text = [NSString stringWithFormat:@"%@",self.item.dateCreated];
 self.item = [[ZXYItem alloc]initWithItemName:self.fieldName.text value:0 serialNumber:self.fieldSerial.text];
 self.item.index = itemNovo.index;
 }
-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"dentro %f",self.labelDate.bounds.origin.x);
    
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
