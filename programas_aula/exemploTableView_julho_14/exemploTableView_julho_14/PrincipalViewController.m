//
//  PrincipalViewController.m
//  exemploTableView_julho_14
//
//  Created by Lucas Andrade on 7/14/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.scrollView setScrollEnabled:YES];
    [self.scrollView setContentSize:CGSizeMake(320, 800)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
