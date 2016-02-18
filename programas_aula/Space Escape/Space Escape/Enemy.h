//
//  Enemy.h
//  Space Escape
//
//  Created by Lucas Andrade on 10/9/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface Enemy : SKSpriteNode
@property(nonatomic)BOOL flagWalkingLeft;

+(SKTexture*)generateTexture;
-(instancetype)initWithPosition:(CGPoint)position;
-(void)moveHorizontally;
-(void)destroyEnemy;

@end
