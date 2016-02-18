//
//  main.m
//  desafio2_maio_07
//
//  Created by LucasAndrade on 5/7/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //criando variavel com diretorio
        NSString *caminho = @"/users/lucasandrade/Desktop/pastaNova";
        
        NSError* error = nil;
        //criando pasta
        NSFileManager* file = [[NSFileManager alloc]init];
        [file createDirectoryAtPath:caminho withIntermediateDirectories:YES attributes:nil error:&error];
        
        //criando dicionario com nsnumber
        NSMutableDictionary *idades = [[NSMutableDictionary alloc]init];
        [idades setObject:[NSNumber numberWithInt:20] forKey:@"lucas"];
        [idades setObject:[NSNumber numberWithInt:22] forKey:@"riheldo"];
        
        //criando dicionario com string
        NSMutableDictionary *sobrenome = [[NSMutableDictionary alloc]init];
        [sobrenome setObject:@"Andrade" forKey:@"lucas"];
        [sobrenome setObject:@"Melo" forKey:@"riheldo"];
        
        //criando formatacao para datas para inserir em nsdate
        NSDateFormatter *dt = [[NSDateFormatter alloc] init];
        [dt setDateFormat:@"yyyy-MM-dd"];
        NSDate *bdateLucas = [dt dateFromString:@"1994-05-05"];
        NSDateFormatter *dt2 = [[NSDateFormatter alloc] init];
        [dt2 setDateFormat:@"yyyy-MM-dd"];
        NSDate *bdateRiheldo = [dt2 dateFromString:@"1991-09-23"];

       
        //criando dicionario com datas
        NSMutableDictionary *nascimento = [[NSMutableDictionary alloc]init];
        [nascimento setObject:bdateLucas forKey:@"lucas"];
        [nascimento setObject:bdateRiheldo forKey:@"riheldo"];
        
        
        //criando array com o dicionario number para escrever no arquivo
        NSMutableArray *arrayNumber = [[NSMutableArray alloc]init];
        [arrayNumber addObject: idades];
        [arrayNumber writeToFile: [caminho stringByAppendingString:@"/number.plist"] atomically:YES];
        
        //criando array com o dicionario string para escrever no arquivo
        NSMutableArray* arrayString = [[NSMutableArray alloc]init];
        [arrayString addObject: sobrenome];
        [arrayString writeToFile: [caminho stringByAppendingString:@"/string.plist"] atomically:YES];
        
        //criando array com o dicionario date para escrever no arquivo
        NSMutableArray* arrayDate = [[NSMutableArray alloc]init];
        [arrayDate addObject: nascimento];
        [arrayDate writeToFile: [caminho stringByAppendingString:@"/date.plist"] atomically:YES];
        
        
    }
    return 0;
}

