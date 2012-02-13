//
//  UnoNoticiasViewController.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MenuView;
@class NoticiaCompletaView;
@class BarraClimaView;

@interface UnoNoticiasViewController : UIViewController{
    BOOL primeraVes;
    MenuView *menu;
    //NoticiaCompletaView *noticia;
}

@property (retain, nonatomic) IBOutlet UIImageView *imgDrag;
@property (retain, nonatomic) IBOutlet UIScrollView *scrollNoticias;
@property (retain, nonatomic) IBOutlet BarraClimaView *barraClima;

-(void) drag:(UIPanGestureRecognizer *) sender;
- (IBAction)Configuracion:(id)sender;

@end
