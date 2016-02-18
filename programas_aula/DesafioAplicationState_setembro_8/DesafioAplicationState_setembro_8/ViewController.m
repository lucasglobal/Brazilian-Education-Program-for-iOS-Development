//
//  ViewController.m
//  DesafioAplicationState_setembro_8
//
//  Created by Lucas Andrade on 9/8/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeInt:itemTeste forKey:@"itemTeste!"];
}
-(id)initWithCoder:(NSCoder *)aDecoder{
    return self;
}
@end
