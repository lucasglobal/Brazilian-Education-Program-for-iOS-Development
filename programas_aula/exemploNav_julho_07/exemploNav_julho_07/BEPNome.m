//
//  BEPNome.m
//  exemploNav_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "BEPNome.h"

@implementation BEPNome
+(id)sharedNome{
    static BEPNome *sharedNome = nil;
    
    if(sharedNome){
        sharedNome = [[self alloc] initPrivate];
    }
    return sharedNome;
}

-(id)initPrivate{
    self = [super init];
    if(self){
        _nome = [[NSString alloc]init];
        _nome = @"Nome Default";
    }
    return self;
}
-(id)obterSharedNome{
    return self.nome;
}
-(void)setarSharedNome:(NSString *)nome{
    _nome = nome;
}

-(id)init{
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use + [BEPNome sharedNome]" userInfo:nil];
    return nil;
}

@end
