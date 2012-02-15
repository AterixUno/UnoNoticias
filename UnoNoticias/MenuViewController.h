//
//  MenuViewController.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 15/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuView.h"
@interface MenuViewController : NSObject{
    MenuView *menu;
    UIImageView *imgDrag;
}

-(void) agregarVistas:(UIView *) view;
-(void)drag:(UIPanGestureRecognizer *) sender;

@end
