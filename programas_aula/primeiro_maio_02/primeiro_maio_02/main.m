//
//  main.m
//  primeiro_maio_02
//
//  Created by LucasAndrade on 5/5/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc]init];
        for(int i = 0; i<10 ; i++){
            [str appendString:@"AGORA FOI\n"];
        }
        
        NSError* erro;
        
        [str writeToFile:@"/Users/lucasandrade/Documents/BEPiD/programas_aula/primeiro_maio_02/primeiro_maio_02/legal.txt" atomically:YES encoding:NSUTF8StringEncoding error:&erro];
        NSLog(@"Escrevendo  no arquivo /tmp/legal.txt");
    
        NSError* erro2;
        NSString* str2 = [[NSString alloc]initWithContentsOfFile:@"/Users/lucasandrade/Documents/BEPiD/programas_aula/primeiro_maio_02/primeiro_maio_02/legal.txt" encoding:NSASCIIStringEncoding  error:&erro2];
        
        if(!str2){
            NSLog(@"Falhou: %@",[erro2 localizedDescription]);
        }
        else{
            NSLog(@"Pegou os dados\n%@",str2);
        }
        
        }
    return 0;
}

