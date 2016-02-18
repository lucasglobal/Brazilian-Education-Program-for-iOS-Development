//
//  BEPiDPatrimonio.h
//  vazamento_dia02
//
//  Created by LucasAndrade on 5/2/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BEPiDAluno.h"

@class BEPiDAluno;

@interface BEPiDPatrimonio : NSObject

@property NSString* rotuloPatrimonio;
@property unsigned int valorRevenda;
@property (nonatomic, weak) BEPiDAluno* portador;

@end
