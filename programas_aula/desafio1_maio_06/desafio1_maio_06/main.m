//
//  main.m
//  desafio1_maio_06
//
//  Created by LucasAndrade on 5/6/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        char auxNome[100];
        
        
        
        NSLog(@"Digite seu nome:");
        fgets(auxNome,100,stdin);
        NSString* nome = [NSString stringWithUTF8String:auxNome];
    
        NSMutableString* nomeFinal = [[NSMutableString alloc]init];
        for(int i = 1;i<=[nome length];i++){
            NSString* aux = [nome substringToIndex:i];
            aux = [aux substringFromIndex:i-1];
            NSLog(@"%@",aux);
            if([aux  isEqual: @" "]){
                [nomeFinal appendString:@"_"];
            }
            if(![aux  isEqual: @" "]){
                [nomeFinal appendString:aux];
            }
        }
         NSLog(@"final %@",nomeFinal);
    }
    return 0;
}

