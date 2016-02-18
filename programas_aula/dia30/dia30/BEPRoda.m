//
//  BEPRoda.m
//  dia30
//
//  Created by LucasAndrade on 4/30/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "BEPRoda.h"

@implementation BEPRoda

-(NSString*) description{
    return [NSString stringWithFormat:@"RODA %d  %d  %d %@",self.aro,self.largura,self.perfil,self.material];
}


@end
