//
//  LARView.m
//  LARPaint
//
//  Created by Lucas Andrade on 7/21/14.
//  Copyright (c) 2014 LucasAndradeRibeiro. All rights reserved.
//

#import "LARView.h"
#import "ViewSlider.h"
#import "LARCircle.h"
@implementation LARView
{
    NSString* path;
    UIView* viewSlider;
    UISlider* slider;
    ViewSlider* viewAux;
    LARView* auxView;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        
        // Initialization code
        self.linesInProgress = [[NSMutableDictionary alloc]init];
        self.finishedLines = [[NSMutableArray alloc]init];
        [self setBackgroundColor:[UIColor lightGrayColor]];
        [self setMultipleTouchEnabled:YES];
        
        
        UITapGestureRecognizer* doubleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubleTap:)];
        [doubleTap setNumberOfTapsRequired:2];
        [doubleTap setDelaysTouchesBegan:YES];
        [self addGestureRecognizer:doubleTap];
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTap:)];
        [tap setDelaysTouchesBegan:YES];
        [tap requireGestureRecognizerToFail:doubleTap];
        [self addGestureRecognizer:tap];
        UIPinchGestureRecognizer* pinch = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(handlePinch:)];
        [self addGestureRecognizer:pinch];
        UISwipeGestureRecognizer* swipeUp = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
        [swipeUp setNumberOfTouchesRequired:2];
        [swipeUp setDirection:UISwipeGestureRecognizerDirectionUp];
        [self addGestureRecognizer:swipeUp];
        UISwipeGestureRecognizer* swipeDown = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipeDown:)];
        [swipeDown setNumberOfTouchesRequired:2];
        [swipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
        [self addGestureRecognizer:swipeDown];
        UILongPressGestureRecognizer* longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPress:)];
        [self addGestureRecognizer:longPress];
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES); //1
        NSString *documentsDirectory = [paths objectAtIndex:0]; //2
        path = [documentsDirectory stringByAppendingPathComponent:@"data.plist"]; //3
        if([NSKeyedUnarchiver unarchiveObjectWithFile:path]){
            self.finishedLines = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        }

    }
    return self;
}

-(LARLINE*)lineAtPoint:(CGPoint)p{
    for(LARLINE* l in self.finishedLines){
        if([l havePoint:p]){
            return l;
        }
    }
    return nil;
}


- (void)handleTap:(UITapGestureRecognizer *)gesture
{
    CGPoint point = [gesture locationInView:self];
    self.selectedLine = [self lineAtPoint:point];
    
    if(self.selectedLine){
        [self becomeFirstResponder];
        UIMenuController* menu = [UIMenuController sharedMenuController];
        UIMenuItem* deleteItem = [[UIMenuItem alloc]initWithTitle:@"Delete" action:@selector(deleteLine:)];
        menu.menuItems = @[deleteItem];
        [menu setTargetRect:CGRectMake(point.x, point.y, 2, 2) inView:self];
        [menu setMenuVisible:YES animated:YES];
    }
    else if(self.circleLayer){
        [self becomeFirstResponder];
        UIMenuController* menu = [UIMenuController sharedMenuController];
        UIMenuItem* deleteItem = [[UIMenuItem alloc]initWithTitle:@"Delete circle" action:@selector(deleteCircle:)];
        menu.menuItems = @[deleteItem];
        [menu setTargetRect:CGRectMake(point.x, point.y, 2, 2) inView:self];
        [menu setMenuVisible:YES animated:YES];
        
    }
    else{
        [[UIMenuController sharedMenuController]setMenuVisible:NO animated:YES];
    }
    [self setNeedsDisplay];
}
-(void)longPress:(UILongPressGestureRecognizer*)gesture{
    CGPoint point = [gesture locationInView:self];
    self.selectedLine = [self lineAtPoint:point];
    

        if (gesture.state == UIGestureRecognizerStateChanged) {
            if(self.selectedLine){
                
                
                float difX = self.selectedLine.end.x - self.selectedLine.begin.x;
                float difY = self.selectedLine.end.y - self.selectedLine.begin.y;
                self.selectedLine.begin = point;
                self.selectedLine.end = CGPointMake(point.x + difX, point.y + difY);
                [self setNeedsDisplay];
            }
    }
}
-(BOOL)canBecomeFirstResponder{
    return YES;
}
- (void)doubleTap:(UITapGestureRecognizer *)gesture
{
    [self.linesInProgress removeAllObjects];
    [self.finishedLines removeAllObjects];
    self.layer.sublayers = nil;
    [NSKeyedArchiver archiveRootObject:self.finishedLines toFile: path];

    [self setNeedsDisplay];
}
-(void)handleSwipe:(UISwipeGestureRecognizer*)gesture{
    
    viewAux = [[ViewSlider alloc]initWithFrame:CGRectMake(0, self.bounds.size.height-100, self.bounds.size.width ,self.bounds.size.height)];
    [self addSubview:viewAux];
}
-(void)handleSwipeDown:(UISwipeGestureRecognizer*)gesture{
    [viewAux removeFromSuperview];
}
-(UIBezierPath*)makeCircleAtLocation:(CGPoint)location radius:(CGFloat)radius{
    self.circleCenter = location;
    self.circleRadius = radius;
    UIBezierPath* paths = [UIBezierPath bezierPath];
    [paths addArcWithCenter:self.circleCenter radius:self.circleRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    return paths;
}

- (void)handlePinch:(UIPinchGestureRecognizer *)gesture
{
    static CGFloat oldCircleRadius;
    CGPoint location = [gesture locationInView:gesture.view];

    
    
    if (gesture.state == UIGestureRecognizerStateBegan)
    {
        
        
        
        CAShapeLayer *shapeLayer = [CAShapeLayer layer];
        shapeLayer.path = [[self makeCircleAtLocation:location radius:50.0] CGPath];
        shapeLayer.strokeColor = [[UIColor redColor] CGColor];
        shapeLayer.fillColor = nil;
        if(viewAux.slider.value == 0){
            shapeLayer.lineWidth = 10;
        }
        else{
            shapeLayer.lineWidth = viewAux.slider.value;

        }
        
        [self.finishedCircles addObject:shapeLayer];
       [gesture.view.layer addSublayer:shapeLayer];
        
        self.circleLayer = shapeLayer;
        if (self.circleLayer)
            oldCircleRadius = self.circleRadius;
       

        
    }
    else if (gesture.state == UIGestureRecognizerStateChanged)
    {
        CGFloat newCircleRadius = oldCircleRadius * gesture.scale;
        self.circleLayer.path = [[self makeCircleAtLocation:location radius:newCircleRadius] CGPath];
    }
}
-(void)drawRect:(CGRect)rect{
    [[UIColor blackColor]set];

    for(LARLINE* line in self.finishedLines){
        
        [line stroke];
    }

    for(NSValue* key in self.linesInProgress){
        LARLINE* line = self.linesInProgress[key];
        [line stroke];
    }
    if(self.selectedLine){
        [[UIColor greenColor]set];
        [self.selectedLine stroke];
    }
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    for(UITouch* t in touches){
        CGPoint location = [t locationInView:self];
        
        LARLINE* line = [[LARLINE alloc]init];
        if(!viewAux){
            line.largura = 10;
        }
        line.largura = viewAux.slider.value;
        line.begin = location;
        line.end = location;
        
        NSValue* key = [NSValue valueWithNonretainedObject:t];
        [self.linesInProgress setObject:line forKey:key];
    }
    [self setNeedsDisplay];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
        for(UITouch* t in touches){
        NSValue* key = [NSValue valueWithNonretainedObject:t];
        LARLINE* line = self.linesInProgress[key];

        [self.finishedLines addObject:line];
        [self.linesInProgress removeObjectForKey:key];
        
    }
    [NSKeyedArchiver archiveRootObject:self.finishedLines toFile: path];

    [self setNeedsDisplay];
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    for(UITouch* t in touches){
        NSValue* key = [NSValue valueWithNonretainedObject:t];
        CGPoint location = [t locationInView:self];
        LARLINE* line = self.linesInProgress[key];
        line.end = location;
        
    }
    [self setNeedsDisplay];
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    for(UITouch* t in touches){
        NSValue* key = [NSValue valueWithNonretainedObject:t];
        [self.linesInProgress removeObjectForKey:key];
    }
    [self setNeedsDisplay];
}

-(void)deleteLine:(id)sender{
    [self.finishedLines removeObject:self.selectedLine];
    self.selectedLine = nil;
    [self setNeedsDisplay];
}
-(void)deleteCircle:(id)sender{
    [self.circleLayer removeFromSuperlayer];
    [self setNeedsDisplay];
}

@end
