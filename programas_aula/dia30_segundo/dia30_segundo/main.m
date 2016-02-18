//
//  main.m
//  dia30_segundo
//
//  Created by LucasAndrade on 4/30/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
int main(int argc, const char * argv[])
{

    
    @autoreleasepool {
        
        
        NSMutableArray* listOfClients = [[NSMutableArray alloc]init];
        
        for(int i=0;i<10;i++){
            Client* fulano = [[Client alloc]init];
            [fulano setName:[NSString stringWithFormat:@"Nome %d",i]];
            [listOfClients addObject:fulano];
        }
        
        [listOfClients removeObjectAtIndex:2];
        
        NSLog(@"%@",listOfClients);
        
    }
    return 0;
}

