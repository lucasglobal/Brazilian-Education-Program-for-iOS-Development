//
//  GameScene.h
//  Space Escape
//

//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "Player.h"
#import "BackGroundLayer.h"
#import "GameState.h"
#import "Label.h"
@interface GameScene : SKScene <SKPhysicsContactDelegate>
@property(nonatomic)Player* player;
@property(nonatomic)BackGroundLayer* backGroundLayer;
@property(nonatomic)Label* score;
@end
