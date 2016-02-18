//
//  ViewController.m
//  desafioDynamicType_julho_31
//
//  Created by LucasAndrade on 7/31/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSNotificationCenter *notificationDefault = [NSNotificationCenter defaultCenter];
    [notificationDefault addObserver:self selector:@selector(updateFont:) name:UIContentSizeCategoryDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)updateFont:(NSString*)estilo{
     self.textView.font = [UIFont preferredFontForTextStyle:estilo];
}

- (IBAction)botao1:(id)sender {
    [self updateFont:UIFontTextStyleFootnote];
}

- (IBAction)botao2:(id)sender {
    [self updateFont:UIFontTextStyleBody];
}

- (IBAction)botao3:(id)sender {
    [self updateFont:UIFontTextStyleHeadline];
}

- (IBAction)botao4:(id)sender {
    
    [self updateFont:UIFontTextStyleCaption1];
}

- (IBAction)botao5:(id)sender {
    [self updateFont:UIFontTextStyleCaption2];
}

- (IBAction)botao6:(id)sender {
    [self updateFont:UIFontTextStyleSubheadline];
}
@end
