//
//  GameState.m
//  Space Escape
//
//  Created by Lucas Andrade on 10/10/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "GameState.h"

static GameState *gameState;

@implementation GameState
-(instancetype)init{
    return nil;
}
-(instancetype)initPrivate{
    self = [super init];
    if(self){
        _score = 0;
        _highScore = 0;
        
        NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
        id highScore = [defaults objectForKey:@"highScore"];
        if(highScore){
            _highScore = [highScore intValue];
        }
    }
    return self;
}
+(GameState*)sharedState{
    static dispatch_once_t token;
    dispatch_once(&token,^{
        gameState = [[GameState alloc]init];
    });
    return gameState;
}
-(void)addScore:(NSUInteger)score{
    _score += score;
}
-(void)resetScore{
    _score = 0;
}
-(void)saveState{
    _highScore = MAX(_score, _highScore);
    
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithUnsignedInteger:_highScore] forKey:@"highScore"];
    [[NSUserDefaults standardUserDefaults]synchronize];
}





@end
