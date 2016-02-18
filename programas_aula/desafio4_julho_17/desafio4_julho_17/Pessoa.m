//
//  Pessoa.m
//  desafio4_julho_17
//
//  Created by LucasAndrade on 7/18/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa
-(id)initWithId:(int)idPessoa withNome:(NSString*)nome withIdade:(int)idade withEmail:(NSString*)email withFoto:(NSString*)foto withSalario:(int)salario{
    [self setIdPessoa:idPessoa];
    [self setNome:nome];
    [self setIdade:idade];
    [self setEmail:email];
    [self setFoto:foto];
    [self setSalario:salario];
    return self;
}

@end
