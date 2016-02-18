//
//  BEPNome.h
//  navControllerSimples
//
//  Created by Marcos on 7/2/14.
//  Copyright (c) 2014 Marcos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BEPNome : UIViewController
@property (nonatomic) NSString *nome;

//Note que foi colocado + ao invés de -
+ (id) sharedNome;
- (id) obterSharedNome;
- (void) setarSharedNome: (NSString *) nome;
@end






