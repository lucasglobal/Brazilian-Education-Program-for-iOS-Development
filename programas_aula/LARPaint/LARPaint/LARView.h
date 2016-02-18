//
//  LARView.h
//  LARPaint
//
//  Created by Lucas Andrade on 7/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LARLINE.h"

@interface LARView : UIView
@property (nonatomic) NSMutableDictionary* linesInProgress;
@property (nonatomic) NSMutableArray* finishedLines;
@property(nonatomic)NSMutableArray* finishedCircles;
@property (nonatomic)LARLINE* selectedLine;
@property(nonatomic) CGPoint circleCenter;
@property(nonatomic) CGFloat circleRadius;
@property(nonatomic)CAShapeLayer* circleLayer;
-(IBAction)handlePinch:(UIPinchGestureRecognizer*)recognizer;
-(UIBezierPath*)makeCircleAtLocation:(CGPoint)location radius:(CGFloat)radius;
-(LARLINE*)lineAtPoint:(CGPoint)p;
-(void)longPress:(UILongPressGestureRecognizer*)gesture;

@end
