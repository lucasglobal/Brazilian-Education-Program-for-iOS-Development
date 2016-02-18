//
//  Carro.h
//  desafio2_julho_07
//
//  Created by Lucas Andrade on 7/9/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Carro : NSObject

@property (nonatomic)NSString* nome;
@property(nonatomic)int modelo;
@property(nonatomic)NSString* placa;
@property(nonatomic)int valorDiaria;
@property(nonatomic)NSDate* dataInicioAluguel;
@property(nonatomic)NSDate* dataFinalAluguel;
@property(nonatomic)NSString* status;
@property(nonatomic)NSDate* dataUltimaEntrega;

@end
