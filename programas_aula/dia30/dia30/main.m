//
//  main.m
//  dia30
//
//  Created by LucasAndrade on 4/30/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BEPCarro.h"
#import "BEPRoda.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
     
        BEPRoda* roda1 = [[BEPRoda alloc]init];
        [roda1 setAro:20];
        [roda1 setLargura:30];
        [roda1 setPerfil:1];
        [roda1 setMaterial:@"borracha"];
        BEPRoda* roda2 = [[BEPRoda alloc]init];
        [roda2 setAro:21];
        [roda2 setLargura:31];
        [roda2 setPerfil:2];
        [roda2 setMaterial:@"acrilico"];
        BEPRoda* roda3 = [[BEPRoda alloc]init];
        [roda3 setAro:23];
        [roda3 setLargura:29];
        [roda3 setPerfil:1];
        [roda3 setMaterial:@"madeira"];
        BEPRoda* roda4 = [[BEPRoda alloc]init];
        [roda4 setAro:110];
        [roda4 setLargura:300];
        [roda4 setPerfil:13];
        [roda4 setMaterial:@"ouro"];

        BEPCarro* carro1 = [[BEPCarro alloc]init];
        [carro1 setModelo:@"ferrari"];
        [carro1 setAno:@"2000"];
        [carro1 setPotencia:100];
        [carro1 setRoda:roda1];
        BEPCarro* carro2 = [[BEPCarro alloc]init];
        [carro2 setModelo:@"lamborghini"];
        [carro2 setAno:@"1990"];
        [carro2 setPotencia:110];
        [carro2 setRoda:roda2];
        BEPCarro* carro3 = [[BEPCarro alloc]init];
        [carro3 setModelo:@"fusca"];
        [carro3 setAno:@"1978"];
        [carro3 setPotencia:10];
        [carro3 setRoda:roda3];
        BEPCarro* carro4 = [[BEPCarro alloc]init];
        [carro4 setModelo:@"gol"];
        [carro4 setAno:@"2012"];
        [carro4 setPotencia:11];
        [carro4 setRoda:roda4];
        
        NSLog(@"carro: %@",carro1);
        NSLog(@"carro: %@",carro2);
        NSLog(@"carro: %@",carro3);
        NSLog(@"carro: %@",carro4);
                // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

