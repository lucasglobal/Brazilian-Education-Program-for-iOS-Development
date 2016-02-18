//
//  BEPiDAluno.m
//  Desafio_grupo6_maio02
//
//  Created by LucasAndrade on 5/2/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "BEPiDAluno.h"


@implementation BEPiDAluno

-(id)initComNome: (NSString *) nome
        eDataNascimento: (NSDate *) dtNasc
        eUniversidade: (NSString *) universidade
        eCurso: (NSString *) curso
        eDataDeEntrada: (NSDate *) dtEntrada {
    
    [self setNome: nome];
    [self setDataNascimento: dtNasc];
    [self setUniversidade:universidade];
    [self setCurso:curso];
    [self setEntradaCurso:dtEntrada];
    
    NSDate * now = [NSDate date];
    
    NSDateComponents * ageCompononents = [[NSCalendar currentCalendar]
                                                components:NSYearCalendarUnit
                                                fromDate:dtNasc
                                                toDate:now options:0];
    _idade = [ageCompononents year];
    
    NSDateComponents * semesterCompononents = [[NSCalendar currentCalendar]
                                          components:NSYearCalendarUnit
                                          fromDate:dtEntrada
                                          toDate:now options:0];
    
    _semestre = [semesterCompononents year] * 2;
    
    NSLog(@"idade %d, semestre %d", _idade, _semestre);
    
    return self;
    
}

@end
