//
//  ZXYItemStore.m
//  splitViewController
//
//  Created by Lucas Andrade on 9/24/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "ZXYItemStore.h"
#import "ZXYItem.h"

@interface ZXYItemStore()
@property(nonatomic) NSMutableArray* privateItems;
@end

@implementation ZXYItemStore

-(NSArray*)allItems{
    return [NSArray arrayWithArray:self.privateItems];
}
+(instancetype)sharedStore{
    static ZXYItemStore* singleTon = nil;
    if(!singleTon){
        singleTon = [[ZXYItemStore alloc]init];
    }
    return singleTon;
}
-(ZXYItem*)createItem{
    if(!self.privateItems){
        self.privateItems = [NSMutableArray array];
        ZXYItem* itemFinal = [[ZXYItem alloc]init];
        [itemFinal randomData];
        ZXYItem* novoItem = itemFinal.itemRandom;
        [self.privateItems addObject:novoItem];
        novoItem.index = [self.privateItems indexOfObject:novoItem];

        return novoItem;

    }
    else{
        self.privateItems = [NSMutableArray array];
        ZXYItem* itemFinal = [[ZXYItem alloc]init];
        [itemFinal randomData];
        ZXYItem* novoItem = itemFinal.itemRandom;
        [self.privateItems addObject:novoItem];
        novoItem.index = [self.privateItems indexOfObject:novoItem];


        return novoItem;

    }
    
}
-(NSMutableArray*)updateItens:(ZXYItem*)itemMudando{
    if(itemMudando){
        if(itemMudando.dateCreated){
            ZXYItem* itemTeste = self.privateItems[itemMudando.index];
            
            NSLog(@"index que tinha %d",itemTeste.index);
            NSLog(@"index que vai mudar %d",itemMudando.index);
            
            
            [self.privateItems replaceObjectAtIndex:itemMudando.index withObject:itemMudando];
            
            ZXYItem* itemTesteFinal = self.privateItems[itemMudando.index];
            NSLog(@"o que tem dentro agora %@",itemTesteFinal.itemName);

        }
        
  
    }
    return self.privateItems;
}

@end
