//
//  Desafios.h
//  Desafio_maio_08
//
//  Created by LucasAndrade on 5/8/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Desafios : NSObject
@property(nonatomic,readonly) NSString* caminho;

-(void)criarPasta;
-(void)gravarResposta: (NSString*)resposta doDesafio:(int)desafio eDaQuestao:(NSString*)questao;
@end
