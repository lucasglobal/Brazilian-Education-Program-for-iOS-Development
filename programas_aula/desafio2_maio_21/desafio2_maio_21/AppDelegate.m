//
//  AppDelegate.m
//  desafio2_maio_21
//
//  Created by LucasAndrade on 5/21/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "AppDelegate.h"
#import "principalView.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //pegando toda a dimensao da tela
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    CGRect screenRect = self.window.bounds;
    
    //dobrando o valor da screen que ficara por tras
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    bigRect.size.height *=2;
    
    //criando uma view scroll por toda a dimensao e adicionando no array de views
    UIScrollView* scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
    [self.window addSubview:scrollView];
    
    //adicionando a view e setando seu context
    principalView* hyp = [[principalView alloc]initWithFrame:screenRect];
    [scrollView addSubview:hyp];
    scrollView.contentSize = bigRect.size;
    
    
    
    // Adjust scroll view content size, set background colour and turn on paging
    
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * 3,
                                        scrollView.frame.size.height);
    scrollView.pagingEnabled=YES;
    scrollView.backgroundColor = [UIColor blackColor];
    
    // Generate content for our scroll view using the frame height and width as the reference point
    
    int i = 0;
    while (i<=11) {
        
        UIView *views = [[UIView alloc]
                         initWithFrame:CGRectMake(((scrollView.frame.size.width)*i)+20, 0,
                                                  (scrollView.frame.size.width)-40, scrollView.frame.size.height)];
        views.backgroundColor=[UIColor yellowColor];
        [views setTag:i];
        [scrollView addSubview:views];
        
        i++;
    }
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
