//
//  Endereco.m
//  desafio2_maio_02
//
//  Created by LucasAndrade on 5/5/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "Endereco.h"

@implementation Endereco

-(id) initWithCep:(NSString*)cep{
    
    NSError* erro;
    NSMutableString* url = [[NSMutableString alloc]init];
    [url appendString:@"http://appservidor.com.br/webservice/cep?cep="];
    [url appendString:cep];
    [url appendString:@"&saida=json"];
   
    NSURL *urlFinal = [[NSURL alloc]initWithString:url];
    NSData *oResponseData = [NSData dataWithContentsOfURL:urlFinal options:NSDataReadingUncached error:&erro];
    
    if ( erro ) {
        NSLog(@"%@", erro);
        return self;
    }
    
    NSDictionary* jsonDict = [NSJSONSerialization JSONObjectWithData:oResponseData options:0 error:&erro];
    
    _cep = cep;
    _logradouro = [jsonDict objectForKey:@"logradouro"];
    _logradouro_nome = [jsonDict objectForKey:@"logradouro_nome"];
    _logradouro_completo = [jsonDict objectForKey:@"logradouro_completo"];
    _bairro = [jsonDict objectForKey:@"bairro"];
    _cidade = [jsonDict objectForKey:@"cidade"];
    _uf_sigla = [jsonDict objectForKey:@"uf_sigla"];
    _uf_nome = [jsonDict objectForKey:@"uf_nome"];
    
    
    return self;
}




-(NSString *)description{
    return [NSString stringWithFormat:@"\nCEP = %@\nlogradouro = %@\nlogradouro_nome = %@\nlogradouro_comleto=%@\nbairro = %@\ncidade = %@\nuf_sigla = %@\nuf_nome = %@",self.cep,self.logradouro,self.logradouro_nome,self.logradouro_completo,self.bairro,self.cidade,self.uf_sigla,self.uf_nome];
    


}

@end
