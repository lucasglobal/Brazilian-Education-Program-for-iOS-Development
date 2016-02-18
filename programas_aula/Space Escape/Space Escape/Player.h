//
//  Player.h
//  Space Escape
//
//  Created by Lucas Andrade on 10/8/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "Bullet.h"

@interface Player : SKSpriteNode
-(instancetype)initWithPosition:(CGPoint)position;
-(void)destroyPlayer;
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
@end
