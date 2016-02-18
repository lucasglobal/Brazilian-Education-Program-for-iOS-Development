//
//  GameScene.m
//  Space Escape
//
//  Created by Lucas Andrade on 10/8/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//
#import "GameScene.h"
#import "Enemy.h"
#import "PhysicsCategories.h"
#import "BackGroundLayer.h"

@interface GameScene()

@property(nonatomic) SKNode* world;
@property(nonatomic) SKNode* hudLayer;

@end


@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    self.world = [SKNode node];
    self.hudLayer = [SKNode node];
    self.player = [[Player alloc]initWithPosition:CGPointMake(self.size.width/2, self.size.height/4)];
    [self enemyGenerator];
    [self createHud];
    [self.world addChild:self.player];
    [self addChild:self.world];
    [self setupPhysics];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"pegou");
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.player touchesMoved:touches withEvent:event];
}
-(void)update:(CFTimeInterval)currentTime {
    [self.score update];
//    CGSize screen = [[UIScreen mainScreen]bounds].size;
//
//    if(self.player.position.x > screen.width){
//        
//    }
}
-(void)enemyGenerator{
    SKAction* enemyGenerator = [SKAction repeatActionForever:[SKAction sequence:@[[SKAction waitForDuration:1 withRange:0],[SKAction performSelector:@selector(callEnemies) onTarget:self]]]];
    [self runAction:enemyGenerator];
}

-(void)callEnemies{
    Enemy* enemy = [[Enemy alloc]initWithPosition:[self randomizePosition]];
    [self.world addChild:enemy];
}
-(CGPoint)randomizePosition{
    float screenSizeWidth = self.size.width;
    float screenSizeHeight = self.scene.size.height*1.1;
    int randomWidthPosition = 1 + arc4random() % ((int)screenSizeWidth - 1);
    int randomHeightPosition = (int)self.size.height + arc4random() % ((int)screenSizeHeight - (int)self.size.height);
    CGPoint position = CGPointMake(randomWidthPosition, randomHeightPosition);
    return position;
}
-(void)setupPhysics{
    self.physicsWorld.gravity = CGVectorMake(0, 0);
    self.physicsWorld.contactDelegate = self;
}
-(void)didBeginContact:(SKPhysicsContact *)contact{
    uint32_t collision = contact.bodyA.categoryBitMask | contact.bodyB.categoryBitMask;
    if(collision == (ColliderTypePlayer | ColliderTypeEnemy)){
        Player* player;
        Enemy* enemy;
        
        if([contact.bodyA.node isKindOfClass:[Player class]]){
            player = (Player*)contact.bodyA.node;
            enemy = (Enemy*)contact.bodyB.node;
        }
        else{
            player = (Player*)contact.bodyB.node;
            enemy = (Enemy*)contact.bodyA.node;

        }
        [player removeFromParent];
        [enemy removeFromParent];
    }
    else if (collision == (ColliderTypePlayer | ColliderTypeBulletEnemy)){
        Player* player;
        Bullet* bullet;
        if([contact.bodyA.node isKindOfClass:[Player class]]){
            player = (Player*)contact.bodyA.node;
            bullet = (Bullet*)contact.bodyB.node;
        }
        else{
            player = (Player*)contact.bodyB.node;
            bullet = (Bullet*)contact.bodyA.node;
        }
        [player removeFromParent];
        [bullet removeFromParent];
    }
    else if (collision == (ColliderTypeEnemy | ColliderTypeBulletPlayer)){
        Enemy* enemy;
        Bullet* bullet;
        if([contact.bodyA.node isKindOfClass:[Enemy class]]){
            enemy = (Enemy*)contact.bodyA.node;
            bullet = (Bullet*)contact.bodyB.node;
        }
        else{
            enemy = (Enemy*)contact.bodyB.node;
            bullet = (Bullet*)contact.bodyA.node;
        }
        [[GameState sharedState] addScore:1];
        [enemy removeFromParent];
        [bullet removeFromParent];
    }
}
-(void)createBackGround{
    self.backGroundLayer = [[BackGroundLayer alloc]initWithSize:self.size];
    [self.world addChild:self.backGroundLayer];
}
-(void)createHud{
    self.score = [[Label alloc]initWithFontNamed:@"Futura-CondensedExtraBold"];
    self.score.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMaxY(self.frame)-50);
    [self.hudLayer addChild:self.score];
    
    [self addChild:self.hudLayer];
}
@end
