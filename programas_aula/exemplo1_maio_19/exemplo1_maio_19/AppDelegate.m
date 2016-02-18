//
//  AppDelegate.m
//  exemplo1_maio_19
//
//  Created by LucasAndrade on 5/19/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "AppDelegate.h"
#import "LARview.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    CGRect firstFrame = self.window.bounds;
    

    
    firstFrame.origin.x = self.window.bounds.origin.x + 20;
    firstFrame.origin.y = self.window.bounds.origin.y + 20;
    firstFrame.size.width = firstFrame.size.width;
    
    CGRect secondFrame = CGRectMake(40, 40, 30, 50);
    CGRect thirdFrame = CGRectMake(10, 10,10, 10);
    
    
    
    LARview *firstView = [[LARview alloc]initWithFrame:firstFrame];
    [firstView setBackgroundColor:[UIColor blueColor]];
    
    LARview* secondView = [[LARview alloc]initWithFrame:secondFrame];
    [secondView setBackgroundColor:[UIColor redColor]];
    
    LARview* thirdView = [[LARview alloc]initWithFrame:thirdFrame];
    [thirdView setBackgroundColor:[UIColor blackColor]];

    firstFrame.size.width = self.window.bounds.size.width -20;

    NSLog(@" eeee  %f,",firstFrame.size.width);
    [self.window addSubview:firstView];
    [firstView addSubview:secondView];
    [secondView addSubview:thirdView];
    
    
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
