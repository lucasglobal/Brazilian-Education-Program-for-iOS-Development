//
//  Logger.m
//  exemplo2_maio_07
//
//  Created by LucasAndrade on 5/7/14.
//  Copyright (c) 2014 Lucas Andrade Ribeiro. All rights reserved.
//

#import "Logger.h"

@implementation Logger

-(NSString*)lasTimeString{
    static NSDateFormatter* dateFormatter = nil;
    if(!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc]init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"formato criado");
    }
    return [dateFormatter stringFromDate:self.lastime];
}

-(void)updateLastTime:(NSString *)t{
    NSDate* now = [NSDate  date];
    [self setLastime:now];
    NSLog(@"tempo de %@",self.lasTimeString);
}

-(void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    if(!_incomingData){
        [_incomingData appendData:data];
    }
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"pegou tudo");
    NSString* string = [[NSString alloc]initWithData:_incomingData encoding:NSUTF8StringEncoding];
    
    _incomingData = nil;
    
    NSLog(@"Ele tem %lu de caracteres", [string length]);
    
    //vamos vero total de linhas no arquivo
    NSLog(@"Toda string é %@", string);
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"A conexão falhou %@", [error localizedDescription]);
    _incomingData = nil;
}

- ( void ) zoneChange : ( NSNotification * ) note {
    NSLog(@"O horario do sistema foi alterado");
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

@end
