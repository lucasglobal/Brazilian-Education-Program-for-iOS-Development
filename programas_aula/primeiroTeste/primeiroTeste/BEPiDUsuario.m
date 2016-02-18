//
//  BEPiDUsuario.m
//  primeiroTeste
//
//  Created by LucasAndrade on 4/29/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "BEPiDUsuario.h"

@implementation BEPiDUsuario

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSDate *horaAtual = [NSDate date];
        self->_dataCriacao = horaAtual;
    }
    return self;
}
/*
- (void)setSenha:(NSString *)senha{
    
    //_senha = [self critptografa:senha comChave:10];
    
}
 */
- (NSString*) pegaSenha{
    return [self desCritptografa:[self senha] comChave:10];
}

-(NSString*)critptografa:(NSString*)senha comChave:(int)chave{
    char *cSenha = (char*) [senha UTF8String];
    char *critSenha;
    for (int cont=0; cont<=[senha length]; cont++) {
          //  critSenha = cSenha[cont]+chave;
           // NSLog(@"%s",critSenha);
        

        //critSenha[cont] = cSenha[cont]+chave;

    }
    return [NSString stringWithUTF8String:cSenha];
    
}
-(NSString*)desCritptografa:(NSString*)senha comChave:(int)chave{
    char *cSenha = (char*) [senha UTF8String];
    char *critSenha;
    for (int cont=0; cont<=[senha length]; cont++) {
        critSenha[cont] = cSenha[cont]-chave;
        
    }
    return [NSString stringWithUTF8String:critSenha];
    
}
@end
