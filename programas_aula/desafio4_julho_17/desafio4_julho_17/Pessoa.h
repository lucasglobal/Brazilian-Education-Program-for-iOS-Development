//
//  Pessoa.h
//  desafio4_julho_17
//
//  Created by LucasAndrade on 7/18/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject
@property(nonatomic) int idPessoa;
@property(nonatomic) NSString* nome;
@property(nonatomic) int idade;
@property(nonatomic) NSString* email;
@property(nonatomic) NSString* foto;
@property(nonatomic) int salario;
-(id)initWithId:(int)idPessoa withNome:(NSString*)nome withIdade:(int)idade withEmail:(NSString*)email withFoto:(NSString*)foto withSalario:(int)salario;

@end
