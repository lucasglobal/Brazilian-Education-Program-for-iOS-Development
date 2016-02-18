//
//  ViewSlider.m
//  LARPaint
//
//  Created by Lucas Andrade on 7/25/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewSlider.h"
#import "LARView.h"
@implementation ViewSlider
@synthesize slider;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        [self setBackgroundColor:[UIColor redColor]];
        UILabel* labelSlider = [[UILabel alloc]initWithFrame:CGRectMake(100, 7, 200, 20)];
        [labelSlider setText:@"largura de linha"];
        [labelSlider setTextColor:[UIColor whiteColor]];
        [self addSubview:labelSlider];
        slider = [[UISlider alloc]initWithFrame:CGRectMake(60, 50, 200, 10)];
        [slider setMaximumValue:50];
        [slider setMinimumValue:0];
        [self addSubview:slider];

    }
    return self;
}
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    if([touch.view isKindOfClass:[LARView class]]){
        return  NO;
    }
    else{
        return YES;
    }
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
