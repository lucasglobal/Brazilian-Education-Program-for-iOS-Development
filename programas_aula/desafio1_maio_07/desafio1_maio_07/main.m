//
//  main.m
//  desafio1_maio_07
//
//  Created by LucasAndrade on 5/7/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //declaracao dos nós
        NSMutableDictionary* avo = [[NSMutableDictionary alloc]init];
        NSMutableDictionary* pai = [[NSMutableDictionary alloc]init];
        NSMutableDictionary* eu = [[NSMutableDictionary alloc]init];
        NSMutableDictionary* irmao1 = [[NSMutableDictionary alloc]init];
        NSMutableDictionary* irmao2 = [[NSMutableDictionary alloc]init];

        //implementacao de avo
        [avo setObject:@"Claudio" forKey:@"nome"];
        [avo setObject:@"claudio@gmail.com" forKey:@"e-mail"];
        [avo setObject:[NSNumber numberWithInt:70] forKey:@"idade"];
        [avo setObject:[NSNumber numberWithInt:12345678] forKey:@"telefone"];
        [avo setObject:pai forKey:@"filho"];
        
        //implementacao de pai
        [pai setObject:@"Carlos" forKey:@"nome"];
        [pai setObject:@"carlos@gmail.com" forKey:@"e-mail"];
        [pai setObject:[NSNumber numberWithInt:50] forKey:@"idade"];
        [pai setObject:[NSNumber numberWithInt:34145613] forKey:@"telefone"];
        [pai setObject:eu forKey:@"filho1"];
        [pai setObject:irmao1 forKey:@"filho2"];
        [pai setObject:irmao2 forKey:@"filho3"];
        
        //implementacao de eu
        [eu setObject:@"Lucas" forKey:@"nome"];
        [eu setObject:@"lucas@gmail.com" forKey:@"e-mail"];
        [eu setObject:[NSNumber numberWithInt:20] forKey:@"idade"];
        [eu setObject:[NSNumber numberWithInt:24151613] forKey:@"telefone"];
        
        //implementacao de irmao1
        [irmao1 setObject:@"roberto" forKey:@"nome"];
        [irmao1 setObject:@"roberto@gmail.com" forKey:@"e-mail"];
        [irmao1 setObject:[NSNumber numberWithInt:21] forKey:@"idade"];
        [irmao1 setObject:[NSNumber numberWithInt:24451613] forKey:@"telefone"];
        
        //implementacao de irmao2
        [irmao2 setObject:@"ronaldo" forKey:@"nome"];
        [irmao2 setObject:@"ronaldo@gmail.com" forKey:@"e-mail"];
        [irmao2 setObject:[NSNumber numberWithInt:22] forKey:@"idade"];
        [irmao2 setObject:[NSNumber numberWithInt:24453453] forKey:@"telefone"];

        //criando arvore e colocando somente avo pois esse já tem a referencia de todos
        NSMutableArray* arvore = [[NSMutableArray alloc]init];
        [arvore addObject:avo];
        
        //Gravando em um arquivo com XML
        [arvore writeToFile:@"/tmp/arvore.plist" atomically:YES];
        
        

        
    }
    return 0;
}

