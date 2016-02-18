//
//  Logger.h
//  exemplo2_maio_07
//
//  Created by LucasAndrade on 5/7/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
<NSURLConnectionDelegate,NSURLConnectionDataDelegate>

@property (nonatomic) NSDate* lastime;
@property(nonatomic) NSMutableData* incomingData;

-(NSString*) lasTimeString;
-(void) updateLastTime:(NSString*)t;


@end
