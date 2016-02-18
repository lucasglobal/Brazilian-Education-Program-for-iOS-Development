//
//  MyScene.h
//  SpriteKitSimpleGame
//

//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "GameOverScene.h"
@interface MyScene : SKScene <SKPhysicsContactDelegate>
@property (nonatomic) SKSpriteNode * player;
@property (nonatomic) NSTimeInterval lastSpawnTimeInterval;
@property (nonatomic) NSTimeInterval lastUpdateTimeInterval;
@property (nonatomic) int monstersDestroyed;
@end
