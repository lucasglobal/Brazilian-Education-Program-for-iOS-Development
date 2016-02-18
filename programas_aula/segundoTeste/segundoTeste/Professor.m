//
//  Professor.m
//  segundoTeste
//
//  Created by LucasAndrade on 4/29/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "Professor.h"

@implementation Professor
-(void)setRegime:(NSString *)regime{
    if([regime isEqualToString:@"CLT"]){
            [self setSalario:12000];
    }
    else if([regime isEqualToString:@"horista"]){
        [self setSalario:50];
    }
    _regime = regime;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"Professor %@ é contratado no sistema de %@ que ganha R$ %d por %@", self.nome,self.regime,self.salario, [self.regime isEqualToString:@"CLT"] ? @"Mes" : @"Hora"];
}

@end
