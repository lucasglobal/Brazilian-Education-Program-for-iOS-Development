//
//  Label.m
//  Space Escape
//
//  Created by Lucas Andrade on 10/10/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "Label.h"
#import "GameState.h"
@implementation Label

-(instancetype)initWithFontNamed:(NSString *)fontName{
    self = [super initWithFontNamed:fontName];
    if(self){
        self.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
        self.verticalAlignmentMode = SKLabelVerticalAlignmentModeCenter;
    }
    
    return self;
}


-(void)update{
    self.text = [NSString stringWithFormat:@"%lu",(unsigned long)[GameState sharedState].score];
}
@end
