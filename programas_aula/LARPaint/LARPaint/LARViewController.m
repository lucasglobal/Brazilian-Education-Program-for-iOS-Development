//
//  LARViewController.m
//  LARPaint
//
//  Created by Lucas Andrade on 7/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "LARViewController.h"
#import "LARView.h"
@interface LARViewController ()

@end

@implementation LARViewController
{
    NSString* path;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.larview = [[LARView alloc]init];
    self.view = self.larview;
    // Do any additional setup after loading the view.
}
@end
