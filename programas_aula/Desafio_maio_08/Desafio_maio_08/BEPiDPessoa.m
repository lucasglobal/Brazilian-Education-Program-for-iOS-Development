//
//  BEPiDPessoa.m
//  Aula
//
//  Created by Phelippe Augusto de Amorim on 3/14/14.
//  Copyright (c) 2014 Phelippe Augusto de Amorim. All rights reserved.
//

#import "BEPiDPessoa.h"

@implementation BEPiDPessoa

-(NSString*)description {
    return [NSString stringWithFormat:@"nome %@, sobrenome %@, datanascimento %@, sexo %d ",[self nome],self.sobreNome,self.dataNascimento,self.sexo];
}

//metodo para descobrir a idade da pessoa de acordo com sua data de nascimento
-(int)idade{
    
    NSMutableArray* arrayData = [NSMutableArray array];
    
    //pegando somente o ano
    [arrayData addObject:[[self dataNascimento] componentsSeparatedByString:@"/"]];
    NSString* ano = [[NSString alloc]init];
    ano = [[arrayData lastObject] lastObject];
    int anoInt = [ano intValue];
    
    //pegando o ano atual automaticamente
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy"];
    NSString *yearString = [formatter stringFromDate:[NSDate date]];
    int anoAtual = [yearString intValue];
    
    //retorno da idade
    return (anoAtual - anoInt);
}
-(NSString*)nomeCompleto{
    return @"";
}
@end