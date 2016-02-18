//
//  main.m
//  segundoTeste
//
//  Created by LucasAndrade on 4/29/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Professor.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Professor* professor1 = [[Professor alloc] init];
        professor1.nome = @"PHIL CHATO";
        professor1.regime = @"CLT";
        professor1.matricula = 123;
        NSLog(@"%@",professor1);
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

