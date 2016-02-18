//
//  Professor.h
//  segundoTeste
//
//  Created by LucasAndrade on 4/29/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Funcionario.h"
@interface Professor : Funcionario

@property(nonatomic) NSString* regime;
-(void)setRegime:(NSString *)regime;

@end


