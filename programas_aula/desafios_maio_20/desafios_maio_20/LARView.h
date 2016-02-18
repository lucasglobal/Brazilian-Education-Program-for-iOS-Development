//
//  LARView.h
//  desafios_maio_20
//
//  Created by LucasAndrade on 5/20/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LARView : UIView
@property(nonatomic) NSString* pais;


- (id)initWithFrame:(CGRect)frame pais:(NSString*)pais view:(id)viewController;
@end
