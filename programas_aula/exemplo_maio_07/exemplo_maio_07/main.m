//
//  main.m
//  exemplo_maio_07
//
//  Created by LucasAndrade on 5/7/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Criando array de items
        NSMutableArray* stocks = [[NSMutableArray alloc]init];
        
        //Criando primeiro item
        NSMutableDictionary* stock1 = [[NSMutableDictionary alloc]init];
        [stock1 setObject:@"MCL" forKey:@"abreviacao"];
        [stock1 setObject:@"Michel Carmo Lopes" forKey:@"nome"];
        [stock1 setObject:[NSNumber numberWithInt:25] forKey:@"idade"];
        
        //adicionando primeiro item no array
        [stocks addObject:stock1];
        
        //criando segundo item
        NSMutableDictionary* stock2 = [[NSMutableDictionary alloc]init];
        [stock2 setObject:@"AAJ" forKey:@"Abreviacao"];
        [stock2 setObject:@"Alberto Amaral Junior" forKey:@"nome"];
        [stock2 setObject:[NSNumber numberWithInt:26] forKey:@"idade"];
        
        //adicionando segundo item no array
        [stocks addObject:stock2];
        
        //Gravando em um arquivo com XML
        [stocks writeToFile:@"/tmp/stocks.txt" atomically:YES];
        
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile: @"/tmp/stocks.txt"];
        
        for ( NSDictionary *item in stockList ) {
            NSLog(@"%@", item);
        }

        
    }
    return 0;
}

