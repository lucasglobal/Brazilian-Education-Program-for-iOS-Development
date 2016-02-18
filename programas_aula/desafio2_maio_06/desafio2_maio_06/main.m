//
//  main.m
//  desafio2_maio_06
//
//  Created by LucasAndrade on 5/6/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int (^ somarOuSubtrair)(int x,int y,int escolha);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        somarOuSubtrair funcao;
        
        funcao = ^ (int x,int y,int escolha){
            if(escolha == 1){
                return x+y;
            }
            else if(escolha == 2){
                return x-y;
            }
            else{
                NSLog(@"Errado, escolha 1 para soma ou 2 para subtracao");
                return 0;
            }
        };
        
        int primeiroNumeroEntrada;
        int segundoNumeroEntrada;
        int escolhaOperacao;
        
        NSLog(@"Digite o primeiro número:");
        scanf("%d",&primeiroNumeroEntrada);
        NSLog(@"Digite o segundo número:");
        scanf("%d",&segundoNumeroEntrada);
        NSLog(@"Digite 1 para adicao e 2 para subtracao");
        scanf("%d",&escolhaOperacao);

        NSLog(@"Resultado: %d",funcao(primeiroNumeroEntrada,segundoNumeroEntrada,escolhaOperacao));
    }
    return 0;
}

