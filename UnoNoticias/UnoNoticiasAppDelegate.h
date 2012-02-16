//
//  UnoNoticiasAppDelegate.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//  Prueba

#import <UIKit/UIKit.h>
#import "MenuViewController.h"

@class UnoNoticiasViewController;


@interface UnoNoticiasAppDelegate : UIResponder <UIApplicationDelegate>{
    MenuView *menu;
    
    MenuViewController *menuController;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UnoNoticiasViewController *viewController;

-(void) ponerMenu:(UIView *) view;
-(void) ponerMenuDelefate:(id<MenuViewDelegate>) delegate;

@end
