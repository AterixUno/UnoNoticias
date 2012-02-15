//
//  UnoNoticiasViewController.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BarraClimaView.h"
#import "BotonSeccionaNoticaView.h"

@class MenuView;


@interface UnoNoticiasViewController : UIViewController<BarraClimaViewDelegate,BotonSeleccionaNoticiaDelegate>{
    BOOL primeraVes;
}

@property (retain, nonatomic) IBOutlet UIScrollView *scrollNoticias;
@property (retain, nonatomic) IBOutlet BarraClimaView *barraClima;

- (IBAction)Configuracion:(id)sender;

@end
