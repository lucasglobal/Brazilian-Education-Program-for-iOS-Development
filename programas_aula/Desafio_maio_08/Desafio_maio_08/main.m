//
//  main.m
//  Desafio_maio_08
//
//  Created by LucasAndrade on 5/8/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Desafios.h"
#import "DesafioUm.h"
#import "DesafioDois.h"
#import "DesafioTres.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //alocar nossos desafios
        Desafios* desafios = [[Desafios alloc]init];
        DesafioUm *desafio1 = [[DesafioUm alloc]init];
        DesafioDois *desafio2 = [[DesafioDois alloc]init];
        DesafioTres *desafio3 = [[DesafioTres alloc]init];

        
        //iniciar
        [desafios criarPasta];
        
        //gravando respostas
        [desafios gravarResposta:[desafio1 questao_1_1] doDesafio:1 eDaQuestao:@"1"];
        [desafios gravarResposta:[desafio1 questao_1_2] doDesafio:1 eDaQuestao:@"2"];
        [desafios gravarResposta:[desafio1 questao_1_3] doDesafio:1 eDaQuestao:@"3"];
        [desafios gravarResposta:[desafio1 questao_1_4] doDesafio:1 eDaQuestao:@"4"];
        [desafios gravarResposta:[desafio1 questao_1_5] doDesafio:1 eDaQuestao:@"5"];
        [desafios gravarResposta:[desafio1 questao_1_6] doDesafio:1 eDaQuestao:@"6"];
        [desafios gravarResposta:[desafio1 questao_1_7] doDesafio:1 eDaQuestao:@"7"];
        [desafios gravarResposta:[desafio1 questao_1_8] doDesafio:1 eDaQuestao:@"8"];
        [desafios gravarResposta:[desafio1 questao_1_9] doDesafio:1 eDaQuestao:@"9"];

        [desafios gravarResposta:[desafio2 questao_2_1] doDesafio:2 eDaQuestao:@"1"];
        [desafios gravarResposta:[desafio2 questao_2_2] doDesafio:2 eDaQuestao:@"2"];
        [desafios gravarResposta:[desafio2 questao_2_3] doDesafio:2 eDaQuestao:@"3"];
        
        [desafios gravarResposta:[desafio3 questao_3_1] doDesafio:3 eDaQuestao:@"1"];

    }
    return 0;
}

