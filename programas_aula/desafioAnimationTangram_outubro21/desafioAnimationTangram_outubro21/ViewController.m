//
//  ViewController.m
//  desafioAnimationTangram_outubro21
//
//  Created by Lucas Andrade on 10/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"
#import "Triangle.h"
#import "Paralelogramo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = CGRectMake(50, 50, 50, 50);
    Paralelogramo* paralelogramo = [[Paralelogramo alloc]initWithFrame:rect];
    paralelogramo.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:paralelogramo];
    
//    [UIView animateWithDuration:2.0 animations:^{
//        paralelogramo.transform = CGAffineTransformMakeScale(5, 5);
//    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
