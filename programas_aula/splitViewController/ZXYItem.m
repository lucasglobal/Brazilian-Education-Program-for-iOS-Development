//
//  ZXYItem.m
//  splitViewController
//
//  Created by Lucas Andrade on 9/26/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ZXYItem.h"


@implementation ZXYItem

@dynamic dateCreated;
@dynamic itemName;
@dynamic serialNumber;
@dynamic value;
@dynamic orderingValue;


-(void)randomData{
    NSString *letters = @"abcdefghijklmnopqrstuvwxyz";
    NSInteger index1 = arc4random_uniform([letters length]);
    NSInteger index2 = arc4random_uniform([letters length]);
    
    
    ZXYItem* randomItem = [[ZXYItem alloc]init];
    NSArray* arrayItens = [NSArray arrayWithObjects:@"iPhone",@"iPad",@"iMac",@"MacBook",@"MacMini",@"Ipod", nil];
    NSArray* arrayPessoas = [NSArray arrayWithObjects:@"Antônio",@"Bruno",@"Cezar",@"Daniel",@"Elton",@"Fábio",@"Guilherme", nil];
    NSString* stringItemNameRandom = [NSString stringWithFormat:@"%@ do %@",arrayItens[arc4random_uniform(6)],arrayPessoas[arc4random_uniform(7)]];
    NSMutableString* stringSerialRandom = [[NSMutableString alloc]initWithCapacity:5];
    //primeiro objeto
    NSString* randomNumber1 = [NSString stringWithFormat:@"%d",arc4random_uniform(10)];
    [stringSerialRandom appendString:randomNumber1];
    //segundo objeto
    NSString *randomLetter1 = [letters substringWithRange:NSMakeRange(index1, 1)];
    [stringSerialRandom appendString:randomLetter1];
    //terceiro objeto
    NSString* randomNumber2 = [NSString stringWithFormat:@"%d",arc4random_uniform(10)];
    [stringSerialRandom appendString:randomNumber2];
    //quarto objeto
    NSString *randomLetter2 = [letters substringWithRange:NSMakeRange(index2, 1)];
    [stringSerialRandom appendString:randomLetter2];
    //quinto objeto
    NSString* randomNumber3 = [NSString stringWithFormat:@"%d",arc4random_uniform(10)];
    [stringSerialRandom appendString:randomNumber3];
    
    
    
    randomItem.itemName =stringItemNameRandom;
    randomItem.value = arc4random_uniform(15001);
    randomItem.serialNumber = stringSerialRandom;
    self.itemRandom = randomItem;
}

-(instancetype)initWithItemName:(NSString*)name
                          value:(int)value
                   serialNumber:(NSString*)sNumber{
    self.itemName = name;
    self.value = value;
    self.serialNumber = sNumber;
    return self;
}
-(instancetype)initWithItemName:(NSString*)name{
    self.itemName = name;
    return self;
}
-(id)init{
    self.dateCreated = [NSDate date];
    return self;
}

@end
