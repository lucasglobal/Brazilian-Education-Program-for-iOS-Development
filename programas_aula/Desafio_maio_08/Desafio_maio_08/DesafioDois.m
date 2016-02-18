//
//  DesafioDois.m
//  Desafio_maio_08
//
//  Created by LucasAndrade on 5/9/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "DesafioDois.h"
#import "BEPiDPessoa.h"

@implementation DesafioDois

-(id)init{
    _caminho = @"/users/lucasandrade/Desktop/Ambiente";
    return self;
}

-(NSString *)questao_2_1 {
    NSArray *paths = [[NSFileManager defaultManager] subpathsAtPath:self.caminho];
    
    NSString *achado;
    //Tenta encontrar o arquivo no caminho criado
    for ( NSString *item in paths) {
        if ([item hasSuffix:@"BEPiDPessoa.h"]){
            achado = item;
            break;
        }
    }
    
    
    NSError *error = nil;
    //formatando com o caminho encontrado
    NSData *file = [NSData dataWithContentsOfFile:[self.caminho stringByAppendingFormat:@"/%@", achado] options:NSUTF8StringEncoding error:&error];
    [file writeToFile: [self.caminho stringByAppendingString:@"/BEPiDPessoa.h"] options:NSUTF8StringEncoding error:&error];
    
    return [achado stringByAppendingString:@"\n"];
}

-(NSString *)questao_2_2 {
    NSArray *paths = [[NSFileManager defaultManager] subpathsAtPath:self.caminho];
   
    //Tenta encontrar o arquivo no caminho criado
    NSString *achado;
    for ( NSString *item in paths) {
        if ([item hasSuffix:@"BEPiDPessoa.m"]){
            achado = item;
            break;
        }
    }
    
    NSError *error = nil;
    
    //formatando com o caminho encontrado
    NSData *file = [NSData dataWithContentsOfFile:[self.caminho stringByAppendingFormat:@"/%@", achado] options:NSUTF8StringEncoding error:&error];
    [file writeToFile: [self.caminho stringByAppendingString:@"/BEPiDPessoa.m"] options:NSUTF8StringEncoding error:&error];
    
    return [achado stringByAppendingString:@"\n"];
}

-(NSString *)questao_2_3 {
    
    //Declaracao das variaveis necessárias
    NSArray *paths = [[NSFileManager defaultManager] subpathsAtPath:self.caminho];
    NSError* error = nil;
    NSMutableArray* auxArray = [NSMutableArray array];
    NSMutableArray* auxArray2 = [NSMutableArray array];
    NSMutableArray* arrayPessoas = [NSMutableArray array];
    
    //Encontrando ocorrências de arquivos com extensao .csv junto com seu caminho e guardando no array
    for ( NSString *item in paths) {
        if ([item hasSuffix:@".csv"]){
            NSString *fileString = [NSString stringWithContentsOfFile:[self.caminho stringByAppendingFormat:@"/%@",item] encoding:NSUTF8StringEncoding error:&error];
            [auxArray addObject:[fileString componentsSeparatedByString:@"\n"]];
        }
    }
    
    //Separa todos as ocorrências que estavam entre vírgula e guarda em novo array
    for(NSMutableArray* item2 in auxArray){
        for(NSString* strAux in item2){
                   [auxArray2 addObject:[strAux componentsSeparatedByString:@","]];
        }
    }
    
    for( NSMutableArray* dadosPessoa in auxArray2){
        
        BEPiDPessoa* pessoaAux = [[BEPiDPessoa alloc]init];
        
        //Começa alguns atributos de pessoa
        [pessoaAux setNome:dadosPessoa[0]];
        [pessoaAux setSobreNome:dadosPessoa[1]];
        [pessoaAux setSexo:1];
        
        //Como as ocorrências de pessoa nos arquivos não estão padronizados, é preciso controlar quais dados serão utilizados
        //Condição se tiver todos os dados
        if([dadosPessoa count]==5){
            [pessoaAux setDataNascimento:dadosPessoa[2]];
            
            //Se for feminino, o sexo será 0
            if([dadosPessoa[3]isEqualToString: @"F" ]){
                [pessoaAux setSexo:0];
            }
            
            //se for masculino, o sexo será 1
            else if([dadosPessoa[3]isEqualToString:@"M"]){
                [pessoaAux setSexo:1];
            }
        }
        //Condição de faltar o sexo
        if([dadosPessoa count]==4){
            [pessoaAux setDataNascimento:dadosPessoa[2]];
        }

        //array com as informações de todas as pessoas
        [arrayPessoas addObject:pessoaAux];
    }
    NSMutableArray* arrayPessoasFinais = [NSMutableArray array];
    
    for(BEPiDPessoa *pessoaAux in arrayPessoas){
        
        //Filtrando se a pessoa tem nome que começa com a letra 'S' e se tem sexo feminino
        if(([[pessoaAux sobreNome] hasPrefix:@"S"]) && ([pessoaAux sexo] == 0)){
            
            //Como no arquivo .csv tem os cabeçalhos que não são dados úteis, é necessário retirá-los
            if(![[pessoaAux sobreNome]hasSuffix:@"Nome"]){
                
                //Finalmente adicionar ao array de pessoas já com filtro
                [arrayPessoasFinais addObject:pessoaAux];
            }
        }
    }
    
    //Ordenando o array de pessoas finais pelo nome
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"nome" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    [arrayPessoasFinais sortUsingDescriptors:sortDescriptors];
    
    NSString* resposta = [[NSString alloc]init];
    
    //formatando resposta
    for(BEPiDPessoa* pessoaAuxUltimo in arrayPessoasFinais){
        resposta = [resposta stringByAppendingFormat:@"\n%@\n",pessoaAuxUltimo];
    }
    return resposta;
}

@end
