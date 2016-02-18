//
//  main.m
//  nsset_dia02
//
//  Created by LucasAndrade on 5/2/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        //NSSet* professores = [[NSSet alloc] initWithArray:@[@"Mauricio",@"Michel",@"Pedro",@"Phelippe",@"Salenko"]];
        
//        NSMutableSet *professores = [[NSMutableSet alloc]init];
//        
//        [professores addObject:@"Mauricio"];
//        [professores addObject:@"Michel"];
//        [professores addObject:@"Pedro"];
//        [professores addObject:@"Phelippe"];
//        [professores addObject:@"Salenko"];
//        
//        if ( [professores containsObject:@"Salenko"] ) {
//            NSLog(@"Existe Salenko");
//            
//        } else {
//            NSLog(@"Näo existe salenko");
//            
//        }
//        
//        if ( [professores containsObject:@"Pedro"] ) {
//            NSLog(@"Existe Pedro");
//            
//        } else {
//            NSLog(@"Näo existe Pedro");
//            
//        }
//        
//        [professores removeObject:@"Pedro"];
//        
//        if ( [professores containsObject:@"Pedro"] ) {
//            NSLog(@"Existe Pedro");
//            
//        } else {
//            NSLog(@"Näo existe Pedro");
//            
//        }
        
        NSDictionary *numeroDeLuas, *numeroDeLuas2;
        
        numeroDeLuas = [[NSDictionary alloc] initWithObjects:@[@0, @0, @1, @2, @67, @62, @27, @13] forKeys:@[@"Mercurio", @"Venus", @"Terra", @"Marte", @"Jupter", @"Saturno", @"Urano", @"Netuno"]];
        
        numeroDeLuas2 = [NSDictionary alloc];
        
        numeroDeLuas2 = @{@"Mercurio":  @0,
                          @"Venus":     @0,
                          @"Terra":     @1,
                          @"Marte":     @2,
                          @"Jupter":    @67,
                          @"Saturno":   @62,
                          @"Urano":     @27,
                          @"Netuno":    @13};
        
        NSNumber *luasUrano = numeroDeLuas2[@"Urano"];
        
        NSLog(@"Numero de luas de Urano: %@", luasUrano);
        
        
    }
    return 0;
}

