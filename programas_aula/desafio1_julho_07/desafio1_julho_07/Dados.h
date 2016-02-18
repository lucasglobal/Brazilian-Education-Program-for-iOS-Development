//
//  Dados.h
//  desafio1_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dados : NSObject

@property (nonatomic) int idade;
@property(nonatomic)float altura;
@property(nonatomic)float peso;

+ (id) shared;
- (id) obterShared;
- (void) setarSharedIdade:(int)idade;
- (void) setarSharedAltura:(float)altura;
- (void) setarSharedPeso:(float)peso;

@end
