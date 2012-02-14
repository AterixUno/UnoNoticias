//
//  MenuView.h
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuViewDelegate;

@interface MenuView : UIView{

    UIView *viewContenedor;
    UITextField *txtBuscar;
    UILabel *lblPortada;
    UILabel *lblFecha;
    
}

@property (nonatomic, assign) id<MenuViewDelegate> delegate;

-(void) showMenu;
-(void) hideMenu;
-(void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration;

@end

@protocol MenuViewDelegate <NSObject>
@optional

-(void) MenuView:(MenuView *) menu Noticias:(NSNumber *) tag;

@end