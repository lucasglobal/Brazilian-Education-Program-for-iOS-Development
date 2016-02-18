//
//  Endereco.h
//  desafio2_maio_02
//
//  Created by LucasAndrade on 5/5/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Endereco : NSObject

@property NSString* cep;
@property(readonly) NSString* logradouro;
@property(readonly) NSString* logradouro_nome;
@property(readonly) NSString* logradouro_completo;
@property(readonly) NSString* bairro;
@property(readonly) NSString* cidade;
@property(readonly) NSString* uf_sigla;
@property(readonly) NSString* uf_nome;


-(id) initWithCep:(NSString*) cep;
@end
