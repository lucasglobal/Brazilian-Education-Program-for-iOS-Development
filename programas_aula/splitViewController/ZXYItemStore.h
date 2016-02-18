//
//  ZXYItemStore.h
//  splitViewController
//
//  Created by Lucas Andrade on 9/24/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ZXYItem;

@interface ZXYItemStore : NSObject

@property(nonatomic,readonly)NSArray* allItems;

+(instancetype)sharedStore;
-(ZXYItem*)createItem;
-(NSMutableArray*)updateItens:(ZXYItem*)itemMudando;


@end
