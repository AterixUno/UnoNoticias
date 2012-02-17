//
//  NoticiaViewController.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 14/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UnoNoticiasAppDelegate.h"
#import "ConfiguracionViewController.h"
#import "BarraClimaView.h"
#import "ClimaView.h"

@interface NoticiaViewController : UIViewController<MenuViewDelegate,BarraClimaViewDelegate>
@property (retain, nonatomic) IBOutlet UIScrollView *scrollNoticia;
- (IBAction)regesar:(id)sender;

@end
