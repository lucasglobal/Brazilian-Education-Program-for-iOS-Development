//
//  BEPiDUsuario.h
//  primeiroTeste
//
//  Created by LucasAndrade on 4/29/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BEPiDUsuario :NSObject

@property (nonatomic,copy) NSString* nome;
@property (nonatomic,getter = nascimento,setter = setNascimento:) NSDate* dataNascimento;
@property (nonatomic,strong) NSString* usuario;
@property (nonatomic) NSString* senha;
@property (nonatomic,readonly) NSDate* dataCriacao;

-(NSString*)critptografa:(NSString*)senha comChave:(int)chave;
-(NSString*)desCritptografa:(NSString*)senha comChave:(int)chave;
-(NSString*)pegaSenha;
@end
