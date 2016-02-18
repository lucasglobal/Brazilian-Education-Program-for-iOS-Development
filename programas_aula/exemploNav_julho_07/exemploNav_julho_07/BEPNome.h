//
//  BEPNome.h
//  exemploNav_julho_07
//
//  Created by Lucas Andrade on 7/7/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BEPNome : NSObject

@property (nonatomic) NSString* nome;

+(id)sharedNome;
-(id)obterSharedNome;
-(void)setarSharedNome:(NSString*)nome;
@end
