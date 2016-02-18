//
//  main.m
//  vazamento_dia02
//
//  Created by LucasAndrade on 5/2/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BEPiDAluno.h"
#import "BEPiDPatrimonio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *alunos = [[NSMutableArray alloc]init];
        
        for ( int i = 0; i < 10; i++) {
            BEPiDAluno * alunoBEPiD = [[BEPiDAluno alloc]init];
            alunoBEPiD.matriculaAluno = i;
            [alunos addObject:alunoBEPiD];
        }
        
        for ( int i = 0; i < 10; i++ ) {
            BEPiDPatrimonio * patrimonioBEPiD = [[BEPiDPatrimonio alloc] init];
            NSString * patrimonioRotulo = [NSString stringWithFormat:@"MacBook%d",i];
            patrimonioBEPiD.rotuloPatrimonio = patrimonioRotulo;
            patrimonioBEPiD.valorRevenda = 350+i*17;
            NSUInteger randomIndice = arc4random()%[alunos count];
            BEPiDAluno *randomAluno = [alunos objectAtIndex:randomIndice];
            [randomAluno adicionarPatrimonio:patrimonioBEPiD];
        }
        
        NSLog(@"Alunos %@", alunos);
        NSLog(@"Removendo um aluno");
        [alunos removeObjectAtIndex:5];
        NSLog(@"Removendo Array");
        alunos = nil;
    }
    sleep(100);
    return 0;
}

