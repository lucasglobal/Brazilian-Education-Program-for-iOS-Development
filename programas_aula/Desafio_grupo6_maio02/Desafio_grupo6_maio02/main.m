//
//  main.m
//  Desafio_grupo6_maio02
//
//  Created by LucasAndrade on 5/2/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BEPiDAluno.h"

#define grupo6 "grupo 6"




int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableSet *alunos = [[NSMutableSet alloc]init];
        
        NSDateFormatter *formato = [[NSDateFormatter alloc]init];
        [formato setDateFormat:@"dd/mm/yyyy"];
        
        
        BEPiDAluno *aluno1 = [[BEPiDAluno alloc]initComNome:@"Riheldo" eDataNascimento:[formato dateFromString:@"23/09/1991"] eUniversidade:@"UnB" eCurso:@"Ciencia da computacao" eDataDeEntrada:[formato dateFromString:@"01/01/2011"]];
        
        [alunos addObject:aluno1];
        
        NSDictionary * grupos = [[NSDictionary alloc]init];
        
        grupos = @{
                        @grupo6 : alunos
                   };
        
        NSLog(@"%@",grupos);
    }

    return 0;
}

