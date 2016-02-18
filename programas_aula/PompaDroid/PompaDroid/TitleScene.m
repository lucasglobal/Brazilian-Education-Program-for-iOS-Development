//
//  TitleScene.m
//  PompaDroid
//
//  Created by Lucas Andrade on 7/11/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "TitleScene.h"

@implementation TitleScene
- (instancetype)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        [self setupTitle];
    }
    return self;
}
- (void)setupTitle {
    SKSpriteNode *titleBG = [SKSpriteNode spriteNodeWithImageNamed:@"bg_title"];
    titleBG.position = titleBG.position = CENTER;
    [self addChild:titleBG];
    
    SKSpriteNode *title = [SKSpriteNode spriteNodeWithImageNamed:@"txt_title"];
    title.position = CGPointMake(CENTER.x, CENTER.y + 66);
    [self addChild:title];
    SKSpriteNode *start = [SKSpriteNode spriteNodeWithImageNamed:@"txt_touchtostart"];
    start.position = CGPointMake(CENTER.x, CENTER.y - 37.5 );
    [self addChild:start];
}
@end
