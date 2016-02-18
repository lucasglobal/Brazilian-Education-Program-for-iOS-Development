//
//  BPDViewController1.m
//  desafio2_junho_24
//
//  Created by Lucas Andrade on 6/24/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "BPDViewController1.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@implementation BPDViewController1
@synthesize botaoProxima,labelQuant;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        
        self.tabBarItem.title= @"Tab1";
        //UIImage *i = [UIImage imageNamed:@"calendar.png"];
        //self.tabBarItem.image = i;
        
        
        // Initialization code
        //label com informacao da view
        UILabel* infoTab = [[UILabel alloc]initWithFrame:CGRectMake(10, 90, 300, 20)];
        infoTab.text = @"ADICIONANDO NOTIFICATION";
        [self.view addSubview:infoTab];
        
        //adicionando botao
        botaoProxima = [[UIButton alloc] initWithFrame:CGRectMake(15, 200,200, 55)];
        [botaoProxima addTarget:self action:@selector(adicionarNotification) forControlEvents:UIControlEventTouchUpInside];
        [botaoProxima setTitle:@"Adicionar!" forState:UIControlStateNormal];
        botaoProxima.backgroundColor = [UIColor  colorWithRed:0.80392157 green:0.16078431 blue:0.12941176 alpha:1];
        [self.view addSubview:botaoProxima];
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self tabBarItem] setBadgeValue: nil];
    NSMutableArray* arrayQuant = [NSMutableArray arrayWithArray: self.tabBarController.viewControllers];

    labelQuant= [[UILabel alloc]initWithFrame:CGRectMake(10, 110, 300, 20)];
    labelQuant.text = [NSString stringWithFormat:@"%lu",(unsigned long)arrayQuant.count];
    [self.view addSubview:labelQuant];

    
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [[self tabBarItem] setBadgeValue: nil];
    NSMutableArray* arrayQuant = [NSMutableArray arrayWithArray: self.tabBarController.viewControllers];
    

    labelQuant.text = [NSString stringWithFormat:@"%lu",(unsigned long)arrayQuant.count];
    //[self.view addSubview:labelQuant];
    

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)adicionarNotification{
    [UIApplication sharedApplication].applicationIconBadgeNumber += 1;
    
    NSLog(@"Adicionar Notificacao");
    UILocalNotification *note = [[UILocalNotification alloc]init];
    note.alertBody = @"Alert1";
    note.soundName = @"Notificacao.mp3";
    note.fireDate = [NSDate dateWithTimeIntervalSinceNow:5];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
    
//    NSString *soundFilePath = [NSString stringWithFormat:@"%@/Notificacao.m4a",
//                               [[NSBundle mainBundle] resourcePath]];
//    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
//    
//    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL
//                                                                   error:nil];
//    player.numberOfLoops = -1; //Infinite
//    
//    [player play];
//
    
    
    [[self tabBarItem] setBadgeValue: [NSString stringWithFormat:@"%ld",(long)[UIApplication sharedApplication].applicationIconBadgeNumber]];
    NSLog(@"foi pro metodo %d",self.tabBarItem.badgeValue.intValue);
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
