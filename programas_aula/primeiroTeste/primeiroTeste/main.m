//
//  main.m
//  primeiroTeste
//
//  Created by LucasAndrade on 4/29/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BEPiDUsuario.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
        BEPiDUsuario *usuario1 = [[BEPiDUsuario alloc]init];
        usuario1.senha = @"senhanova";
        
                // insert code here...
        NSLog(@"senha: %@",usuario1.senha);
        
    }
    return 0;
}

