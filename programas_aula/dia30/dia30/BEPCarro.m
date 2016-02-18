//
//  BEPCarro.m
//  dia30
//
//  Created by LucasAndrade on 4/30/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "BEPCarro.h"

@implementation BEPCarro

-(NSString*) description{
    return [NSString stringWithFormat:@"CARRO %@ ano %@  potencia %d roda %@ ",self.modelo,self.ano,self.potencia,self.roda];
}

@end
