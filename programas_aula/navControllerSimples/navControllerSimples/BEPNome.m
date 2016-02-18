//
//  BEPNome.m
//  navControllerSimples
//
//  Created by Marcos on 7/2/14.
//  Copyright (c) 2014 Marcos. All rights reserved.
//

#import "BEPNome.h"

@interface BEPNome ()

@end

@implementation BEPNome

+ (id) sharedNome
{
    static BEPNome *sharedNome = nil;
    
    if (!sharedNome)
    {
         sharedNome = [[self alloc] initPrivate];
    }
    return sharedNome;
}

- (id) init
{
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use +[BEPNome sharedNome]"
                                 userInfo:nil];
    return nil;
}

-(id) initPrivate
{
    self = [super init];
    
    if (self)
    {
        _nome = [[NSString alloc] init];
        _nome = @"Nome default";
    }
    return self;
}

-(id) obterSharedNome
{
    return self.nome;
}

-(void) setarSharedNome: (NSString *) nome
{
    _nome = nome;
}


@end
