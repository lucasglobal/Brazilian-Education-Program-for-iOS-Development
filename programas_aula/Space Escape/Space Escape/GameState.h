//
//  GameState.h
//  Space Escape
//
//  Created by Lucas Andrade on 10/10/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface GameState : NSObject
@property(nonatomic,readonly)NSUInteger score;
@property(nonatomic) NSUInteger highScore;

+(GameState*)sharedState;

-(void)addScore:(NSUInteger)score;
-(void)resetScore;
-(void)saveState;

@end
