//
//  LARView.h
//  desafio2_maio_19
//
//  Created by LucasAndrade on 5/19/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LARView : UIView
@property(nonatomic) UIColor* cor;
@property(nonatomic) BOOL retangulo;

- (id)initWithFrame:(CGRect)frame retangulo:(BOOL)afirmacao eCor:(UIColor*)cor;


@end
