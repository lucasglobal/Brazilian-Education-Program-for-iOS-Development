//
//  TableViewController.h
//  desafio1TableView_julho_16
//
//  Created by Lucas Andrade on 7/16/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController
@property(nonatomic,strong) NSArray* array;
@property(nonatomic,strong) NSDictionary* dicionario;
@property(nonatomic) int linha;

@end
