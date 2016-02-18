//
//  PhysicsCategories.h
//  Space Escape
//
//  Created by Lucas Andrade on 10/9/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#ifndef Space_Escape_PhysicsCategories_h
#define Space_Escape_PhysicsCategories_h

typedef NS_ENUM (NSUInteger,ColliderType){
    ColliderTypePlayer = 1 << 0,
    ColliderTypeEnemy = 1 << 1,
    ColliderTypeBulletPlayer = 1 << 2,
    ColliderTypeBulletEnemy = 1 << 3
};

#endif
