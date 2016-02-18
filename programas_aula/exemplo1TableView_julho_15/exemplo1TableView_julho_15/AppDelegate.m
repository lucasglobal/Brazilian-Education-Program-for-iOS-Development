//
//  AppDelegate.m
//  exemplo1TableView_julho_15
//
//  Created by Lucas Andrade on 7/15/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ViewController* viewController = [[ViewController alloc]init];
    UINavigationController* navigationController = [[UINavigationController alloc]initWithRootViewController:viewController];
    [self.window setRootViewController:navigationController];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    
    NSLog(@"%@",NSStringFromSelector(_cmd));
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
    BOOL success = [self saveChanges];
    if (success){
        NSLog(@"salvo com sucesso");
    }
    else{
        NSLog(@"nao foi salvo");
    }
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"%@",NSStringFromSelector(_cmd));

    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSString* path = [self itemArchivePath];
    self.numeros = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    
    if(self.numeros){
        self.numeros = [[NSMutableArray alloc]init];
    }
    NSLog(@"teste %@",self.numeros);
    NSLog(@"%@",NSStringFromSelector(_cmd));

    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%@",NSStringFromSelector(_cmd));

    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
-(NSString*)itemArchivePath{
    return [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"items.archive"];
}
-(BOOL)saveChanges{
    NSString* path = [self itemArchivePath];
    return [NSKeyedArchiver archiveRootObject:self.numeros toFile:path];
}
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.numeros forKey:@"array"];
}
-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if(self) {
        self.numeros = [aDecoder decodeObjectForKey:@"array"];
    }
    return self;
}

@end
