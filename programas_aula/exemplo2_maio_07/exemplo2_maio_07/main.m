//
//  main.m
//  exemplo2_maio_07
//
//  Created by LucasAndrade on 5/7/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Logger* logger = [[Logger alloc]init];
    
        
        NSURL* url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest* request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection* fetchConn = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];
        
        __unused NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop]run];
        
        [[NSNotificationCenter defaultCenter] addObserver: logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];

        
    }
    
    return 0;
}

