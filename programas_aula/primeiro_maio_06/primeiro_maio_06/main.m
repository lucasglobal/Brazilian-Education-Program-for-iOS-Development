//
//  main.m
//  primeiro_maio_06
//
//  Created by LucasAndrade on 5/6/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef int (^ SomandoDoisNumeros)(int x,int y);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int x = 10;
        int y = 30;
        SomandoDoisNumeros Somar;
        
        Somar = ^ (int x,int y){
            int soma;
            soma = x+y;
            return soma;
        };
        NSLog(@"Resultado: %d",Somar(x,y));
        NSLog(@"Resultado: %d",Somar(x,x));
        NSLog(@"Resultado: %d",Somar(y,y));
              
        
    }
    return 0;
}

