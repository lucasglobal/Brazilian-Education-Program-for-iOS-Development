//
//  Bullet.m
//  Space Escape
//
//  Created by Lucas Andrade on 10/8/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "Bullet.h"

@implementation Bullet
-(instancetype)initWithPosition:(CGPoint)position bulletSpeed:(float)speed angle:(float)angleDegrees andImageNamed:(NSString *)imageName{
    self = [super initWithImageNamed:imageName];
    if(self){
        float radians = angleDegrees/180*M_PI;
        self.position = position;
        self.bulletSpeed = speed;
        self.zRotation = radians;
        
        [self startMoving];
        
        [self configurePhysicsBody];
    }
    return self;
}
-(void)startMoving{
    CGVector movement = CGVectorMake(cosf(self.zRotation)*self.bulletSpeed, sinf(self.zRotation)*self.bulletSpeed);
    SKAction* move = [SKAction moveBy:movement duration:1];
    [self runAction:[SKAction repeatActionForever:move]];
}
-(void)configurePhysicsBody{
    self.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:self.size.width/2];
    self.physicsBody.collisionBitMask = 0;
}


@end
