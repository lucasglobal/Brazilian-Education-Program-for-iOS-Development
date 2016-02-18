//
//  MainView.m
//  exemplo1Toque_julho_21
//
//  Created by Lucas Andrade on 7/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "MainView.h"

@implementation MainView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.window.backgroundColor = [UIColor redColor];
        [self.window makeKeyAndVisible];
        NSLog(@"passou vermelho");
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
