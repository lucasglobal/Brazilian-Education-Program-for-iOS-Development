//
//  ZXYItem.h
//  splitViewController
//
//  Created by Lucas Andrade on 9/26/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ZXYItem : NSManagedObject

@property (nonatomic, retain) NSDate * dateCreated;
@property (nonatomic, retain) NSString * itemName;
@property (nonatomic, retain) NSString * serialNumber;
@property (nonatomic) int value;
@property (nonatomic) double orderingValue;
@property (nonatomic) ZXYItem* itemRandom;
@property(nonatomic) int index;

-(void)randomData;


@end
