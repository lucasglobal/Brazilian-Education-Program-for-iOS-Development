//
//  ViewController.h
//  exemplo1TableView_julho_15
//
//  Created by Lucas Andrade on 7/15/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate,NSCoding>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSMutableArray* numeros;
-(void)alertaNovoObjeto;
-(void)refreshingAction;
@property(strong,nonatomic) UIRefreshControl* refresh;
@end
