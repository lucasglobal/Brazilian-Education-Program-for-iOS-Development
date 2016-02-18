//
//  BEPiDAluno.h
//  Desafio_grupo6_maio02
//
//  Created by LucasAndrade on 5/2/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface BEPiDAluno : NSObject

@property NSString * nome;
@property NSDate * dataNascimento;
@property (readonly) unsigned int idade;
@property NSString * universidade;
@property NSString * curso;
@property NSDate * entradaCurso;
@property (readonly) unsigned int semestre;

-(id)initComNome: (NSString *) nome
 eDataNascimento: (NSDate *) dtNasc
   eUniversidade: (NSString *) universidade
          eCurso: (NSString *) curso
  eDataDeEntrada: (NSDate *) dtEntrada;

@end
