//
//  ViewController.m
//  exemploAnimationOutubro20
//
//  Created by Lucas Andrade on 10/20/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize boxView;

- (void)viewDidLoad {
    [super viewDidLoad];
    _scaleFactor = 2;
    _angle = 100;
    
    CGRect frameRect = CGRectMake(50, 50, 50, 50);
    boxView = [[UIView alloc]initWithFrame:frameRect];
    boxView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:boxView];
    
    [UIView animateWithDuration:3.0 delay:5.0 options:UIViewAnimationOptionCurveLinear animations:^{
        boxView.alpha = 0.0;
    } completion:^(BOOL finished){
        [UIView animateWithDuration:3.0 animations:^{
            boxView.alpha = 1.0;
        }];
    }];
    [self.view addSubview:boxView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch* touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    
    [UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        CGAffineTransform scaleTrans = CGAffineTransformMakeScale(_scaleFactor, _scaleFactor);
        CGAffineTransform rotateTrans = CGAffineTransformMakeRotation(_angle*M_PI/180);
        boxView.transform = CGAffineTransformConcat(scaleTrans, rotateTrans);
        _angle = (_angle == 180 ? 360 : 180);
        _scaleFactor = (_scaleFactor == 2 ? 1 : 2);
        
        boxView.center = location;
        
    }completion:nil];
}
@end
