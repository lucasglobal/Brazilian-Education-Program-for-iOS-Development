//
//  LARLINE.m
//  LARPaint
//
//  Created by Lucas Andrade on 7/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "LARLINE.h"

@implementation LARLINE
-(void)stroke{
    UIBezierPath* bp = [UIBezierPath bezierPath];
    if(!self.largura){
        self.largura = 10;
    }
    [bp setLineWidth:self.largura];
    
    [bp setLineCapStyle:kCGLineCapRound];
    
    [bp moveToPoint:self.begin];
    [bp addLineToPoint:self.end];
    if((self.begin.x - self.end.x) > 0){
        [[UIColor brownColor] set];
        if((self.begin.y - self.end.y) > 0){
            [[UIColor yellowColor]set];
        }
    }
    else{
        if((self.begin.y - self.end.y) > 0){
            [[UIColor purpleColor]set];
        }
    }
    
    
    [bp stroke];
}
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeCGPoint:self.begin forKey:@"begin"];
    [aCoder encodeCGPoint:self.end forKey:@"end"];
}
-(id)initWithCoder:(NSCoder *)aDecoder{
    if(!self){
        return nil;
    }
    self.begin = [aDecoder decodeCGPointForKey:@"begin"];
    self.end = [aDecoder decodeCGPointForKey:@"end"];
    return self;
}
-(BOOL)havePoint:(CGPoint)point{
    for(float t = 0.0; t<1.0 ; t+=0.05){
        float x = self.begin.x + t*(self.end.x - self.begin.x);
        float y = self.begin.y + t*(self.end.y - self.begin.y);
        
        if(hypot(x-point.x, y-point.y) < 20.0){
            return YES;
        }
    }
    return  NO;
}
@end
