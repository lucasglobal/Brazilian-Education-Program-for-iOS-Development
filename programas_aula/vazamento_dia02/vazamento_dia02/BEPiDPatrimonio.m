//
//  BEPiDPatrimonio.m
//  vazamento_dia02
//
//  Created by LucasAndrade on 5/2/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "BEPiDPatrimonio.h"
#import "BEPiDAluno.h"


@implementation BEPiDPatrimonio

-(NSString*)description{
    if(self.portador){
        return [NSString stringWithFormat:@"<%@ : %u pertence ao %@>",self.rotuloPatrimonio,self.valorRevenda,self.portador];
    }
    else{
        return [NSString stringWithFormat:@"Equipamento sem dono"];
    }
}
-(void)dealloc{
    NSLog(@"Desalocando:%@",self);
}

@end
