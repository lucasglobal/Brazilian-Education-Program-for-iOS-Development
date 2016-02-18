//
//  main.m
//  desafio2_maio_02
//
//  Created by LucasAndrade on 5/5/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Endereco.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *urlArq = @"/users/lucasandrade/desktop/desafio2.txt";
        NSError *error = nil;
        
        
        Endereco* endereco1 = [[Endereco alloc]initWithCep:@"71010122"];
        NSLog(@"%@",endereco1);
        
        NSString *toWrite = [endereco1 description];
        [toWrite writeToFile: urlArq atomically: YES encoding: NSUTF8StringEncoding error:&error];
        
        if ( error ) {
            NSLog(@"%@",error);
        }
        
    }
    return 0;
}

