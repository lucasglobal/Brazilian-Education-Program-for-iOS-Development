//
//  BackGroundLayer.h
//  Space Escape
//
//  Created by Lucas Andrade on 10/9/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface BackGroundLayer : SKNode
@property(nonatomic) SKEmitterNode* layer1;
@property(nonatomic )SKEmitterNode* layer2;

-(instancetype)initWithSize:(CGSize)size;
@end
