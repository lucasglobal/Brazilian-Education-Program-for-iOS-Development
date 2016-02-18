//
//  DesafioTres.m
//  Desafio_maio_08
//
//  Created by LucasAndrade on 5/9/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "DesafioTres.h"

@implementation DesafioTres

-(id)init{
    _caminho = @"/users/lucasandrade/Desktop/Ambiente";
    return self;
}

-(NSString *)questao_3_1 {
    NSArray *paths = [[NSFileManager defaultManager] subpathsAtPath:self.caminho];
    
    NSString *resposta = @"";
    
    int count = 0;
    for ( NSString *item in paths) {
        
        //pegando somente arquivos com extensao .png
        if ([item hasSuffix:@".png"]){
            count++;
            
            //Dividindo caminho pelas ocorrências de '/'
            NSArray *listItems2 = [item componentsSeparatedByString:@"/"];
            
            //Dididindo nome do arquivo(último item) com sua extensão
            NSArray *listItems3 = [ [listItems2 lastObject] componentsSeparatedByString:@"."];
            
            //numero do pokemon
            NSString *numero;
            if ( count < 10 ) {
                numero = [@"00" stringByAppendingFormat:@"%d",count];
            } else if ( count < 100 ) {
                numero = [@"0" stringByAppendingFormat:@"%d",count];
            } else {
                numero = [@"" stringByAppendingFormat:@"%d",count];
            }
            
            //encontrar nome do pokemon que foi separado anteriormente
            NSString *nomeP = [listItems3 firstObject];
            
            //caminho do arquivo
            NSString *caminhoP = item;
            
            //formatando resposta
            resposta = [resposta stringByAppendingFormat:@"%@ - %@ - %@\n",numero,nomeP,caminhoP];
            
        }
    }
    
    
    
    return resposta;
}

@end
