//
//  Bullet.h
//  Space Escape
//
//  Created by Lucas Andrade on 10/8/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface Bullet : SKSpriteNode

-(instancetype)initWithPosition:(CGPoint)position bulletSpeed:(float)speed angle:(float)angleDegrees andImageNamed:(NSString*)imageName;
@property (nonatomic) float bulletSpeed;
@end
