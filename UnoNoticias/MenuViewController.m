//
//  MenuViewController.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 15/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "MenuViewController.h"

@implementation MenuViewController

-(id) init{
    self = [super init];
    if (self){
        
        imgDrag = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"unomenu.png"]];
        [imgDrag setFrame:CGRectMake(46, 0, imgDrag.frame.size.width, imgDrag.frame.size.height)];
        [imgDrag setUserInteractionEnabled:TRUE];
        menu = [[MenuView alloc] initWithFrame:CGRectMake(0, -748, 1024, 748)];
        [menu setUserInteractionEnabled:TRUE];
        
        UIPanGestureRecognizer *drag = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drag:)];
        [drag setMaximumNumberOfTouches:1];
        [drag setMinimumNumberOfTouches:1];
        [imgDrag addGestureRecognizer:drag];
        [drag release];
        
    }
    
    return self;
}

-(void) agregarVistas:(UIView *) view{
    
    if ([imgDrag superview]){
        [imgDrag removeFromSuperview];
    }
    
    if ([menu superview]){
        [menu removeFromSuperview];
    }
    
    [view addSubview:imgDrag];
    [view addSubview:menu];
}

-(void)drag:(UIPanGestureRecognizer *) sender
{
    
    CGPoint point;
    float velocidad;
    static CGPoint start;
    
    if ([sender state] == UIGestureRecognizerStateBegan)
    {
        start = [[sender view] center];
        [imgDrag setCenter:start];
        [menu setFrame:CGRectMake(menu.frame.origin.x,imgDrag.frame.origin.y - menu.frame.size.height, menu.frame.size.width, menu.frame.size.height)];
    }
    
    point = [sender translationInView:[sender view]];
    point.x = start.x;
    point.y += start.y;
    
    if ([sender state] == UIGestureRecognizerStateChanged)
        
    {
        [imgDrag setCenter:point];
        [menu setFrame:CGRectMake(menu.frame.origin.x,imgDrag.frame.origin.y - menu.frame.size.height, menu.frame.size.width, menu.frame.size.height)];
    }
    
    if ([sender state] == UIGestureRecognizerStateEnded)
    {
        
        velocidad = [sender velocityInView:[sender view]].y;
        
        if (velocidad < -1000){
            point.y = imgDrag.frame.size.height / 2.0;
        } 
        
        else if (velocidad > 1000){        
            point.y = 748 - imgDrag.frame.size.height/2.0;        
        }
        
        else if (point.y < 374){
            point.y = imgDrag.frame.size.height / 2.0;
        }
        
        else{
            point.y = 748 - imgDrag.frame.size.height/2.0; 
        }
        
        [UIView animateWithDuration:0.4 animations:^{
            [imgDrag setCenter:point];
            [menu setFrame:CGRectMake(menu.frame.origin.x,imgDrag.frame.origin.y - menu.frame.size.height, menu.frame.size.width, menu.frame.size.height)];    
        }];
        
    }
}

-(void) dealloc{
    [imgDrag release];
    [super dealloc];
}

@end
