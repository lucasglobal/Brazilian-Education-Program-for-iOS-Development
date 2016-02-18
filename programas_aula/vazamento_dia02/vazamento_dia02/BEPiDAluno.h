//
//  BEPiDAluno.h
//  vazamento_dia02
//
//  Created by LucasAndrade on 5/2/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BEPiDPatrimonio;

@interface BEPiDAluno : NSObject

@property NSString* nomeAluno;
@property unsigned int matriculaAluno;

-(void)adicionarPatrimonio:(BEPiDPatrimonio*)p;
-(unsigned int)totalPatrimonio;

@end
