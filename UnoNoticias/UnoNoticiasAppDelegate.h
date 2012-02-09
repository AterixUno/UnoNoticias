//
//  UnoNoticiasAppDelegate.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//  Prueba

#import <UIKit/UIKit.h>

@class UnoNoticiasViewController;
@class MenuView;

@interface UnoNoticiasAppDelegate : UIResponder <UIApplicationDelegate>{
    MenuView *menu;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UnoNoticiasViewController *viewController;
-(void) ponerMenu:(UIView *) view;
-(MenuView *) menu;

@end
