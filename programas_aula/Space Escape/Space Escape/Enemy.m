//
//  Enemy.m
//  Space Escape
//
//  Created by Lucas Andrade on 10/9/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "Enemy.h"
#import "Bullet.h"
#import "PhysicsCategories.h"
@implementation Enemy
-(instancetype)initWithPosition:(CGPoint)position{
    self = [super initWithImageNamed:@"inimigo1"];
    if(self){
        
        self.position = position;
        self.flagWalkingLeft = NO;
        [self startMoving];
        [self startShooting];
        [self selfDestructWithDelay:25];
        [self configurePhysicsBody];
    }
    return self;
}
-(void)startMoving{
    CGVector movement = CGVectorMake(0,-60);
    SKAction* move = [SKAction moveBy:movement duration:1];
    [self runAction:[SKAction repeatActionForever:move]];
    
    SKAction* moveHorizontal = [SKAction runBlock:^{
        [self moveHorizontally];
    }];


    
    
}
-(void)startShooting{
    SKAction* shoot = [SKAction runBlock:^{
        [self shootAtAngle:270 andSpeed:150];
    }];
    SKAction* delay = [SKAction waitForDuration:1.0];
    SKAction* sequence = [SKAction sequence:@[shoot,delay]];
    [self runAction:[SKAction repeatActionForever:sequence]];
    
    

}
-(void)shootAtAngle:(float)angleDegrees andSpeed:(float)speed{
    Bullet* bullet = [[Bullet alloc]initWithPosition:self.position bulletSpeed:speed angle:angleDegrees andImageNamed:@"tiro_inimigo"];
    [self.parent addChild:bullet];
    
    bullet.physicsBody.categoryBitMask = ColliderTypeBulletEnemy;
}

-(void)selfDestructWithDelay:(float)time{
    SKAction* die = [SKAction runBlock:^{
        [self removeFromParent];
    }];
    SKAction* delay = [SKAction waitForDuration:time];
    SKAction* sequence = [SKAction sequence:@[delay,die]];
    [self runAction:[SKAction repeatActionForever:sequence]];
    [self removeFromParent];
}
-(void)destroyEnemy{
    
}
-(void)moveHorizontally{
    CGSize screen = [[UIScreen mainScreen]bounds].size;

    CGVector movement = CGVectorMake(60,0);
    SKAction* move = [SKAction moveBy:movement duration:3];
    [self runAction:move];


//    if((self.position.x<0 || self.position.x > screen.width)){
//        NSLog(@"aqui");
//
//        if(self.flagWalkingLeft){
//            CGVector movement = CGVectorMake(-60,0);
//            SKAction* move = [SKAction moveBy:movement duration:5];
//            [self runAction:move];
//        }
//        else{
//            CGVector movement = CGVectorMake(-60,0);
//            SKAction* move = [SKAction moveBy:movement duration:5];
//            [self runAction:move];
//        }
//    }
}
-(void)configurePhysicsBody{
    self.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:self.size.width/2];
    self.physicsBody.categoryBitMask = ColliderTypeEnemy;
    self.physicsBody.contactTestBitMask = ColliderTypePlayer | ColliderTypeBulletPlayer;
    self.physicsBody.collisionBitMask = 0;
}


@end
