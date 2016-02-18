//
//  ViewController.m
//  PompaDroid
//
//  Created by Lucas Andrade on 7/11/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"
#import "TitleScene.h"
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}
-(BOOL)prefersStatusBarHidden {
    return YES;
}
//1
-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    SKView *skView = (SKView *)self.view;
    //2
    if (!skView.scene) {
        skView.showsFPS = YES;
        skView.showsNodeCount = YES;
        //3
        skView.showsDrawCount = YES;
        //4
        SKScene *titleScene = [TitleScene sceneWithSize:skView.bounds.size];
        [skView presentScene:titleScene];
    }

}




@end
