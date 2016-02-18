//
//  main.m
//  dia30_terceiro
//
//  Created by LucasAndrade on 4/30/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Professor.h"
#import "Aluno.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Aluno* aluno1 = [[Aluno alloc]init];
        aluno1.nome = @"bruno";
        Aluno* aluno2 = [[Aluno alloc]init];
        aluno2.nome = @"Lucas";
        Aluno* aluno3 = [[Aluno alloc]init];
        aluno3.nome = @"seila";
        NSMutableArray* arrayAlunos = [NSMutableArray array];
        [arrayAlunos addObject:aluno1];
        [arrayAlunos addObject:aluno2];
        [arrayAlunos addObject:aluno3];
        
        
        Professor* professor1 = [[Professor alloc]init];
        [professor1 setListaDeAlunos:[NSMutableArray array]];
        [professor1 setNome:@"bruno"];
        [professor1 setSexo:@"masc"];
        for(int i =0;i<3;i++){
            [professor1.listaDeAlunos addObject:[arrayAlunos objectAtIndex:i]];
        }
        NSLog(@"impressaoOOOOOO %@",professor1.listaDeAlunos);
        Professor* professor2 = [[Professor alloc]init];
        for(int i =0;i<3;i++){
            [professor1.listaDeAlunos addObject:[arrayAlunos objectAtIndex:i]];
        }
        [professor2 setNome:@"lucas"];
        [professor2 setSexo:@"masc"];
        
        
        
        
        NSLog(@"professor %@",professor1);
        // insert code here...
        
        
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

