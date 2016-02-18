//
//  Player.m
//  Space Escape
//
//  Created by Lucas Andrade on 10/8/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "Player.h"
#import "PhysicsCategories.h"
@implementation Player
-(instancetype)initWithPosition:(CGPoint)position{
    self = [super initWithImageNamed:@"player"];
    
    if(self){
        self.position = position;
        [self startShooting];
        [self configurePhysicsBody];
    }
    return self;
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    CGSize screen = [[UIScreen mainScreen]bounds].size;
    
    UITouch* touch = [touches anyObject];
    CGPoint lastLocation = [touch previousLocationInNode:self.parent];
    CGPoint touchLocation = [touch locationInNode:self.parent];
    CGPoint difference = CGPointMake(touchLocation.x-lastLocation.x, touchLocation.y-lastLocation.y);

//    if(!(self.position.x-(self.frame.size.width) < screen.origin.x || self.position.x > screen.size.width || self.position.y < screen.origin.y || self.position.y > screen.size.height)){
//        self.position = CGPointMake(self.position.x + difference.x, self.position.y+difference.y);
//    }
    self.position = CGPointMake(self.position.x + difference.x, self.position.y+difference.y);

    if(((self.position.y - self.size.height/2) < 0)){
        NSLog(@"entrou");
        self.position = CGPointMake(self.position.x,self.size.height/2);

    }
    if(((self.position.y + self.size.height/2) > screen.height)){
        NSLog(@"xxxx");
        self.position = CGPointMake(self.position.x,screen.height-self.size.height/2);

    }
    if(((self.position.x - self.size.width/2) < 0)){
        self.position = CGPointMake(self.size.width/2,self.position.y);

    }
    if(((self.position.x + self.size.width/2) > screen.width)){
        self.position = CGPointMake(screen.width-self.size.width/2,self.position.y);

    }
}
-(void)startShooting{
    NSLog(@"atirando");
    SKAction* shoot = [SKAction runBlock:^{
        [self shootAtAngle:90 andSpeed:150];
    }];
    SKAction* delay = [SKAction waitForDuration:1.0];
    SKAction* sequence = [SKAction sequence:@[shoot,delay]];
    [self runAction:[SKAction repeatActionForever:sequence]];
}
-(void)shootAtAngle:(float)angleDegrees andSpeed:(float)speed{
    Bullet* bullet = [[Bullet alloc]initWithPosition:self.position bulletSpeed:speed angle:angleDegrees andImageNamed:@"tiro_player"];
    [self.parent addChild:bullet];
    
    bullet.physicsBody.categoryBitMask = ColliderTypeBulletPlayer;
}
-(void)configurePhysicsBody{
    self.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:self.size.width/2];
    self.physicsBody.categoryBitMask = ColliderTypePlayer;
    self.physicsBody.contactTestBitMask = ColliderTypeEnemy | ColliderTypeBulletEnemy;
    self.physicsBody.collisionBitMask = 0;
}

@end
