//
//  ConfiguracionViewController.h
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MenuView;
@interface ConfiguracionViewController : UIViewController
{
    MenuView *menu;
}

@property (nonatomic, retain) IBOutlet UIImageView *imgDrag;
- (IBAction)goBack:(id)sender;
-(void) drag:(UIPanGestureRecognizer *) sender;

@end
