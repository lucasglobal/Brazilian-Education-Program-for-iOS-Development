//
//  ScrollViewController.h
//  desafio_junho_30
//
//  Created by Lucas Andrade on 6/30/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewController : UIViewController <UIScrollViewDelegate,UIAlertViewDelegate>
-(void)escolhaBotao;
@property (nonatomic) UIScrollView* scroll1;
@property (nonatomic) UIScrollView* scroll2;

@end
