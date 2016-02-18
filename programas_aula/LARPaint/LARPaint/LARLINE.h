//
//  LARLINE.h
//  LARPaint
//
//  Created by Lucas Andrade on 7/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LARLINE : NSObject <NSCoding>
@property (nonatomic) CGPoint begin;
@property (nonatomic) CGPoint end;
@property (nonatomic)float largura;
-(void)stroke;
-(BOOL)havePoint:(CGPoint)point;
@end
