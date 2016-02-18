//
//  BEPCarro.h
//  dia30
//
//  Created by LucasAndrade on 4/30/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BEPRoda.h"

@interface BEPCarro : NSObject

@property NSString* modelo;
@property NSString* ano;
@property int potencia;
@property BEPRoda* roda;

@end
