//
//  Dados.m
//  desafio1_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "Dados.h"

@implementation Dados
+(id)shared{
    static Dados* dados = nil;
    
    if(!dados){
        dados = [[self alloc]initPrivate];
    }
    return dados;
}
-(id)initPrivate{
    self = [super init];
    if(self){
        _idade = 70;
        _altura = 70;
        _peso = 70;
    }
    return self;
}
-(id)obterShared{
    Dados* dadoAux = [[Dados alloc]init];
    dadoAux.idade = self.idade;
    dadoAux.altura = self.altura;
    dadoAux.peso = self.peso;
    return dadoAux;
}
-(void)setarSharedIdade:(int)idade{
    _idade = idade;
}
-(void)setarSharedAltura:(float)altura{
    _altura = altura;
}
-(void)setarSharedPeso:(float)peso{
    _peso = peso;
}


@end
