//
//  Desafios.m
//  Desafio_maio_08
//
//  Created by LucasAndrade on 5/8/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "Desafios.h"

@implementation Desafios
-(id)init{
    _caminho = @"/users/lucasandrade/Desktop/Ambiente/respostas_02_42_57";
    return self;
}

-(void)criarPasta{
    
    NSError* error = nil;
    
    //criando pasta
    NSFileManager* file = [[NSFileManager alloc]init];
    [file createDirectoryAtPath:[self caminho] withIntermediateDirectories:YES attributes:nil error:&error];
    
    NSString* stringAux = [[NSString alloc]init];
    
    //criando os arquivos que serão usados para as escritas futuras
    [stringAux writeToFile:[[self caminho]stringByAppendingString:@"/respostas_desafio_1.txt"] atomically:YES encoding:NSUTF8StringEncoding error:&error];
    
    [stringAux writeToFile:[[self caminho]stringByAppendingString:@"/respostas_desafio_2.txt"] atomically:YES encoding:NSUTF8StringEncoding error:&error];
    
    [stringAux writeToFile:[[self caminho]stringByAppendingString:@"/respostas_desafio_3.txt"] atomically:YES encoding:NSUTF8StringEncoding error:&error];
    
}
-(void)gravarResposta:(NSString *)resposta doDesafio:(int)desafio eDaQuestao:(NSString*)questao{
    NSError* error = nil;
    NSString* temp = [[NSString alloc]init];
    
    //escolhe qual arquivo txt será usado dependendo do desafio recebido
    switch (desafio) {
        case 1:
            temp = [self.caminho stringByAppendingString:@"/respostas_desafio_1.txt"];
            break;
        case 2:
            temp = [self.caminho stringByAppendingString:@"/respostas_desafio_2.txt"];
            break;
        case 3:
            temp = [self.caminho stringByAppendingString:@"/respostas_desafio_3.txt"];
            break;
        default:
            break;
    }
    //formatacao da resposta
    resposta = [[questao stringByAppendingString:@" - "]stringByAppendingString:resposta];
    
    
    NSString *contents = [NSString stringWithContentsOfFile:temp encoding:NSUTF8StringEncoding error:&error];
    
    //grava a resposta no arquivo txt
    if ( !error ) {
        contents = [contents stringByAppendingString:resposta];
        [contents writeToFile:temp atomically:YES encoding: NSUTF8StringEncoding error:&error];
        
        if ( error ) {
            NSLog(@"%@",error);
        }
    } else {
        NSLog(@"%@",error);
    }
  
}
@end
