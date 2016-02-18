//
//  Defines.h
//  PompaDroid
//
//  Created by Lucas Andrade on 7/11/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#ifndef PompaDroid_Defines_h
#define PompaDroid_Defines_h

#define BOUNDS [[UIScreen mainScreen] bounds].size
#define SCREEN (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) ? CGSizeMake(BOUNDS.width, BOUNDS.height) : CGSizeMake(BOUNDS.height, BOUNDS.width))
#define CENTER CGPointMake(SCREEN.width * 0.5, SCREEN.height * 0.5) 
#define OFFSCREEN CGPointMake(-SCREEN.width, -SCREEN.height)

#define IS_RETINA() ([[UIScreen mainScreen] respondsToSelector:@selector(scale)] && [[UIScreen mainScreen] scale] == 2)


#define IS_IPHONE5() ([UIScreen mainScreen].bounds.size.height == 568) 
#define IS_IPAD() ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)

#define CURTIME CACurrentMediaTime()
#define kPointFactor (IS_IPAD() ? 2.0 : 1.0)
#endif
