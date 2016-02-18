//
//  AppDelegate.m
//  exemplo1SQLITE_julho_17
//
//  Created by LucasAndrade on 7/17/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "AppDelegate.h"
#import <sqlite3.h>
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    NSString* dataBaseName = @"meuBanco.sqlite";
    NSString* path = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) lastObject];
    NSLog(@"%@",path);
    NSString* dataBasePath = [@"/Users/lucasandrade" stringByAppendingPathComponent:dataBaseName];
    
    sqlite3* dataBase;
    
    if(sqlite3_open([dataBasePath UTF8String], &dataBase)== SQLITE_OK){
        NSLog(@"BANCO CRIADO");
        const char *sqlStatement = "Select nome,id From Pessoa order by nome";
        sqlite3_stmt *compiledStatement;
        
        if(sqlite3_prepare_v2(dataBase, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            NSLog(@"FEZ CONSULTA!!!!!!");
//            NSLog(@"%@",[self sqlite3StmtToString:compiledStatement]);
            
            while (sqlite3_step(compiledStatement) == SQLITE_ROW) {
                const int campo1 = sqlite3_column_int(compiledStatement, 1);
                const char* addressField_tmp = (const char*)sqlite3_column_text(compiledStatement, 0);
                
                NSString *addressField = addressField_tmp == NULL ? nil : [[NSString alloc] initWithUTF8String:addressField_tmp];
                
                //   NSString *campo2 = [NSString stringWithUTF8String: (char *)sqlite3_column_text(compiledStatement, 1)];
                NSLog(@"nomes %@",addressField);
                NSLog(@"numeros %d",campo1);
            }
            sqlite3_finalize(compiledStatement);
        }
        sqlite3_close(dataBase);
    }
    return YES;
}
-(NSMutableString*) sqlite3StmtToString:(sqlite3_stmt*) statement
{
    NSMutableString *s = [NSMutableString new];
    [s appendString:@"{\"statement\":["];
    for (int c = 0; c < sqlite3_column_count(statement); c++){
        [s appendFormat:@"{\"column\":\"%@\",\"value\":\"%@\"}",[NSString stringWithUTF8String:(char*)sqlite3_column_name(statement, c)],[NSString stringWithUTF8String:(char*)sqlite3_column_text(statement, c)]];
        if (c < sqlite3_column_count(statement) - 1)
            [s appendString:@","];
    }
    [s appendString:@"]}"];
    return s;
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
