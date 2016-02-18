//
//  DetailViewController2.h
//  splitViewController
//
//  Created by Lucas Andrade on 9/26/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZXYItem.h"

@interface DetailViewController2 : UIViewController <UITextFieldDelegate,UISplitViewControllerDelegate>


@property(nonatomic) ZXYItem* item;
@property(nonatomic)ZXYItem* novoItem;


@end
