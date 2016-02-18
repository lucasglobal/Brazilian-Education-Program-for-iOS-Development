//
//  LARViewController.m
//  exemplo1Toque_julho_21
//
//  Created by Lucas Andrade on 7/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "LARViewController.h"
#import "MainView.h"
@interface LARViewController ()

@end

@implementation LARViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        MainView* mainV = [[MainView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        self.view = mainV;
        NSLog(@"passou");
        // Custom initialization
    }
    return self;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch* t = [touches anyObject];
    CGPoint point = [t locationInView:self.view];
    NSValue* value = [NSValue valueWithCGPoint:point];
    NSLog(@"%@",value);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
